"""
Ports a .vmt file to a .pmat and set of image files with corresponding .ptex files.
"""

from panda3d.core import *
import sys
import os
from subprocess import Popen, PIPE

tfModels = Filename.fromOsSpecific(os.environ["TFMODELS"])

vtf2tga = "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Team Fortress 2\\bin\\vtf2tga.exe"

vmtFilename = Filename.fromOsSpecific(sys.argv[1])
vmtFilenameFull = tfModels / Filename("built_src/materials") / vmtFilename
vmtKv = KeyValues.load(vmtFilenameFull)
if not vmtKv:
    print("ERROR: couldn't load input vmt " + vmtFilenameFull.getFullpath(),
          file=sys.stderr)
    sys.exit(1)
vmtData = vmtKv.getChild(0)
if vmtData.getName().lower() != "vertexlitgeneric":
    print("ERROR: vmt doesn't use VertexLitGeneric!", file=sys.stderr)
    sys.exit(1)

outDir = tfModels / Filename("src/materials")
if not os.path.isdir(outDir.toOsSpecific()):
    os.makedirs(outDir.toOsSpecific())

pmatFilename = outDir / Filename(vmtFilename.getBasenameWoExtension() + ".pmat")

pmatData = PDXElement()
pmatData.setAttribute("material", "SourceMaterial")

pmatParams = PDXElement()
pmatData.setAttribute("parameters", pmatParams)

portedTextures = []

def alphaChannelHasOpaqueAndTranslucentTexels(img):
    # Returns true if the alpha channel of the given PNMImage
    # contains both completely opaque and translucent texels
    # in the alpha channel.

    if not img.hasAlpha():
        return False

    gotOpaque = False
    gotTranslucent = False
    for y in range(img.getYSize()):
        for x in range(img.getXSize()):
            a = img.getAlpha(x, y)
            if a == 1.0:
                gotOpaque = True
            else:
                gotTranslucent = True

            if gotOpaque and gotTranslucent:
                return True

    return False

def portTexture(vtf, sRGB, is1D=False):
    print("Porting " + vtf, file=sys.stderr)

    vtfFilenameFull = tfModels / Filename("built_src/materials") / Filename.fromOsSpecific(vtf)
    if vtfFilenameFull.getExtension() == "":
        vtfFilenameFull.setExtension("vtf")

    tgaOutFull = tfModels / Filename("src/maps") / vtfFilenameFull.getBasenameWoExtension()
    tgaOutFull += ".tga"

    process = Popen([vtf2tga, "-i", vtfFilenameFull.toOsSpecific(), "-o", tgaOutFull.toOsSpecific()], stdout=PIPE)
    (output, err) = process.communicate()
    exit_code = process.wait()
    output = output.decode()

    chanFormats = {
        True: ["sluminance", "sluminance_alpha", "srgb", "srgb_alpha"],
        False: ["luminance", "luminance_alpha", "rgb", "rgba"]
    }

    # Open the resulting .tga file in a PNMImage to figure out how many
    # channels it has, etc.
    img = PNMImage()
    img.read(tgaOutFull)
    numChannels = img.getNumChannels()

    if is1D:
        # Create a new image that trims the Y size to a single
        # texel.  Panda expects 1-D textures to be completely horizontal.
        newImg = PNMImage(img.getXSize(), 1)
        for x in range(img.getXSize()):
            newImg.setXelA(x, 0, img.getXelA(x, 0))
        newImg.write(tgaOutFull)
        img = newImg

    ptexData = PDXElement()
    ptexData.setAttribute("image", tgaOutFull.getBasename())
    ptexData.setAttribute("format", chanFormats[sRGB][numChannels - 1])

    if is1D:
        ptexData.setAttribute("type", "1d_texture")
    else:
        ptexData.setAttribute("type", "2d_texture")

    if "TEXTUREFLAGS_CLAMPS=true" in output:
        ptexData.setAttribute("wrap_u", "clamp")
    else:
        ptexData.setAttribute("wrap_u", "repeat")

    if "TEXTUREFLAGS_CLAMPT=true" in output:
        ptexData.setAttribute("wrap_v", "clamp")
    else:
        ptexData.setAttribute("wrap_v", "repeat")


    ptexOutFull = Filename(tgaOutFull.getFullpathWoExtension() + ".ptex")
    PDXValue(ptexData).write(ptexOutFull)

    # Return the filename of the .ptex file relative to the src/materials folder.
    relFilename = Filename(ptexOutFull)
    if not relFilename.makeRelativeTo(outDir):
        print("ERROR: Couldn't make ptex relative to pmat directory?", file=sys.stderr)
        sys.exit(1)

    portedTextures.append(ptexOutFull)

    return (relFilename.getFullpath(), tgaOutFull)

