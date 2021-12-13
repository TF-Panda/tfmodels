"""
Ports a Source .mdl to a set of .blend files and a .pmdl file and adds an entry
into a Sources.pp to convert the model into .eggs and .bams.

Also converts materials into .pmat and textures into .ptex/.tga by invoking the
port_vmt.py script for each material referenced by the model.
"""

from enum import IntEnum
import sys
from panda3d.core import *
from subprocess import Popen, PIPE
import os

def runCommand(cmd):
    print("> " + cmd)
    ret = os.system(cmd)
    if ret != 0:
        print("\tCommand returned", ret)
        sys.exit(ret)

def runCommandWithOutput(cmd):
    print("> " + cmd)
    process = Popen(cmd.split(), stdout=PIPE)
    (output, err) = process.communicate()
    exit_code = process.wait()
    if exit_code:
        print("\tCommand returned", exit_code)
        sys.exit(exit_code)
    output = output.decode()
    return output

# Is the model animated?  If so, the base model and animations
# will be split out into separate blend files that reference each other,
# and the Sources.pp file will be set up to run egg-optchar on the model.
# The animation descriptions in the .qc file will also be converted into
# .pmdl format.
isAnimated = False
isStaticProp = False
surfaceProp = ""
contents = ""
skins = []
bodygroups = []
lods = []
matSearchPath = DSearchPath()
collisionModel = None

def convertMaterial(name):
    # Converts a material to a .pmat/.ptex and set of texture files.
    # Returns the filename of the converted material relative to the
    # output of the .pmdl file.

    filename = Filename(name.lower())
    if filename.getExtension() == "":
        filename.setExtension("vmt")

    # First locate the material using the list of $cdmaterials paths.
    if not filename.resolveFilename(matSearchPath):
        print("Couldn't resolve", filename.getFullpath(), "on material search path " + str(matSearchPath), file=sys.stderr)
        return None

    # port_vmt.py expects the filename to be relative to built_src/materials.
    if not filename.makeRelativeTo(tfModels / Filename("built_src/materials"), False):
        print("Couldn't make " + filename.getFullpath() + " relative to $TFMODELS/built_src/materials", file=sys.stderr)
        return None

    output = runCommandWithOutput("python port_vmt.py %s" % filename.getFullpath())
    if not output:
        return None

    outFilename = Filename.fromOsSpecific(output)
    outFilename.makeRelativeTo(srcFolder)
    print(outFilename)
    return outFilename.getFullpath()

def processLod(toks):
    toks.nextToken()
    distance = float(toks.getToken())

    toks.nextToken(True)
    assert toks.getToken() == "{"

    groups = []
    origNames = []
    while True:
        toks.nextToken(True)
        tok = toks.getToken()
        if tok == "}":
            break

        if tok == "replacemodel":
            toks.nextToken()
            origName = Filename(toks.getToken()).getBasenameWoExtension()
            origNames.append(origName)
            toks.nextToken()
            groupName = Filename(toks.getToken()).getBasenameWoExtension()
            groups.append(groupName)
        elif tok == "replacebone":
            # We don't support this.
            toks.nextToken()
            toks.nextToken()
        elif tok in ["facial", "nofacial"]:
            # Not supported either.  Lower LOD Geoms don't have sliders so
            # this happens automatically.
            pass
        else:
            print("ERROR: unknown LOD command:", tok)
            sys.exit(1)

    lods.append({"distance": distance, "groups": groups, "orig": origNames})

def processCollisionModel(toks):
    toks.nextToken()
    # .smd/.dmx files correspond to node names.
    physMeshName = Filename(toks.getToken()).getBasenameWoExtension()
    toks.nextToken(True)
    assert toks.getToken() == "{"

    global collisionModel
    collisionModel = {"mesh": physMeshName}

    while True:
        toks.nextToken(True)
        tok = toks.getToken()
        if tok == "}":
            break

        if tok == "$mass":
            toks.nextToken()
            collisionModel['mass'] = float(toks.getToken())
        elif tok == '$automass':
            collisionModel['autoMass'] = True
        elif tok == "$inertia":
            toks.nextToken()
            collisionModel['inerita'] = float(toks.getToken())
        elif tok == "$damping":
            toks.nextToken()
            collisionModel['damping'] = float(toks.getToken())
        elif tok == '$rotdamping':
            toks.nextToken()
            collisionModel['rotDamping'] = float(toks.getToken())
        elif tok == '$concave':
            collisionModel['concave'] = True
        elif tok == '$maxconvexpieces':
            toks.nextToken()
            collisionModel['maxConvexPieces'] = int(toks.getToken())
        elif tok == '$rootbone':
            toks.nextToken()
        else:
            print("ERROR: unknown collision model command:", tok)
            sys.exit(1)

