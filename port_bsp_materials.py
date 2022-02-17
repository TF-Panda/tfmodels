
from subprocess import Popen, PIPE

from panda3d.core import *

loadPrcFileData("", "model-path $TFMODELS/built_src/materials")

import sys

inFilename = Filename.fromOsSpecific(sys.argv[1])

def collectVMFMats(kv, mats):
    if kv.getName() == "side":
        mat = kv.getValue("material").lower()
        if not mat in mats:
            mats.append(mat)
    else:
        for i in range(kv.getNumChildren()):
            child = kv.getChild(i)
            collectVMFMats(child, mats)

if inFilename.getExtension() == "bsp":
    # Get the material names from the BSP file.
    process = Popen(["../panda/src/bsp/Opt3-Linux/extract-bsp-mat-names", sys.argv[1]], stdout=PIPE)
    (output, err) = process.communicate()
    exit_code = process.wait()
    mats = output.decode().split("\r\n")
elif inFilename.getExtension() == "vmf":
    # Parse the VMF to get the material names
    kv = KeyValues.load(inFilename)
    if not kv:
        sys.exit(1)
    mats = []
    collectVMFMats(kv, mats)
    print(mats)

import os

outDir = Filename.fromOsSpecific(os.path.expandvars("$TFMODELS/src/materials"))
print(outDir)

#vtf2tga = "/usr/local/bin/vtf2tga"
vtf2tga = "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Team Fortress 2\\bin\\vtf2tga"

PTexFormat = """{
  image "%s"
  format "%s"
  wrap "%s"
}
"""

def convertTexture(path, isTransparent, sRGB, grayscale):
    path = path.lower()
    if not ".vtf" in path:
          path = path + ".vtf"

    path = Filename.fromOsSpecific(path)
    fullpath = Filename(path)
    if not VirtualFileSystem.getGlobalPtr().resolveFilename(fullpath, getModelPath().getValue()):
        print("Could not find vtf file", path)
        return None

    tgaOut = outDir / Filename(path.getFullpath().replace(".vtf", ".tga"))
    ptexOut = Filename(tgaOut.getFullpathWoExtension() + ".ptex")
    if ptexOut.isRegularFile():
        return ptexOut

    if not os.path.isdir(Filename(tgaOut.getDirname()).toOsSpecific()):
        os.makedirs(Filename(tgaOut.getDirname()).toOsSpecific())
    process = Popen([vtf2tga, "-i", fullpath.toOsSpecific(), "-o", tgaOut.toOsSpecific()], stdout=PIPE)
    (output, err) = process.communicate()
    exit_code = process.wait()
    output = output.decode()

    isClamped = ("TEXTUREFLAGS_CLAMPS=true" in output)

    if grayscale:
        if sRGB:
            texFormat = "sluminance"
        else:
            texFormat = "luminance"
    else:
        if sRGB:
            if isTransparent:
                texFormat = "srgb_alpha"
            else:
                texFormat = "srgb"
        else:
            if isTransparent:
                texFormat = "rgba"
            else:
                texFormat = "rgb"

    ptexData = PTexFormat % (tgaOut.getBasename(), texFormat, "clamp" if isClamped else "repeat")

    ptexOut = Filename(tgaOut.getFullpathWoExtension() + ".ptex")
    print("Writing", ptexOut)
    ptexFile = open(ptexOut.toOsSpecific(), 'w')
    ptexFile.write(ptexData)
    ptexFile.close()

    return ptexOut

