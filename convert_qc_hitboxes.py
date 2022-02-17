
import sys
import os

qcFile = sys.argv[1]

from panda3d.core import *

toks = TokenFile()
if not toks.read(qcFile):
    sys.exit(1)

hboxes = []
while toks.tokenAvailable(True):
    toks.nextToken(True)
    token = toks.getToken()
    if token == "$hbox":
        data = {}
        toks.nextToken() # group index
        data['group'] = int(toks.getToken())
        toks.nextToken() # joint name
        data['joint'] = toks.getToken()

        mins = Vec3()
        maxs = Vec3()
        toks.nextToken() # minx
        mins[0] = float(toks.getToken())
        toks.nextToken()
        mins[1] = float(toks.getToken())
        toks.nextToken()
        mins[2] = float(toks.getToken())
        toks.nextToken()
        maxs[0] = float(toks.getToken())
        toks.nextToken()
        maxs[1] = float(toks.getToken())
        toks.nextToken()
        maxs[2] = float(toks.getToken())

        data['mins'] = mins
        data['maxs'] = maxs

        hboxes.append(data)

print("hit_boxes [")
for hbox in hboxes:
    print("  {")
    print("    group %i" % hbox['group'])
    print("    joint %s" % hbox['joint'])
    print("    mins [ %.2f %.2f %.2f ]" % (hbox['mins'][0], hbox['mins'][1], hbox['mins'][2]))
    print("    maxs [ %.2f %.2f %.2f ]" % (hbox['maxs'][0], hbox['maxs'][1], hbox['maxs'][2]))
    print("  }")
print("]")
