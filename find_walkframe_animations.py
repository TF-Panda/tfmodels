from panda3d.core import TokenFile

import sys

filename = sys.argv[1]

tfile = TokenFile()
tfile.read(filename)
walkframes = []
walkframes_all = []

def processSequenceOrAnim(tfile, name):
    depth = 0
    while True:
        tfile.nextToken(True)
        if tfile.getToken() == "{":
            depth += 1

        if tfile.getToken() == "}":
            depth -= 1
            if depth < 0:
              break

        if tfile.getToken() == "walkframe":
            tfile.nextToken()
            if tfile.tokenAvailable():
                walkframes.append(name)
            else:
                walkframes_all.append(name)

while tfile.tokenAvailable(True):

    tfile.nextToken(True)
    tok = tfile.getToken()

    if (tok == "$sequence" or tok == "$animation"):
      tfile.nextToken()
      name = tfile.getToken()
      tfile.nextToken()
      if (tok == "$animation"):
          tfile.nextToken()
      assert tfile.getToken() == "{"
      processSequenceOrAnim(tfile, name)

print("#define ROOT_MOTION_ANIMS_XY \\")
walkframes.sort()
for wf in walkframes:
    print("  " + wf + " \\")

print("#define ROOT_MOTION_ANIMS \\")
walkframes_all.sort()
for wf in walkframes_all:
    print("  " + wf + " \\")