def pdxListFromString(s):
    l = PDXList()
    if "[" in s:
        vals = s.split("[")[1].split("]")[0].split()
    elif "{" in s:
        vals = s.split("{")[1].split("}")[0].split()
    else:
        vals = s.split()
    for v in vals:
        l.append(float(v))
    return l


colorScale = VBase4(1)
translucent = False
baseTexImgPath = None
for i in range(vmtData.getNumKeys()):
    key = vmtData.getKey(i).lower()

    if key.startswith("360?"):
        continue

    value = vmtData.getValue(i)

    if key == "$envmap":
        pmatParams.setAttribute("envmap", True)
    elif key == "$basealphaenvmapmask":
        pmatParams.setAttribute("basealphaenvmapmask", bool(int(value)))
    elif key == "$normalmapalphaenvmapmask":
        pmatParams.setAttribute("normalmapalphaenvmapmask", bool(int(value)))
    elif key == "$rimlight":
        pmatParams.setAttribute("rimlight", bool(int(value)))
    elif key == "$rimlightboost":
        pmatParams.setAttribute("rimlightboost", float(value))
    elif key == "$rimlightexponent":
        pmatParams.setAttribute("rimlightexponent", float(value))
    elif key == "$halflambert":
        pmatParams.setAttribute("halflambert", bool(int(value)))
    elif key == "$phongalbedotint":
        pmatParams.setAttribute("phongalbedotint", float(value))
    elif key == "$rimmask":
        pmatParams.setAttribute("rimmask", bool(int(value)))
    elif key == "$invertphongmask":
        pmatParams.setAttribute("invertphongmask", bool(int(value)))
    elif key == "$basemapalphaphongmask":
        pmatParams.setAttribute("basemapalphaphongmask", bool(int(value)))
    elif key == "$selfillumfresnel":
        pmatParams.setAttribute("selfillumfresnel", bool(int(value)))
    elif key == "$phong":
        pmatParams.setAttribute("phong", bool(int(value)))
    elif key == "$phongboost":
        pmatParams.setAttribute("phongboost", float(value))
    elif key == "$phongexponent":
        pmatParams.setAttribute("phongexponent", float(value))
    elif key == "$phongtint":
        pmatParams.setAttribute("phongtint", pdxListFromString(value))
    elif key == "$envmapcontrast":
        pmatParams.setAttribute("envmapcontrast", float(value))
    elif key == "$envmapsaturation":
        pmatParams.setAttribute("envmapsaturation", float(value))
    elif key == "$envmapfresnel":
        pmatParams.setAttribute("envmapfresnel", float(value))
    elif key == "$phongexponentfactor":
        pmatParams.setAttribute("phongexponentfactor", float(value))

    elif key == "$selfillumtint":
        pmatParams.setAttribute("selfillumtint", pdxListFromString(value))

    elif key == "$selfillum":
        pmatParams.setAttribute("selfillum", bool(int(value)))

    elif key == "$envmaptint":
        pmatParams.setAttribute("envmaptint", pdxListFromString(value))

    elif key == "$phongfresnelranges":
        pmatParams.setAttribute("phongfresnelranges", pdxListFromString(value))

    elif key == "$selfillumfresnelminmaxexp":
        pmatParams.setAttribute("selfillumfresnelminmaxexp", pdxListFromString(value))

    elif key == "$basetexture":
        baseTexPath, baseTexImgPath = portTexture(value, True)
        pmatParams.setAttribute("basetexture", baseTexPath)

    elif key == "$lightwarptexture":
        pmatParams.setAttribute("lightwarptexture", portTexture(value, False, True)[0])

    elif key == "$envmapmask":
        pmatParams.setAttribute("envmapmask", portTexture(value, False)[0])

    elif key == "$phongexponenttexture":
        pmatParams.setAttribute("phongexponenttexture", portTexture(value, False)[0])

    elif key == "$selfillummask":
        pmatParams.setAttribute("selfillummask", portTexture(value, False)[0])

    elif key == "$phongwarptexture":
        pmatParams.setAttribute("phongwarptexture", portTexture(value, False)[0])

    elif key == "$bumpmap":
        pmatParams.setAttribute("bumpmap", portTexture(value, False)[0])

    elif key == "$albedo":
        pmatParams.setAttribute("albedo", portTexture(value, True)[0])

    # Render state modifiying parameters:

    elif key == "$nocull":
        if bool(int(value)):
            pmatData.setAttribute("cull", "double_sided")

    elif key == "$ignorez":
        if bool(int(value)):
            pmatData.setAttribute("depth_test", "off")
            pmatData.setAttribute("depth_write", "off")

    elif key == "$alphatest":
        if bool(int(value)):
            pmatData.setAttribute("alpha_test", "greater_equal")

    elif key == "$alphatestreference":
        pmatData.setAttribute("alpha_test_ref", float(value))

    elif key == "$translucent":
        translucent = bool(int(value))

    elif key == "$additive":
        pmatData.setAttribute("color_blend", "additive")

    elif key == "$color" or key == "$color2":
        if "{" in value:
            sr, sg, sb = value.split("{")[1].split("}")[0].split()
            r = float(sr) / 255.0
            g = float(sg) / 255.0
            b = float(sb) / 255.0
        elif "[" in value:
            sr, sg, sb = value.split("[")[1].split("]")[0].split()
            r = float(sr)
            g = float(sg)
            b = float(sb)
        else:
            sr, sg, sb = value.split()
            r = float(sr)
            g = float(sg)
            b = float(sb)
        colorScale[0] = r
        colorScale[1] = g
        colorScale[2] = b

    elif key == "$alpha":
        colorScale[3] = float(value)

    elif key == "$nofog":
        if bool(int(value)):
            pmatData.setAttribute("fog", "off")