for matFname in mats:
    if not matFname:
        continue

    if not ".vmt" in matFname:
        matFname += ".vmt"

    matFname = Filename.fromOsSpecific(matFname.lower())
    matOut = outDir / Filename(matFname.getFullpathWoExtension() + ".pmat")
    matBasename = matFname.getBasenameWoExtension()
    if matBasename.startswith("tools"):
        continue
    #if matOut.isRegularFile():
    #    continue

    osMatOutDirname = Filename(matOut.getDirname()).toOsSpecific()
    if not os.path.isdir(osMatOutDirname):
        os.makedirs(osMatOutDirname)

    print("Loading", matFname)
    kv = KeyValues.load(matFname)
    if not kv:
        print("Failed to read mat file", matFname)
        continue
    print("Done loading")

    if kv.getNumChildren() == 0:
        continue

    matBlock = kv.getChild(0)

    baseTexturePath = None
    baseTextureOutPath = None
    bumpPath = None
    bumpOutPath = None
    envMaskPath = None
    envMaskOutPath = None
    isTranslucent = False
    hasEnvCubemap = False
    envMapMaskLoc = None
    ssBump = False

    tags = {}
    for i in range(matBlock.getNumKeys()):
        key = matBlock.getKey(i).lower()
        if key == "$basetexture":
            baseTexturePath = matBlock.getValue(i).lower()
        elif key == "$bumpmap":
            bumpPath = matBlock.getValue(i).lower()
        elif key == "$ssbump":
            ssBump = bool(int(matBlock.getValue(i)))
        elif key == "$translucent" or key == "$alphatest":
            isTranslucent = bool(int(matBlock.getValue(i)))
        elif key == "$envmap":
            hasEnvCubemap = (matBlock.getValue(i).lower() == "env_cubemap")
        elif key == "$basealphaenvmapmask":
            envMapMaskLoc = 0
        elif key == "$normalmapalphaenvmapmask":
            envMapMaskLoc = 1
        elif key == "$envmapmask":
            envMaskPath = matBlock.getValue(i).lower()
        elif key == "$surfaceprop":
            tags["surface_prop"] = matBlock.getValue(i).lower()

    if not "surface_prop" in tags or tags["surface_prop"] == "default":
        # Material doesn't have surface prop or its just given default.
        # Infer from material name
        matBnLower = matFname.getFullpathWoExtension()
        if "concrete" in matBnLower:
            tags["surface_prop"] = "concrete"
        elif "brick" in matBnLower:
            tags["surface_prop"] = "brick"
        elif "wood" in matBnLower:
            tags["surface_prop"] = "wood"
        elif "metal" in matBnLower:
            tags["surface_prop"] = "metal"
        elif "rock" in matBnLower:
            tags["surface_prop"] = "rock"
        elif "glass" in matBnLower:
            tags["surface_prop"] = "glass"
        elif "plaster" in matBnLower:
            tags["surface_prop"] = "plaster"
        elif "tile" in matBnLower or "ceramic" in matBnLower:
            tags["surface_prop"] = "ceramic"
        elif "dirt" in matBnLower:
            tags["surface_prop"] = "gravel"
        else:
            tags["surface_prop"] = "default"

        print("Gave automatic surface prop:", tags["surface_prop"])
    else:
        print("Converted surface prop:", tags["surface_prop"])

    if baseTexturePath:
        baseTextureOutPath = convertTexture(baseTexturePath, isTranslucent, True, False)
    if bumpPath:
        bumpOutPath = convertTexture(bumpPath, False, False, False)
    if envMaskPath:
        envMaskOutPath = convertTexture(envMaskPath, False, False, True)

    #print(matOut, baseTexturePath, baseTextureOutPath, bumpPath, bumpOutPath, envMaskPath, envMaskOutPath)

    # Find the envmap mask and use it as the roughness mask for the standard material.
    if not envMaskOutPath and envMapMaskLoc is not None and baseTextureOutPath is not None:
        # It's embedded in either the normal map alpha or base texture alpha.
        envMaskOutPath = Filename(baseTextureOutPath.getFullpathWoExtension() + "_gloss.ptex")
        if not envMaskOutPath.isRegularFile():
            valid = True
            envMaskImg = PNMImage()
            if envMapMaskLoc == 0:
                valid = envMaskImg.read(baseTextureOutPath.getFullpathWoExtension() + ".tga")
            elif envMapMaskLoc == 1:
                valid = envMaskImg.read(bumpOutPath.getFullpathWoExtension() + ".tga")

            if valid:
                envMaskOutImg = PNMImage(envMaskImg.getXSize(), envMaskImg.getYSize())
                envMaskOutImg.setNumChannels(1)
                if envMaskImg.getNumChannels() == 4:
                    # Copy from alpha of src image into base channel of dest.
                    for y in range(envMaskOutImg.getYSize()):
                        for x in range(envMaskOutImg.getXSize()):
                            envMaskOutImg.setGrayVal(x, y, envMaskImg.getChannelVal(x, y, 3))
                else:
                    envMaskOutImg.fill(1.0)

                envMaskOutImg.write(envMaskOutPath.getFullpathWoExtension() + ".rgb")

                print("Writing", envMaskOutPath.getFullpath())
                ptexFile = open(envMaskOutPath.toOsSpecific(), "w")
                ptexFile.write(PTexFormat % (envMaskOutPath.getBasenameWoExtension() + ".rgb", "luminance", "repeat"))
                ptexFile.flush()
                ptexFile.close()
            elif envMapMaskLoc == 0:
                baseTextureOutPath = None
            else:
                bumpOutPath = None

    materialName = matBlock.getName()

    pmatData = "{\n"
    pmatData += "  material StandardMaterial\n"
    pmatData += "  parameters {\n"
    if baseTextureOutPath:
        pmatData += "    base_texture \"%s\"\n" % baseTextureOutPath.getBasename()
    if hasEnvCubemap:
        pmatData += "    env_map true\n"
    if bumpOutPath:
        pmatData += "    normal_texture \"%s\"\n" % bumpOutPath.getBasename()
        if ssBump:
            pmatData += "    ssbump 1\n"
    if envMaskOutPath:
        pmatData += "    gloss_texture \"%s\"\n" % envMaskOutPath.getBasename()
    else:
        pmatData += "    roughness 0.0\n"
    pmatData += "  }\n"
    if isTranslucent:
        pmatData += "  transparency dual\n"
    if tags:
        pmatData += "  tags {\n"
        for key, value in tags.items():
            pmatData += "    \"%s\" \"%s\"\n" % (key, value)
        pmatData += "  }\n"
    pmatData += "}\n"

    print("Writing", matOut.toOsSpecific())
    pmatFile = open(matOut.toOsSpecific(), 'w')
    pmatFile.write(pmatData)
    pmatFile.close()
