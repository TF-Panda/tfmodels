from panda3d.core import *

import sys, os
sys.path.append(os.path.join(os.path.dirname(__file__), '..'))

from test_base import *

from direct.gui.DirectGui import *

engie = loader.loadModel("engineer.pmdl")
engie.node().setBounds(OmniBoundingVolume())
engie.node().setFinal(1)
engie.reparentTo(render)
charNode = engie.find("**/+CharacterNode")
partBundle = charNode.node().getCharacter()
partBundle.setFrameBlendFlag(True)

#wrench = loader.loadModel("src/weapons/wrench/w_wrench.egg")
#wrench.reparentTo(engie.find("**/weapon_bone"))

animControls = {}
animNodePaths = engie.findAllMatches("**/+AnimBundleNode")
for animNodePath in animNodePaths:
    animBundle = animNodePath.node().getBundle()
    control = partBundle.bindAnim(animBundle, Character.HMFOkAnimExtra | Character.HMFOkPartExtra)
    if control:
        animControls[animNodePath.getName()] = control

noBonesDesc = WeightListDesc("nobones")
noBonesDesc.setWeight("bip_pelvis", 0.0)
noBonesWeights = WeightList(partBundle, noBonesDesc)

MeleeHipsTorso = WeightListDesc("Melee_HipsTorso")
MeleeHipsTorso.setWeight("bip_pelvis", 0.75)
MeleeHipsTorso.setWeight("bip_hip_R", 0.0)
MeleeHipsTorso.setWeight("bip_hip_L", 0.0)
MeleeHipsTorso.setWeight("bip_collar_L", 0.0)
MeleeHipsTorso.setWeight("bip_collar_R", 0.0)
MeleeHipsTorso.setWeight("bip_spine_0", 0.75)
meleeHipsTorsoWeights = WeightList(partBundle, MeleeHipsTorso)

meleeArmsBlend = WeightListDesc("Melee_ArmsBlend")
meleeArmsBlend.setWeight("bip_pelvis", 0.0)
meleeArmsBlend.setWeight("bip_hip_R", 0.0)
meleeArmsBlend.setWeight("bip_hip_L", 0.0)
meleeArmsBlend.setWeight("bip_spine_1", 0.5)
meleeArmsBlend.setWeight("bip_spine_2", 0.7)
meleeArmsBlend.setWeight("bip_spine_3", 0.9)
meleeArmsBlend.setWeight("bip_collar_L", 1.0)
meleeArmsBlend.setWeight("bip_upperArm_L", 1.0)
meleeArmsBlend.setWeight("bip_lowerArm_L", 1.0)
meleeArmsBlend.setWeight("bip_collar_R", 1.0)
meleeArmsBlend.setWeight("bip_upperArm_R", 1.0)
meleeArmsBlend.setWeight("bip_lowerArm_R", 1.0)
meleeArmsBlend.setWeight("bip_head", 0.0)
meleeArmsBlend.setWeight("bip_neck", 0.0)
meleeArmsBlendWeights = WeightList(partBundle, meleeArmsBlend)

meleeArmsBlend2 = WeightListDesc("Melee_ArmsBlend2")
meleeArmsBlend2.setWeight("bip_pelvis", 0.0)
meleeArmsBlend2.setWeight("bip_hip_R", 0.0)
meleeArmsBlend2.setWeight("bip_hip_L", 0.0)
meleeArmsBlend2.setWeight("bip_spine_0", 0.7)
meleeArmsBlend2.setWeight("bip_spine_1", 0.8)
meleeArmsBlend2.setWeight("bip_spine_2", 0.9)
meleeArmsBlend2.setWeight("bip_spine_3", 1.0)
meleeArmsBlend2.setWeight("bip_collar_L", 1.0)
meleeArmsBlend2.setWeight("bip_upperArm_L", 1.0)
meleeArmsBlend2.setWeight("bip_lowerArm_L", 1.0)
meleeArmsBlend2.setWeight("bip_collar_R", 1.0)
meleeArmsBlend2.setWeight("bip_upperArm_R", 1.0)
meleeArmsBlend2.setWeight("bip_lowerArm_R", 1.0)
meleeArmsBlend2.setWeight("bip_head", 0.7)
meleeArmsBlendWeights2 = WeightList(partBundle, meleeArmsBlend2)