def processTextureGroup(toks):
    while True:
        toks.nextToken(True)
        tok = toks.getToken()
        if tok == "{":
            materials = []
            while True:
                toks.nextToken(True)
                if toks.getToken() == "}":
                    skins.append(materials)
                    break
                materials.append(toks.getToken())

        elif tok == "}":
            break

def processBodyGroup(toks):
    toks.nextToken() # Name
    name = toks.getToken()
    toks.nextToken(True) # open brace
    groups = []
    while True:
        toks.nextToken(True) # type
        tok = toks.getToken()
        if tok == "}":
            break

        if tok == "studio":
            toks.nextToken()
            # .smd/.dmx filenames correspond to node names.
            # Add * at the end to pick up LOD suffixes.
            groups.append(Filename(toks.getToken()).getBasenameWoExtension() + "*")
        elif tok == "blank":
            groups.append(tok)
        else:
            print("ERROR: unknown bodygroup type:", tok)
            sys.exit(1)

    bodygroups.append({"name": name, "groups": groups})

def collectQcData(toks):
    global isAnimated, surfaceProp, contents, isStaticProp

    while toks.tokenAvailable(True):
        toks.nextToken(True)
        tok = toks.getToken()

        if tok == "$staticprop":
            isStaticProp = True
        elif tok == "$surfaceprop":
            toks.nextToken()
            surfaceProp = toks.getToken()
        elif tok == "$contents":
            toks.nextToken()
            contents = toks.getToken()
        elif tok == "$texturegroup":
            toks.nextToken(True) # Name
            toks.nextToken(True) # open brace
            processTextureGroup(toks)
        elif tok == "$bodygroup":
            processBodyGroup(toks)
        elif tok == "$collisionmodel":
            processCollisionModel(toks)
        elif tok == "$lod":
            processLod(toks)
        elif tok == "$cdmaterials":
            # Material search path.
            toks.nextToken()
            matSearchPath.appendDirectory(tfModels / Filename("built_src/materials") / Filename.fromOsSpecific(toks.getToken()))

def writePmdl(filename):
    elem = PDXElement()

    # Specify the .egg file.
    if isAnimated:
        elem.setAttribute("model", "optchar/" + modelName + "-zero.egg")
    else:
        elem.setAttribute("model", modelName + ".egg")

    # The models are rotated backwards so fix that here.
    hpr = PDXValue()
    hpr.fromVec3((180, 0, 0))
    elem.setAttribute("hpr", hpr)

    if skins:
        matGroups = PDXList()
        for i in range(len(skins)):
            skinData = skins[i]
            matData = PDXElement()
            matData.setAttribute("name", "unnamed%i" % i)
            matList = PDXList()
            for mat in skinData:
                convMat = convertMaterial(mat)
                if convMat:
                    matList.append(convMat)
            matData.setAttribute("materials", matList)
            matGroups.append(matData)
        elem.setAttribute("material_groups", matGroups)

    if lods:
        # Write LODs.
        lodList = PDXList()
        for lod in lods:
            lodData = PDXElement()
            lodData.setAttribute("distance", lod["distance"])
            lodGroups = PDXList()
            for group in lod["groups"]:
                lodGroups.append(group)
            lodData.setAttribute("groups", lodGroups)
            lodList.append(lodData)
        # The first LOD at distance 0 might have not been specified.
        # We need to explicitly add it.
        if lods[0]["distance"] != 0:
            lodData = PDXElement()
            lodData.setAttribute("distance", 0.0)
            lodGroups = PDXList()
            for group in lods[0]["orig"]:
                lodGroups.append(group)
            lodData.setAttribute("groups", lodGroups)
            lodList.prepend(lodData)
        elem.setAttribute("lods", lodList)

    if collisionModel:
        # Physics model.
        physElem = PDXElement()
        physElem.setAttribute("mesh", collisionModel["mesh"])
        if "mass" in collisionModel:
            physElem.setAttribute("mass", collisionModel["mass"])
        if "damping" in collisionModel:
            physElem.setAttribute("damping", collisionModel["damping"])
        if "rotDamping" in collisionModel:
            physElem.setAttribute("rot_damping", collisionModel["rotDamping"])
        if "autoMass" in collisionModel:
            physElem.setAttribute("auto_mass", collisionModel["autoMass"])
        if "concave" in collisionModel:
            physElem.setAttribute("concave", collisionModel["concave"])
        elem.setAttribute("physics_model", physElem)

    if contents or surfaceProp or bodygroups:
        customData = PDXElement()
        elem.setAttribute("custom_data", customData)

        if contents:
            customData.setAttribute("contents", contents)
        if surfaceProp:
            customData.setAttribute("surfaceprop", surfaceProp)
        if bodygroups:
            bodyList = PDXList()
            for bodygroup in bodygroups:
                bodyData = PDXElement()
                bodyData.setAttribute("name", bodygroup["name"])
                nodes = PDXList()
                for node in bodygroup["groups"]:
                    nodes.append(node)
                bodyData.setAttribute("nodes", nodes)
                bodyList.append(bodyData)
            customData.setAttribute("bodygroups", bodyList)

    PDXValue(elem).write(filename)

