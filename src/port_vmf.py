import argparse
import sys
import os

p = argparse.ArgumentParser(description="Port models and materials referenced by a vmf file")
p.add_argument('-i', '--input', help='Input .vmf filename', required=True)
args = p.parse_args()

from panda3d.core import *

kv = KeyValues.load(Filename.fromOsSpecific(args.input))
if not kv:
    print("Couldn't load input vmf", file=sys.stderr)
    sys.exit(1)

ported = []

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

def parseBlock(block):
    if block.getName() == "entity":
        parseEntity(block)

    for i in range(block.getNumChildren()):
        child = block.getChild(i)
        parseBlock(child)

parseBlock(kv)
