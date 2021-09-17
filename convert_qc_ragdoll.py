
import sys
import os

qcFile = sys.argv[1]

from panda3d.core import *

toks = TokenFile()
if not toks.read(qcFile):
    sys.exit(1)

mass = 1
damping = 0
rotDamping = 0
inertia = 0
mesh = ""

joints = []
jointData = {}

def registerJoint(name):
    if name in jointData:
        return
    joints.append(name)
    jointData[name] = {}

def parseCollisionJoints():
    global mass, damping, rotDamping, inertia

    joints = []

    while toks.tokenAvailable(True):
        toks.nextToken(True)
        token = toks.getToken()
        if token == "}":
            break

        if token == "$mass":
            toks.nextToken()
            mass = float(toks.getToken())
        elif token == "$damping":
            toks.nextToken()
            damping = float(toks.getToken())
        elif token == "$rotdamping":
            toks.nextToken()
            rotDamping = float(toks.getToken())
        elif token == "$inertia":
            toks.nextToken()
            inertia = float(toks.getToken())
        elif token == "$jointmassbias":
            toks.nextToken()
            jointName = toks.getToken()
            registerJoint(jointName)
            toks.nextToken()
            jointData[jointName]["massBias"] = float(toks.getToken())
        elif token == "$jointrotdamping":
            toks.nextToken()
            jointName = toks.getToken()
            registerJoint(jointName)
            toks.nextToken()
            jointData[jointName]["rotDamping"] = float(toks.getToken())
        elif token == "$jointconstrain":
            toks.nextToken()
            jointName = toks.getToken()
            registerJoint(jointName)
            toks.nextToken()
            axis = toks.getToken()
            toks.nextToken() # limit
            toks.nextToken()
            limMin = float(toks.getToken())
            toks.nextToken()
            limMax = float(toks.getToken())
            jointData[jointName][axis] = (limMin, limMax)
            toks.nextToken() # friction

while toks.tokenAvailable(True):
    toks.nextToken(True)
    token = toks.getToken()
    if token == "$collisionjoints":
        toks.nextToken(True) # smd file
        filename = toks.getToken()
        mesh = os.path.splitext(os.path.basename(filename))[0]
        toks.nextToken(True) # "{"
        parseCollisionJoints()
        break

print("physics_model {")
print("  mesh %s" % mesh)
print("")
print("  mass %.2f" % mass)
print("  inertia %.2f" % inertia)
print("  damping %.2f" % damping)
print("  rot_damping %.2f" % rotDamping)
print("")
print("  joints [")
for jointName in joints:
    data = jointData[jointName]
    print("    {")
    print("      name %s" % jointName)
    if "massBias" in data:
        print("      mass_bias %.2f" % data["massBias"])
    if "rotDamping" in data:
        print("      rot_damping %.2f" % data["rotDamping"])
    if "x" in data:
        print("      limit_x [ %i %i ]" % (data["x"][0], data["x"][1]))
    if "y" in data:
        print("      limit_y [ %i %i ]" % (data["y"][0], data["y"][1]))
    if "z" in data:
        print("      limit_z [ %i %i ]" % (data["z"][0], data["z"][1]))
    print("    }")
print("  ]")

print("}")
