from panda3d.core import *

from direct.showbase.ShowBase import ShowBase

base = ShowBase()

from direct.gui.DirectGui import *

#base.camLens.setMinFov(54)

from direct.showbase.InputStateGlobal import inputState
inputState.watchWithModifiers('fwd', 'arrow_up', inputSource = inputState.ArrowKeys)
inputState.watchWithModifiers('bck', 'arrow_down', inputSource = inputState.ArrowKeys)
inputState.watchWithModifiers('left', 'arrow_left', inputSource = inputState.ArrowKeys)
inputState.watchWithModifiers('right', 'arrow_right', inputSource = inputState.ArrowKeys)

engie = loader.loadModel("engineer.pmdl")
engie.node().setBounds(OmniBoundingVolume())
engie.node().setFinal(1)
engie.setScale(1/16)
charNode = engie.find("**/+CharacterNode")
partBundle = charNode.node().getCharacter()
partBundle.setFrameBlendFlag(True)

wrench = loader.loadModel("src/weapons/wrench/w_wrench.egg")
wrench.reparentTo(engie.find("**/weapon_bone"))

animControls = {}
animNodePaths = engie.findAllMatches("**/+AnimBundleNode")
for animNodePath in animNodePaths:
    animBundle = animNodePath.node().getBundle()
    control = partBundle.bindAnim(animBundle, Character.HMFOkAnimExtra | Character.HMFOkPartExtra)
    if control:
        animControls[animNodePath.getName()] = control

#####################################################################
## RUN MELEE

runNode = AnimBlendNode2D("run_melee_blend")
runNode.addInput(animControls['a_runCenter_MELEE'], Point2(0, 0))
runNode.addInput(animControls['a_runN_MELEE'], Point2(0, 1))
runNode.addInput(animControls['a_runS_MELEE'], Point2(0, -1))
runNode.addInput(animControls['a_runNE_MELEE'], Point2(1, 1))
runNode.addInput(animControls['a_runNW_MELEE'], Point2(-1, 1))
runNode.addInput(animControls['a_runE_MELEE'], Point2(1, 0))
runNode.addInput(animControls['a_runW_MELEE'], Point2(-1, 0))
runNode.addInput(animControls['a_runSW_MELEE'], Point2(-1, -1))
runNode.addInput(animControls['a_runSE_MELEE'], Point2(1, -1))

aimNode = AnimBlendNode2D("run_melee_aim_blend")
aimNode.addInput(animControls['a_MELEE_aimmatrix_run_straight_up'], Point2(0, 1))
aimNode.addInput(animControls['a_MELEE_aimmatrix_run_straight_up'], Point2(1, 1))
aimNode.addInput(animControls['a_MELEE_aimmatrix_run_straight_up'], Point2(-1, 1))
aimNode.addInput(animControls['a_MELEE_aimmatrix_run_up_right'], Point2(1, 0.5))
aimNode.addInput(animControls['a_MELEE_aimmatrix_run_up_center'], Point2(0, 0.5))
aimNode.addInput(animControls['a_MELEE_aimmatrix_run_up_left'], Point2(-1, 0.5))
aimNode.addInput(animControls['a_MELEE_aimmatrix_run_mid_right'], Point2(1, 0))
aimNode.addInput(animControls['a_MELEE_aimmatrix_run_mid_center'], Point2(0, 0))
aimNode.addInput(animControls['a_MELEE_aimmatrix_run_mid_left'], Point2(-1, 0))
aimNode.addInput(animControls['a_MELEE_aimmatrix_run_down_right'], Point2(1, -1))
aimNode.addInput(animControls['a_MELEE_aimmatrix_run_down_center'], Point2(0, -1))
aimNode.addInput(animControls['a_MELEE_aimmatrix_run_down_left'], Point2(-1, -1))

runMeleeAdd = AnimAddNode("run_melee_add")
runMeleeAdd.setBase(runNode)
runMeleeAdd.setAdd(aimNode)
runMeleeAdd.setAlpha(1.0)

runMelee = AnimSequence("run_melee", runMeleeAdd)

#####################################################################

#####################################################################
## STAND MELEE

aimMeleeNode = AnimBlendNode2D("idle_melee_aim_blend")
aimMeleeNode.addInput(animControls['a_MELEE_aimmatrix_idle_straight_up'], Point2(0, 1))
aimMeleeNode.addInput(animControls['a_MELEE_aimmatrix_idle_straight_up'], Point2(1, 1))
aimMeleeNode.addInput(animControls['a_MELEE_aimmatrix_idle_straight_up'], Point2(-1, 1))
aimMeleeNode.addInput(animControls['a_MELEE_aimmatrix_idle_up_right'], Point2(1, 0.5))
aimMeleeNode.addInput(animControls['a_MELEE_aimmatrix_idle_up_center'], Point2(0, 0.5))
aimMeleeNode.addInput(animControls['a_MELEE_aimmatrix_idle_up_left'], Point2(-1, 0.5))
aimMeleeNode.addInput(animControls['a_MELEE_aimmatrix_idle_mid_right'], Point2(1, 0))
aimMeleeNode.addInput(animControls['a_MELEE_aimmatrix_idle_mid_center'], Point2(0, 0))
aimMeleeNode.addInput(animControls['a_MELEE_aimmatrix_idle_mid_left'], Point2(-1, 0))
aimMeleeNode.addInput(animControls['a_MELEE_aimmatrix_idle_down_right'], Point2(1, -1))
aimMeleeNode.addInput(animControls['a_MELEE_aimmatrix_idle_down_center'], Point2(0, -1))
aimMeleeNode.addInput(animControls['a_MELEE_aimmatrix_idle_down_left'], Point2(-1, -1))

