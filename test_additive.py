from panda3d.core import *

from direct.showbase.ShowBase import ShowBase
base = ShowBase()

from direct.showbase.InputStateGlobal import inputState

inputState.watch('look_left', 'arrow_left', 'arrow_left-up', inputState.ArrowKeys)
inputState.watch('look_right', 'arrow_right', 'arrow_right-up', inputState.ArrowKeys)
inputState.watch('look_up', 'arrow_up', 'arrow_up-up', inputState.ArrowKeys)
inputState.watch('look_down', 'arrow_down', 'arrow_down-up', inputState.ArrowKeys)

inputState.set('look_left', False)
inputState.set('look_right', False)
inputState.set('look_up', False)
inputState.set('look_down', False)

from direct.actor.Actor import Actor
engie = Actor('models/char/engineer/engineer-zero.bam',
  {'stand_melee': 'models/char/engineer/engineer-stand_MELEE.bam',
   'melee_aimmatrix_idle_mid_center': 'models/char/engineer/engineer-a_MELEE_aimmatrix_idle_mid_center.bam',
   'melee_aimmatrix_idle_mid_right': 'models/char/engineer/engineer-a_MELEE_aimmatrix_idle_mid_right.bam',
   'melee_aimmatrix_idle_mid_left': 'models/char/engineer/engineer-a_MELEE_aimmatrix_idle_mid_left.bam',
   'melee_aimmatrix_idle_straight_up': 'models/char/engineer/engineer-a_MELEE_aimmatrix_idle_straight_up.bam',
   'melee_aimmatrix_idle_up_right': 'models/char/engineer/engineer-a_MELEE_aimmatrix_idle_up_right.bam',
   'melee_aimmatrix_idle_up_center': 'models/char/engineer/engineer-a_MELEE_aimmatrix_idle_up_center.bam',
   'melee_aimmatrix_idle_up_left': 'models/char/engineer/engineer-a_MELEE_aimmatrix_idle_up_left.bam',
   'melee_aimmatrix_idle_down_right': 'models/char/engineer/engineer-a_MELEE_aimmatrix_idle_down_right.bam',
   'melee_aimmatrix_idle_down_center': 'models/char/engineer/engineer-a_MELEE_aimmatrix_idle_down_center.bam',
   'melee_aimmatrix_idle_down_left': 'models/char/engineer/engineer-a_MELEE_aimmatrix_idle_down_left.bam'})

engie.setBlend(frameBlend = True)
#engie.enableBlend(blendType = PartBundle.BTComponentwise)
engie.setScale(1 / 16)
engie.getGeomNode().setH(180)

engie.setPlayRate(30 / 24, 'stand_melee')

wrench = loader.loadModel('models/weapons/wrench/w_wrench.bam')
wrench.reparentTo(engie.find("**/weapon_bone"))

#engie.loop('stand_melee')
#engie.setControlEffect('stand_melee', 1.0)

aimmatrix = {
  'mid_center': 'melee_aimmatrix_idle_mid_center',
  'mid_right': 'melee_aimmatrix_idle_mid_right',
  'mid_left': 'melee_aimmatrix_idle_mid_left',
  #'straight_up': 'melee_aimmatrix_idle_straight_up',
  'up_right': 'melee_aimmatrix_idle_up_right',
  'up_center': 'melee_aimmatrix_idle_up_center',
  'up_left': 'melee_aimmatrix_idle_up_left',
  'down_right': 'melee_aimmatrix_idle_down_right',
  'down_center': 'melee_aimmatrix_idle_down_center',
  'down_left': 'melee_aimmatrix_idle_down_left'
}

aimmatrix_quadrants = {
  'ul': ['mid_center', 'mid_left', 'up_center', 'up_left'],
  'ur': ['mid_center', 'mid_right', 'up_center', 'up_right'],
  'll': ['mid_center', 'mid_left', 'down_center', 'down_left'],
  'lr': ['mid_center', 'mid_right', 'down_center', 'down_right']
}

aimmatrix_points = {
  'mid_center': Point2(0, 0),
  'mid_right': Point2(1, 0),
  'mid_left': Point2(-1, 0),

  'up_right': Point2(1, 1),
  'up_left': Point2(-1, 1),
  'up_center': Point2(0, 1),

  'down_right': Point2(1, -1),
  'down_left': Point2(-1, -1),
  'down_center': Point2(0, -1)
}

