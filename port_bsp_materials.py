
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

import os

outDir = Filename.fromOsSpecific(os.path.expandvars("$TFMODELS/src/materials"))
print(outDir)

vtf2tga = "/usr/local/bin/vtf2tga"

PTexFormat = """{
  image "%s"
  format "%s"
  wrap "%s"
}
"""

def convertTexture(path):
    path = path.lower()
    if not ".vtf" in path:
          path = path + ".vtf"

    path = Filename.fromOsSpecific(path)
    fullpath = Filename(path)
    if not VirtualFileSystem.getGlobalPtr().resolveFilename(fullpath, getModelPath().getValue()):
        print("Could not find vtf file", path)
        return

    tgaOut = outDir / Filename(path.getFullpath().replace(".vtf", ".tga"))
    ptexOut = Filename(tgaOut.getFullpathWoExtension() + ".ptex")
    if ptexOut.isRegularFile():
        return

    if not os.path.isdir(Filename(tgaOut.getDirname()).toOsSpecific()):
        os.makedirs(Filename(tgaOut.getDirname()).toOsSpecific())
    process = Popen([vtf2tga, fullpath.toOsSpecific(), tgaOut.toOsSpecific()], stdout=PIPE)
    (output, err) = process.communicate()
    exit_code = process.wait()
    output = output.decode()

    isClamped = ("TEXTUREFLAGS_CLAMPS=true" in output)
    isTransparent = ("transparency: noalpha" not in output)

    ptexData = PTexFormat % (tgaOut.getBasename(), "srgb_alpha" if isTransparent else "srgb", "clamp" if isClamped else "repeat")

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
    if matOut.isRegularFile():
        continue

    osMatOutDirname = Filename(matOut.getDirname()).toOsSpecific()
    if not os.path.isdir(osMatOutDirname):
        os.makedirs(osMatOutDirname)

    kv = KeyValues.load(matFname)
    if not kv:
        print("Failed to read mat file", matFname)
        continue

    if kv.getNumChildren() == 0:
        continue

    matBlock = kv.getChild(0)

    materialName = matBlock.getName()

    keyName = None
    if matBlock.hasKey("$basetexture"):
        keyName = "$basetexture"
    elif matBlock.hasKey("$baseTexture"):
        keyName = "$baseTexture"
    elif matBlock.hasKey("$BaseTexture"):
        keyName = "$BaseTexture"
    elif matBlock.hasKey("$BASETEXTURE"):
        keyName = "$BASETEXTURE"

    if keyName:
        baseTexturePath = matBlock.getValue(keyName)
        baseTextureOutPath = convertTexture(baseTexturePath)
    else:
        baseTextureOutPath = None

    pmatData = "{\n"
    pmatData += "  material StandardMaterial\n"
    pmatData += "  parameters {\n"
    if baseTextureOutPath:
        pmatData += "    base_texture \"%s\"\n" % baseTextureOutPath.getBasename()
    pmatData += "  }\n"
    pmatData += "}\n"

    print("Writing", matOut.toOsSpecific())
    pmatFile = open(matOut.toOsSpecific(), 'w')
    pmatFile.write(pmatData)
    pmatFile.close()
