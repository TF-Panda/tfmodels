from panda3d.core import *

from direct.showbase.ShowBase import ShowBase

base = ShowBase()

cm = CardMaker('cm')
cm.setFrame(-0.5, 0.5, -0.5, 0.5)
base.render.attachNewNode(cm.generate())

render.ls()

def update(task):
    # Move smiley into screen space

    worldToView = base.cam.getMat(render)
    worldToView.invertInPlace()

    worldCoord = Point3(0, 0, 0)

    viewCoord = worldToView.xformPoint(worldCoord)
    clipCoord = base.camLens.getProjectionMat().xform(Vec4(viewCoord, 1))
    clipCoord = clipCoord / clipCoord[3]

    toViewCoord = viewCoord + Point3(0, 0, 0.0625)
    toClipCoord = base.camLens.getProjectionMat().xform(Vec4(toViewCoord, 1))
    toClipCoord = toClipCoord / toClipCoord[3]

    print(clipCoord)

    #print(100 / ((toClipCoord - clipCoord).length() * base.win.getYSize() * base.win.getXSize()))

    ndcLength = (toClipCoord - clipCoord).length()
    print(100 / (ndcLength * base.win.getYSize()))

    print(toClipCoord - clipCoord)

    #clipUnit = mvp.xform(worldUnit)
    #print(clipUnit)

    return task.cont

taskMgr.add(update, 'update')

#base.enableMouse()
#base.disableMouse()

#camera.setY(-200)


base.run()