standMeleeAdd = AnimAddNode("idle_melee")
standMeleeAdd.setBase(animControls['stand_MELEE'])
standMeleeAdd.setAdd(aimMeleeNode)
standMeleeAdd.setAlpha(1.0)

standMelee = AnimSequence("idle_melee", standMeleeAdd)

#####################################################################

blend = True

meleeState = AnimStateMachine("melee")
meleeState.addState("run", runMelee, 0.2 if blend else 0.0)
meleeState.addState("stand", standMelee, 0.2 if blend else 0.0)
meleeState.setState("stand")

partBundle.setAnimGraph(meleeState)

pelvis = NodePath('bip_pelvis')
pelvis.reparentTo(charNode)
bipPelvis = partBundle.findJoint('bip_pelvis')
partBundle.addNetTransform(bipPelvis, pelvis.node())
#partBundle.findChild('bip_pelvis').addNetTransform(pelvis.node())

engie.reparentTo(render)

al = AmbientLight('al')
al.setColor((0.8, 0.9, 1.0, 1.0))
alnp = render.attachNewNode(al)
render.setLight(alnp)

dl = CascadeLight('cl')
dl.setColor((3, 3, 2.7, 1.0))
dl.setCameraMask(BitMask32.bit(1))
dl.setSceneCamera(base.cam)
dl.setShadowCaster(True, 4096, 4096)
dlnp = render.attachNewNode(dl)
dlnp.setHpr(-45, -65, 0)
render.setLight(dlnp)

render.setAttrib(LightRampAttrib.makeHdr0())

render.setAntialias(AntialiasAttrib.MMultisample)

render.show(BitMask32.bit(1))

def nextSkin():
    skin = engie.node().getActiveMaterialGroup() + 1
    if skin >= engie.node().getNumMaterialGroups():
        skin = 0
    engie.node().setActiveMaterialGroup(skin)

def prevSkin():
    skin = engie.node().getActiveMaterialGroup() - 1
    if skin < 0:
        skin = engie.node().getNumMaterialGroups() - 1
    engie.node().setActiveMaterialGroup(skin)

base.accept('wheel_up', nextSkin)
base.accept('wheel_down', prevSkin)

moveX = 0.0
moveY = 0.0

staticFriction = 0.3
dynamicFriction = 0.3

top = 320

lastMoveX = 0.0
lastMoveY = 0.0

import math

stateText = OnscreenText("State: Stand", parent = base.a2dTopLeft, pos = (0.1, -0.1), align = TextNode.ALeft)

def update(task):
    global lastMoveX, lastMoveY

    dt = globalClock.getDt()

    camera.setX(pelvis.getX(render))
    camera.setY(pelvis.getY(render))
    camera.setZ(2.5)
    #camera.setH(90)
    camera.setY(camera, -11)

    forward = inputState.isSet('fwd')
    reverse = inputState.isSet('bck')
    left = inputState.isSet('left')
    right = inputState.isSet('right')

    if forward:
        moveY = top
    elif reverse:
        moveY = -top
    else:
        moveY = 0.0

    if left:
        moveX = -top
    elif right:
        moveX = top
    else:
        moveX = 0

    if blend:
        sFriction = 1 - math.pow(1 - staticFriction, dt * 30.0)
        dFriction = 1 - math.pow(1 - dynamicFriction, dt * 30.0)

        # Apply friction to the goal speeds
        if abs(moveX) < abs(lastMoveX):
            lastMoveX = (moveX * dFriction + lastMoveX * (1 - dFriction))
        else:
            lastMoveX = (moveX * sFriction + lastMoveX * (1 - sFriction))

        if abs(moveY) < abs(lastMoveY):
            lastMoveY = (moveY * dFriction + lastMoveY * (1 - dFriction))
        else:
            lastMoveY = (moveY * sFriction + lastMoveY * (1 - sFriction))
    else:
        lastMoveX = moveX
        lastMoveY = moveY

    moveX = lastMoveX
    moveY = lastMoveY
    if abs(moveX) < 1:
        moveX = 0
    if abs(moveY) < 1:
        moveY = 0

    if moveX == 0 and moveY == 0:
        meleeState.setState("stand")
        stateText.setText("stand")
    else:
        meleeState.setState("run")
        stateText.setText("run")
        runNode.setInputX(moveX / top)
        runNode.setInputY(moveY / top)

    #print(engie.find("**/weapon_bone").getTransform())

    #engie.ls()

    return task.cont

taskMgr.add(update, 'update')

hbaoControlZ = -0.2

def updateLookX(value):
    aimMeleeNode.setInputX(value)
    aimNode.setInputX(value)

def updateLookY(value):
    aimMeleeNode.setInputY(value)
    aimNode.setInputY(value)

def titleSliderBar(title, min, max, callback):
    global hbaoControlZ
    def __updateVarValue(slider, title, text, callback):
        text.setText("{0}: {1}".format(title, slider['value']))
        callback(slider['value'])

    value = 0
    frame = DirectFrame(parent = base.a2dTopLeft, pos = (0.3, 0, hbaoControlZ), scale = 0.3)
    titleText = OnscreenText("{0}: {1}".format(title, value), parent = frame, scale = 0.1)
    slider = DirectSlider(
        range = (min, max),
        value = value,
        command = __updateVarValue,
        pos = (0.1, 0, -0.1),
        parent = frame
    )
    slider['extraArgs'] = [slider, title, titleText, callback]

    hbaoControlZ -= 0.1

titleSliderBar("Look X", -1, 1, updateLookX)
titleSliderBar("Look Y", -1, 1, updateLookY)

base.disableMouse()

engie.ls()

base.run()