if colorScale != VBase4(1):
    val = PDXValue()
    val.fromVec4(colorScale)
    pmatData.setAttribute("color_scale", val)
    if colorScale[3] < 1.0:
        pmatData.setAttribute("transparency", "alpha")

if translucent:
    # Determine the transparency mode by analyzing the base texture's alpha
    # channel.
    if colorScale[3] < 1.0:
        # Color scale applies a constant less-than-one alpha, so we can do
        # regular old alpha blending.
        pmatData.setAttribute("transparency", "alpha")
    elif baseTexImgPath:
        # Otherwise, if the base texture alpha contains a completely opaque
        # texel, we need to use Panda's dual transparency mode to render the
        # opaque parts first.
        baseImg = PNMImage()
        baseImg.read(baseTexImgPath)
        if alphaChannelHasOpaqueAndTranslucentTexels(baseImg):
            # Yes, the alpha channel has opaque parts and translucent parts.
            # We need dualing transparency.
            pmatData.setAttribute("transparency", "dual")
        else:
            # The alpha channel is either completely opaque or completely
            # translucent.  Use alpha blending.
            pmatData.setAttribute("transparency", "alpha")

print("Writing " + pmatFilename.getFullpath(), file=sys.stderr)
PDXValue(pmatData).write(pmatFilename)

print("Done", file=sys.stderr)

def genSources(scopeName, folder, filename):
    sourcesFilename = folder / Filename("Sources.pp")
    if not sourcesFilename.isRegularFile():
        sourcesFile = open(sourcesFilename.toOsSpecific(), 'w')
        sourcesFile.write("#define DIR_TYPE models\n\n")
        sourcesFile.write("#begin %s\n" % scopeName)
        sourcesFile.write("  #define SOURCES \\\n")
        sourcesFile.write("    %s\n\n" % filename.getBasename())
        sourcesFile.write("#end %s\n" % scopeName)
        sourcesFile.close()
    else:
        # File already exists, find out where to append the new material.
        sourcesFile = open(sourcesFilename.toOsSpecific(), 'r')
        lines = sourcesFile.readlines()
        sourcesFile.close()
        alreadyIn = False
        for i in range(len(lines)):
            line = lines[i]

            words = line.split()
            if filename.getBasename() in words:
                # It's already added to this Sources.pp file, skip.
                alreadyIn = True
                break

            if ("#end %s" % scopeName) in line:
                # Found the end of the install_mat block, move two lines up,
                # append a \ to the line, then add a new line with our material.
                lastMatLine = lines[i - 2]
                lastMatLine = lastMatLine.replace("\n", " \\\n")
                lines[i - 2] = lastMatLine
                lines.insert(i - 1, "    %s\n" % filename.getBasename())
                break

        if not alreadyIn:
            sourcesFile = open(sourcesFilename.toOsSpecific(), 'w')
            for line in lines:
                sourcesFile.write(line)
            sourcesFile.close()

genSources("install_mat", outDir, pmatFilename)
for tex in portedTextures:
    genSources("install_tex", Filename(tex.getDirname()), tex)

print(pmatFilename.getFullpath(), end="")
