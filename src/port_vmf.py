import argparse
import sys
import os

p = argparse.ArgumentParser(description="Port models and materials referenced by a vmf file")
p.add_argument('-i', '--input', help='Input .vmf filename', required=True)
p.add_argument('-b', '--brushes', action='store_true', default=False, help='Port brush materials.')
p.add_argument('-p', '--props', action='store_true', default=False, help='Port static_prop models and materials.')
args = p.parse_args()

from panda3d.core import *

kv = KeyValues.load(Filename.fromOsSpecific(args.input))
if not kv:
    print("Couldn't load input vmf", file=sys.stderr)
    sys.exit(1)

ported = []
portedSideMaterials = []

tfModels = Filename.fromOsSpecific(os.environ.get("TFMODELS"))

def runCommand(cmd):
    print("> " + cmd, file=sys.stderr)
    return os.system(cmd)

def parseEntity(ent):
    classname = ent.getValue("classname")
    print("classname", classname)
    if classname != "prop_static":
        print("return")
        return
    print("id", ent.getValue("id"))

    if not ent.hasKey("model"):
        print("\tDoesn't have model?")
        return

    modelFile = ent.getValue("model").replace("models/", "")
    print("modelFile", modelFile)
    if modelFile in ported:
        print("return")
        return

    modelFilename = Filename.fromOsSpecific(modelFile)

    # Skip it if we already have a .pmdl for it.
    pmdlFilename = tfModels / Filename("src/" + modelFilename.getFullpathWoExtension() + ".pmdl")
    print(pmdlFilename)
    if pmdlFilename.isRegularFile():
        return

    runCommand("python port_mdl.py " + Filename.fromOsSpecific(modelFile).getFullpath())
    ported.append(modelFile)

def parseSide(side):
    # Ports the brush material.
    material = side.getValue("material").lower()
    if "tools/tools" in material:
        return
    material += ".vmt"
    material = Filename.fromOsSpecific(material)

    if material in portedSideMaterials:
        return

    # Skip it if we already have a .pmat for it.
    pmatFilename = tfModels / Filename("src/materials/" + material.getBasenameWoExtension() + ".pmat")
    #print(pmatFilename)
    #if pmatFilename.isRegularFile():
    #    return

    runCommand("python port_vmt.py " + material.getFullpath())
    portedSideMaterials.append(material)

def parseBlock(block):
    if args.props and block.getName() == "entity":
        parseEntity(block)
    elif args.brushes and block.getName() == "side":
        parseSide(block)

    for i in range(block.getNumChildren()):
        child = block.getChild(i)
        parseBlock(child)

parseBlock(kv)