Armslayer = AnimSequence("swing_melee_armslayer", animControls['armslayer_melee_swing'])
Armslayer.setWeightList(meleeArmsBlendWeights)
Bodylayer = AnimSequence("swing_melee_bodylayer", animControls['bodylayer_Melee_Swing'])
Bodylayer.setWeightList(meleeHipsTorsoWeights)
Bodylayer.setFlags(AnimSequence.FDelta | AnimSequence.FPost)
SwingMelee = AnimSequence("swing_melee")
SwingMelee.addLayer(Bodylayer, 0, 1, 20, 24, True, False)
SwingMelee.addLayer(Armslayer, 0, 5, 20, 24, True, False)

attackStandPrimary = AnimSequence("attack_stand_primary", animControls['AttackStand_PRIMARY'])
attackStandPrimary.setFlags(AnimSequence.FDelta | AnimSequence.FPost)

attackCrouchPrimary = AnimSequence("attack_crouch_primary", animControls['AttackCrouch_PRIMARY'])
attackCrouchPrimary.setFlags(AnimSequence.FDelta | AnimSequence.FPost)

reloadPrimary = AnimSequence("reload_primary", animControls['gesture_reload_primary'])
reloadPrimary.setFlags(AnimSequence.FDelta | AnimSequence.FPost)

reloadCrouchPrimary = AnimSequence("reload_crouch_primary", animControls['gesture_reload_crouch_primary'])
reloadCrouchPrimary.setFlags(AnimSequence.FDelta | AnimSequence.FPost)

attackFSM = AnimStateMachine("attackFSM")
attackFSM.addState("stand_primary", attackStandPrimary)
attackFSM.addState("stand_primary_reload", reloadPrimary)
attackFSM.addState("crouch_primary", attackCrouchPrimary)
attackFSM.addState("crouch_primary_reload", reloadCrouchPrimary)
attackFSM.addState("melee", SwingMelee)
attackFSM.setState("crouch_primary", 0, 1)

states = ["crouch", "stand", "run"]

crouchSeq = AnimSequence("crouch_melee", animControls['crouch_MELEE'])
standSeq = AnimSequence("stand_melee", animControls['stand_MELEE'])
runSeq = AnimSequence("run_melee", animControls['a_runN_MELEE'])
crouchPrimSeq = AnimSequence("crouch_primary", animControls['crouch_PRIMARY'])
standPrimSeq = AnimSequence("stand_primary", animControls['stand_PRIMARY'])
runPrimSeq = AnimSequence("run_primary", animControls['a_runN_PRIMARY'])
fsm = AnimStateMachine("thing")
fsm.addState("crouch_melee", crouchSeq)
fsm.addState("stand_melee", standSeq)
fsm.addState("run_melee", runSeq)
fsm.addState("crouch_primary", crouchPrimSeq)
fsm.addState("stand_primary", standPrimSeq)
fsm.addState("run_primary", runPrimSeq)

fsm.setState("crouch_primary", 0, 1)

state = "crouch"

attackState = "primary"
attackStates = ["primary", "primary_reload", "melee"]

def updateAnimState():
    if attackState == "primary_reload":
        theState = "primary"
    else:
        theState = attackState
    fsm.setState(state + "_" + theState, 0, 1)

def nextState():
    global state
    idx = states.index(state)
    idx += 1
    if (idx >= len(states)):
        idx = 0
    state = states[idx]

    updateAnimState()
    updateAttackState()

def updateAttackState():
    if "primary" in attackState:
        if state == "crouch":
            attackFSM.setState("crouch_" + attackState, 1, 1)
        else:
            attackFSM.setState("stand_" + attackState, 1, 1)
    else:
        attackFSM.setState(attackState, 1, 1)

def nextAttack():
    global attackState
    idx = attackStates.index(attackState)
    idx += 1
    if (idx >= len(attackStates)):
        idx = 0
    attackState = attackStates[idx]

    updateAnimState()
    updateAttackState()

base.accept('arrow_right', nextState)
base.accept('arrow_left', nextAttack)

overlay = AnimOverlayNode("gestures", fsm, attackFSM)

partBundle.setAnimGraph(overlay)

base.enableMouse()

base.run()