tfModels = Filename.fromOsSpecific(os.environ["TFMODELS"])

inputFilename = Filename.fromOsSpecific(sys.argv[1])
inputFilenameFull = tfModels / Filename("built_src/models") / inputFilename
print("Full input filename:", inputFilenameFull)

matsOnly = False
if len(sys.argv) > 2:
    if sys.argv[2] == '-m':
        matsOnly = True

modelName = inputFilename.getBasenameWoExtension()

decompFolder = tfModels / Filename("decompile") / Filename(inputFilename.getFullpathWoExtension())
print("Decompilation folder:", decompFolder)

srcFolder = tfModels / Filename("src") / Filename(inputFilename.getDirname())
print("Destination src folder", srcFolder)
if not os.path.isdir(srcFolder.toOsSpecific()):
    os.makedirs(srcFolder.toOsSpecific())

# First convert the model to a .qc file and a set of .smds for each mesh.
print("Converting", inputFilename, "to .qc and .smd")

runCommand("CrowbarCommandLineDecomp -p \"" + inputFilenameFull.toOsSpecific() + "\" -o \"" + decompFolder.toOsSpecific() + "\"")

qcToks = TokenFile()
if not qcToks.read((decompFolder / modelName) + ".qc"):
    print("ERROR: Couldn't read .qc file")
    sys.exit(1)
collectQcData(qcToks)

print("isAnimated =", isAnimated)
print("surfaceProp =", surfaceProp)
print("contents =", contents)
print("skins =", skins)
print("bodygroups =", bodygroups)
print("collisionModel = ", collisionModel)
print("lods =", lods)

if matsOnly:
    # Just convert the referenced materials and be done with it.
    for skin in skins:
        for mat in skin:
            convertMaterial(mat)
    sys.exit(0)

# Now import the .qc file into Blender and save it temporarily in the
# decompilation folder in case we need to link up animations.

blendFilename = Filename(decompFolder / modelName)
if isAnimated:
    blendFilename += "-zero.blend"
else:
    blendFilename += ".blend"

command = "blender -b -P %TFMODELS%\\src\\blender_import_qc.py -- -i " \
           + Filename(decompFolder / modelName).toOsSpecific() + ".qc -o " + blendFilename.toOsSpecific()
if isStaticProp:
    # Bake lightmap UV's into the model if it's a static prop.  This will allow
    # the prop to be lightmapped during level build.
    #command += " -l"
    pass
elif isAnimated:
    # Also import all the animations into separate .blend files that link up
    # with the main skeleton/mesh .blend file.
    command += " -a"

runCommand(command)

# Now copy the blender file to the output src directory for building.
runCommand("copy " + blendFilename.toOsSpecific() + " " + Filename(srcFolder / blendFilename.getBasename()).toOsSpecific())

writePmdl((srcFolder / modelName) + ".pmdl")

# Now generate the Sources.pp to define the instructions to export
# and process the model in the pipeline.
includeLine = "#include $[THISDIRPREFIX]Sources." + modelName + ".pp"

sourcesFilename = srcFolder / Filename("Sources.pp")
if not sourcesFilename.isRegularFile():
    sourcesFile = open(sourcesFilename.toOsSpecific(), 'w')
    sourcesFile.write("#define DIR_TYPE models\n")
    sourcesFile.write("#define INSTALL_TO models/" + inputFilename.getDirname() + "\n\n")
    sourcesFile.write(includeLine + "\n")
else:
    sourcesFile = open(sourcesFilename.toOsSpecific(), 'a+')
    sourcesFile.seek(0)
    data = sourcesFile.read()
    if includeLine not in data:
        sourcesFile.seek(0, 2)
        # Add an include for our model's Sources.pp file.
        sourcesFile.write(includeLine + "\n")

sourcesFile.close()

modelSourcesFilename = srcFolder / Filename("Sources." + modelName + ".pp")
sourcesFile = open(modelSourcesFilename.toOsSpecific(), 'w')

if isAnimated:
    # blender_char_egg
    pass
else:
    sourcesFile.write("#begin blender_egg\n")
    sourcesFile.write("  #define SOURCES " + modelName + ".blend\n\n")
    sourcesFile.write("#end blender_egg\n\n")

if isAnimated:
    # optchar_egg
    pass

sourcesFile.write("#begin install_mdl\n")
sourcesFile.write("  #define SOURCES " + modelName + ".pmdl\n\n")
sourcesFile.write("#end install_mdl\n")
sourcesFile.close()