weights = {
  "bip_hip_R": 0,
  "bip_knee_R": 0,
  "bip_hip_L": 0,
  "bip_knee_L": 0,
  "bip_foot_L": 0,
  "bip_foot_R": 0,
  "bip_toe_L": 0,
  "bip_toe_R": 0#,
  #"bip_pelvis": 0
}

rhand = engie.addEndEffector(None, "rhand", "modelRoot", "bip_hand_R")
engie.addIKChain("rhand_chain", "rhand", 4, "modelRoot")
rhand.setPos(5, 5, 5)

lhand = engie.addEndEffector(None, "lhand", "modelRoot", "bip_hand_L")
engie.addIKChain("lhand_chain", "lhand", 3, "modelRoot")

rfoot = engie.addEndEffector(None, "rfoot", "modelRoot", "bip_foot_R")
engie.addIKChain("rfoot_chain", "rfoot", 3, "modelRoot")

lfoot = engie.addEndEffector(None, "lfoot", "modelRoot", "bip_foot_L")
engie.addIKChain("lfoot_chain", "lfoot", 3, "modelRoot")

engie.ls()

body_pitch = (-45, 90)
body_yaw = (-45, 45)
look_speed = 20

yaw = 0
pitch = 0

def remapValClamped(val, A, B, C, D):
    if A == B:
        return D if val >= B else C

    cVal = (val - A) / (B - A)
    cVal = max(min(cVal, 1.0), 0.0)

    return C + (D - C) * cVal

def calcBlendValues(task):
    global yaw, pitch

    #print(globalClock.getDt())

    if inputState.isSet('look_up'):
        pitch += look_speed * globalClock.getDt()
    elif inputState.isSet('look_down'):
        pitch -= look_speed * globalClock.getDt()

    if inputState.isSet('look_left'):
        yaw -= look_speed * globalClock.getDt()
    elif inputState.isSet('look_right'):
        yaw += look_speed * globalClock.getDt()

    yaw = max(min(yaw, body_yaw[1]), body_yaw[0])
    pitch = max(min(pitch, body_pitch[1]), body_pitch[0])

    #engie.setH(yaw)
    #engie.setP(pitch)

    quadrant = None

    yawFactor = remapValClamped(yaw, body_yaw[0], body_yaw[1], -1, 1)
    pitchFactor = remapValClamped(pitch, body_pitch[0], body_pitch[1], -1, 1)

    print(yawFactor, pitchFactor)

    if yawFactor >= 0 and pitchFactor >= 0:
        quadrant = 'ur'
    elif yawFactor <= 0 and pitchFactor >= 0:
        quadrant = 'ul'
    elif yawFactor >= 0 and pitchFactor <= 0:
        quadrant = 'lr'
    else:
        quadrant = 'll'

    point = Point2(yawFactor, pitchFactor)

    print(quadrant)

    weights = {}

    for matrixPoint in aimmatrix_quadrants[quadrant]:
        distance = (aimmatrix_points[matrixPoint] - point).length()
        print(distance, matrixPoint)
        weight = 1 - distance
        weights[matrixPoint] = weight
        engie.setControlEffect(aimmatrix[matrixPoint], weight)

    print(weights)

    return task.cont

"""
for direction, anim in aimmatrix.items():
    engie.loop(anim)
    engie.setControlBlendType(anim, AnimControl.BTAdd)
    engie.setControlJointWeights(anim, weights)
    engie.setControlEffect(anim, 0.0)
"""
#engie.loop('melee_aimmatrix_idle_straight_up')
#engie.setControlBlendType('melee_aimmatrix_idle_straight_up', AnimControl.BTAdd)
#engie.setControlEffect('melee_aimmatrix_idle_straight_up', 1.0)

engie.listJoints()

engie.reparentTo(render)

al = AmbientLight('al')
al.setColor((0.4, 0.4, 0.4, 1.0))
alnp = render.attachNewNode(al)
render.setLight(alnp)

dl = CascadeLight('cl')
dl.setColor((3, 3, 3, 1.0))
dl.setCameraMask(BitMask32.bit(1))
dl.setSceneCamera(base.cam)
dl.setShadowCaster(True, 4096, 4096)
#dl.showFrustum()
dlnp = render.attachNewNode(dl)
dlnp.setHpr(-45, -65, 0)
render.setLight(dlnp)

render.show(BitMask32.bit(1))

#taskMgr.add(calcBlendValues, 'calcBlendValues')

#base.disableMouse()

camera.setY(-15)
camera.setZ(3)

base.run()
