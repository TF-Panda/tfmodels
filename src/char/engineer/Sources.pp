#define DIR_TYPE models
#define INSTALL_TO char/engineer

#begin install_tex
  #define SOURCES \
    engineer_blue.ptex \
    engineer_red.ptex \
    engineer_head.ptex \
    engineer_normal.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    engineer_blue.pmat \
    engineer_red.pmat \
    engineer_head.pmat
#end install_mat

#define ENGINEER_ANIMS \
  a_PDA_aimmatrix_run_mid_right \
  a_ITEM1_aimmatrix_crouch_idle_mid_center \
  jumplandPose_LOSER \
  a_MELEE_ALLCLASS_aimmatrix_swim_up_center \
  jumplandPose_PRIMARY \
  a_crouch_walkSW_SECONDARY \
  a_jumpfloat_MELEE \
  a_SECONDARY_aimmatrix_swim_up_right \
  layer_gesture_melee_help_armL \
  a_crouch_walkN_crouch_walk_MELEE_ALLCLASS \
  a_blend_crouchN_crouch_walk_ITEM1 \
  a_SECONDARY_aimmatrix_reverse_down_left \
  PRIMARY_stun_end \
  AttackSwim_PDA \
  a_MELEE_ALLCLASS_aimmatrix_run_down_right \
  a_BUILDING_aimmatrix_run_down_left \
  a_PDA_aimmatrix_swim_down_right \
  a_runW_LOSER \
  a_ITEM2_aimmatrix_swim_mid_right \
  a_BUILDING_DEPLOYED_aimmatrix_idle_down_right \
  a_SECONDARY_aimmatrix_run_mid_left \
  taunt_headbutt_start \
  a_PDA_aimmatrix_crouch_idle_up_left \
  a_PDA_aimmatrix_crouch_idle_down_center \
  ReloadStand_SECONDARY \
  bread_pretzel_pose \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_up_left \
  a_swimSE_SECONDARY \
  a_swimSW_MELEE_ALLCLASS \
  a_BUILDING_aimmatrix_run_down_right \
  jumpland_ITEM2 \
  a_runS_PASSTIME \
  a_MELEE_ALLCLASS_aimmatrix_idle_neutral \
  a_crouch_walkSE_crouch_walk_ITEM2 \
  a_SECONDARY_aimmatrix_idle_straight_up \
  a_BUILDING_aimmatrix_swim_mid_left \
  a_BUILDING_DEPLOYED_aimmatrix_crouch_idle_neutral \
  a_crouch_walkW_BUILDING \
  a_jumpstart_MELEE \
  a_ITEM2_aimmatrix_idle_down_right \
  a_crouch_walkS_crouch_walk_PASSTIME \
  a_ITEM2_aimmatrix_crouch_idle_down_center \
  a_runW_MELEE \
  PDA_Crouch_fire \
  a_SECONDARY_aimmatrix_run_up_left \
  ITEM2_swing \
  MELEE_allclass_idle_arm \
  a_PDA_aimmatrix_idle_up_right \
  a_PDA_aimmatrix_swim_down_center \
  taunt_laugh \
  stand_SECONDARY \
  a_swimNE_LOSER \
  ReloadSwim_PRIMARY \
  a_blend_crouchN_SECONDARY \
  PRIMARY_placeSapper \
  Melee_allclass_Crouch_Swing \
  a_MELEE_aimmatrix_crouch_idle_up_right \
  layer_taunt_laugh \
  a_PASSTIME_aimmatrix_run_up_left \
  stand_BUILDING \
  a_SECONDARY_aimmatrix_crouch_idle_mid_center \
  a_runSE_ITEM1 \
  a_BUILDING_aimmatrix_swim_mid_center \
  a_runN_MELEE_ALLCLASS \
  a_crouch_walkNE_crouch_walk_ITEM2 \
  a_PDA_run_fire \
  a_PASSTIME_aimmatrix_crouch_idle_mid_right \
  a_ITEM1_aimmatrix_crouch_idle_neutral \
  a_ITEM2_aimmatrix_run_down_right \
  a_SECONDARY_aimmatrix_idle_down_right \
  a_runNW_PDA \
  a_runNE_MELEE_ALLCLASS \
  PRIMARY_stun_begin \
  a_PRIMARY_aimmatrix_crouch_idle_up_left \
  a_MELEE_aimmatrix_walk_up_right \
  PRIMARY_reload_airwalk_end \
  gesture_melee_go \
  a_BUILDING_aimmatrix_run_mid_right \
  a_blend_crouchN_crouch_walk_PDA \
  a_PASSTIME_aimmatrix_crouch_idle_down_left \
  a_ITEM1_aimmatrix_run_mid_right \
  a_runNW_ITEM1 \
  a_swimS_PDA \
  taunt_hifiveSuccessFull \
  AttackCrouch_PRIMARY \
  a_crouch_walkS_crouch_walk_PDA \
  a_MELEE_aimmatrix_swim_mid_left \
  a_PRIMARY_aimmatrix_idle_down_center \
  a_PASSTIME_aimmatrix_idle_mid_left \
  a_ITEM2_aimmatrix_swim_neutral \
  a_PRIMARY_aimmatrix_swim_down_center \
  a_runSE_LOSER \
  jumplandPose_BUILDING_DEPLOYED \
  a_PASSTIME_aimmatrix_idle_up_left \
  a_PRIMARY_reload_loop \
  a_MELEE_ALLCLASS_aimmatrix_run_down_center \
  a_BUILDING_aimmatrix_idle_straight_up \
  a_MELEE_ALLCLASS_aimmatrix_idle_straight_up \
  a_PRIMARY_aimmatrix_run_down_left \
  a_ITEM2_aimmatrix_idle_up_right \
  a_crouch_walkE_PRIMARY \
  a_swimNW_SECONDARY \
  a_SECONDARY_aimmatrix_forward_mid_right \
  a_PRIMARY_aimmatrix_crouch_idle_down_center \
  a_crouch_walkNW_crouch_walk_MELEE_ALLCLASS \
  a_ITEM1_aimmatrix_crouch_idle_up_right \
  a_jumpstart_ITEM2 \
  PDA_fire \
  a_PRIMARY_aimmatrix_run_up_right \
  a_PDA_aimmatrix_idle_neutral \
  bodylayer_PDA_run_fire \
  a_crouch_walkNE_crouch_walk_MELEE_ALLCLASS \
  jumpland_BUILDING \
  a_swimSE_PDA \
  a_runNW_PASSTIME \
  a_crouch_walkSE_SECONDARY \
  a_PRIMARY_aimmatrix_idle_mid_left \
  a_MELEE_aimmatrix_walk_straight_up \
  a_MELEE_aimmatrix_idle_neutral \
  a_swimN_MELEE \
  a_BUILDING_aimmatrix_idle_mid_left \
  a_MELEE_aimmatrix_crouch_idle_down_center \
  grapple_arm_pose \
  airwalk_LOSER \
  a_BUILDING_DEPLOYED_aimmatrix_swim_straight_up \
  a_swimSW_ITEM2 \
  a_BUILDING_DEPLOYED_aimmatrix_crouch_idle_mid_left \
  a_BUILDING_aimmatrix_idle_up_center \
  a_BUILDING_DEPLOYED_aimmatrix_swim_mid_left \
  taunt10 \
  Melee_Crouch_Swing \
  a_ITEM1_aimmatrix_idle_down_left \
  a_PRIMARY_aimmatrix_idle_mid_center \
  a_flinch02 \
  a_ITEM1_aimmatrix_crouch_idle_straight_up \
  a_runE_BUILDING_DEPLOYED \
  layer_gesture_PDA_cheer_armL \
  a_ITEM1_aimmatrix_run_up_center \
  a_swimNW_LOSER \
  a_BUILDING_aimmatrix_swim_up_left \
  a_SECONDARY_aimmatrix_run_down_center \
  a_BUILDING_aimmatrix_swim_straight_up \
  a_crouch_walkSE_crouch_walk_MELEE_ALLCLASS \
  a_PDA_aimmatrix_run_mid_center \
  a_PRIMARY_aimmatrix_idle_down_right \
  a_BUILDING_aimmatrix_swim_down_center \
  a_PRIMARY_aimmatrix_run_down_right \
  a_SECONDARY_aimmatrix_crouch_idle_down_right \
  a_runN_ITEM2 \
  a_runSW_MELEE_ALLCLASS \
  a_kart_jump_start \
  taunt_aerobic_B \
  a_jumpfloat_BUILDING_DEPLOYED \
  a_ITEM2_aimmatrix_crouch_idle_straight_up \
  ITEM2_Crouch_Swing_hard \
  a_PDA_aimmatrix_idle_up_center \
  a_vehicle_lean_forward \
  a_MELEE_ALLCLASS_aimmatrix_run_mid_center \
  layer_placeSapper_ArmL \
  taunt_rps_rock_lose \
  a_swimW_LOSER \
  a_ITEM1_aimmatrix_idle_up_right \
  a_crouch_walkN_crouch_walk_PDA \
  taunt06 \
  a_crouch_walkSW_crouch_walk_PASSTIME \
  a_crouch_walkSE_crouch_walk_BUILDING_DEPLOYED \
  a_BUILDING_aimmatrix_crouch_idle_down_center \
  bodylayer_ITEM2_swing \
  arm_pose_01 \
  a_PDA_aimmatrix_crouch_idle_mid_left \
  a_MELEE_aimmatrix_walk_down_left \
  a_ITEM2_aimmatrix_crouch_idle_mid_center \
  a_runSE_MELEE_ALLCLASS \
  a_PRIMARY_aimmatrix_crouch_idle_neutral \
  stand_PASSTIME \
  a_PDA_aimmatrix_idle_mid_center \
  a_MELEE_ALLCLASS_aimmatrix_run_up_right \
  a_PDA_aimmatrix_run_straight_up \
  a_runS_LOSER \
  a_MELEE_ALLCLASS_aimmatrix_swim_down_right \
  a_runNW_BUILDING \
  a_ITEM2_aimmatrix_swim_mid_left \
  a_swimSW_BUILDING \
  a_PRIMARY_aimmatrix_crouch_idle_mid_center \
  a_PASSTIME_aimmatrix_run_neutral \
  taunt_rps_start \
  taunt_rps_rock_win \
  a_runCenter_ITEM1 \
  a_MELEE_aimmatrix_swim_neutral \
  a_ITEM1_aimmatrix_crouch_idle_down_left \
  layer_gesture_primary_go_armL \
  layer_taunt_flip_success_initiator \
  a_runN_ITEM1 \
  gesture_secondary_help \
  layer_taunt_cyoa_PDA_outro \
  armslayer_ITEM2_swing_hard \
  a_BUILDING_DEPLOYED_aimmatrix_idle_mid_right \
  a_PDA_aimmatrix_swim_mid_left \
  layer_taunt_vehicle_allclass_spawn \
  reloadcrouch_PRIMARY_end \
  a_ITEM1_aimmatrix_swim_up_center \
  a_MELEE_ALLCLASS_aimmatrix_idle_down_right \
  taunt_killer_time_intro \
  taunt_brutallegendinterior \
  a_MELEE_aimmatrix_swim_up_right \
  a_PASSTIME_aimmatrix_crouch_idle_down_right \
  a_ITEM2_aimmatrix_run_up_center \
  a_PASSTIME_aimmatrix_run_mid_right \
  airwalk_MELEE \
  layer_reload_arms_PRIMARY_loop_swim \
  a_swimN_LOSER \
  a_PDA_aimmatrix_idle_up_left \
  armslayer_PDA_Crouch_fire \
  a_BUILDING_DEPLOYED_aimmatrix_idle_neutral \
  a_runNE_PASSTIME \
  taunt_aerobic_A \
  a_ITEM2_crouch_swing_hard \
  a_BUILDING_aimmatrix_crouch_idle_mid_center \
  SelectionMenu_Idle \
  a_PRIMARY_aimmatrix_run_mid_center \
  a_PRIMARY_aimmatrix_crouch_idle_down_left \
  a_swimCenter_BUILDING_DEPLOYED \
  a_runN_PRIMARY \
  a_swimSE_PRIMARY \
  a_BUILDING_aimmatrix_swim_neutral \
  a_PRIMARY_aimmatrix_crouch_idle_down_right \
  a_ITEM1_aimmatrix_swim_straight_up \
  a_ITEM2_aimmatrix_idle_mid_left \
  a_MELEE_aimmatrix_walk_mid_right \
  a_passtime_throw_endpose \
  a_crouch_walkNE_crouch_walk_MELEE \
  layer_taunt_rps_scissors_win \
  a_runS_PRIMARY \
  a_PRIMARY_aimmatrix_swim_mid_right \
  AttackCrouch_PDA \
  bread_russianblack_pose \
  a_swimNE_BUILDING \
  a_swimE_PDA \
  taunt_hifiveSuccess \
  a_jumpstart_BUILDING \
  a_MELEE_ALLCLASS_aimmatrix_walk_down_left \
  a_SECONDARY_aimmatrix_idle_down_left \
  a_runNW_MELEE_ALLCLASS \
  crouch_MELEE \
  a_crouch_walkS_crouch_walk_MELEE_ALLCLASS \
  a_ITEM2_aimmatrix_idle_mid_center \
  a_BUILDING_aimmatrix_idle_up_right \
  armslayer_PDA_run_fire \
  layer_reload_airwalk_arms_SECONDARY \
  a_swimS_BUILDING_DEPLOYED \
  a_BUILDING_aimmatrix_idle_up_left \
  a_PRIMARY_aimmatrix_swim_up_center \
  gesture_secondary_cheer \
  a_SECONDARY_aimmatrix_crouch_idle_up_left \
  a_runNW_MELEE \
  a_SECONDARY_aimmatrix_run_down_right \
  layer_PASSTIME_throw_end \
  crouch_MELEE_ALLCLASS \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_up_center \
  taunt01 \
  a_MELEE_ALLCLASS_aimmatrix_swim_down_left \
  a_BUILDING_DEPLOYED_aimmatrix_crouch_idle_down_center \
  a_swimE_PRIMARY \
  layer_taunt_cyoa_PDA_intro \
  bread_burnt_pose \
  a_ITEM2_aimmatrix_swim_straight_up \
  a_BUILDING_DEPLOYED_aimmatrix_swim_up_left \
  bread_bagged_pose \
  layer_taunt_rps_paper \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_mid_left \
  bodylayer_Melee_allclass_Crouch_Swing \
  a_runSE_ITEM2 \
  a_runW_PASSTIME \
  PRIMARY_stun_middle \
  a_blend_crouchN_crouch_walk_MELEE \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_down_center \
  bodylayer_Melee_Swing \
  a_MELEE_aimmatrix_idle_mid_left \
  crouch_BUILDING_DEPLOYED \
  PRIMARY_reload_swim_end \
  a_PRIMARY_aimmatrix_airwalk_up_right \
  layer_reload_arms_PRIMARY_loop \
  a_MELEE_aimmatrix_idle_up_center \
  a_BUILDING_DEPLOYED_aimmatrix_idle_down_center \
  a_PASSTIME_aimmatrix_crouch_idle_straight_up \
  a_swimNW_MELEE_ALLCLASS \
  kart_cheer \
  a_SECONDARY_aimmatrix_swim_down_left \
  a_crouch_walkE_BUILDING \
  crouch_ITEM1 \
  a_crouch_walkNW_crouch_walk_PDA \
  a_stun_startpose \
  a_swimNW_MELEE \
  taunt_cyoa_PDA_outro \
  a_crouch_walkS_BUILDING \
  stand_ITEM1 \
  stand_BUILDING_DEPLOYED \
  ReloadAirwalk_SECONDARY \
  a_runS_ITEM2 \
  a_swimNE_PDA \
  a_runN_BUILDING_DEPLOYED \
  a_crouch_walkNW_BUILDING \
  a_swimSW_MELEE \
  a_jumpstart_SECONDARY \
  a_MELEE_aimmatrix_swim_up_left \
  a_ITEM1_aimmatrix_swim_down_center \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_down_left \
  a_PDA_aimmatrix_swim_up_center \
  a_MELEE_aimmatrix_idle_up_left \
  a_SECONDARY_aimmatrix_idle_up_left \
  a_ITEM1_aimmatrix_swim_down_right \
  a_MELEE_ALLCLASS_aimmatrix_run_mid_right \
  a_swimSW_LOSER \
  taunt_rps_paper_win \
  a_PRIMARY_aimmatrix_idle_mid_right \
  a_SECONDARY_aimmatrix_swim_down_right \
  bodylayer_PDA_Crouch_fire \
  a_flinch04 \
  a_SECONDARY_aimmatrix_swim_up_center \
  a_MELEE_aimmatrix_run_up_center \
  a_PDA_aimmatrix_crouch_idle_straight_up \
  dieviolent \
  a_swimN_PRIMARY \
  a_runW_ITEM1 \
  bread_baguette_pose \
  layer_taunt_headbutt_start \
  xReloadPrim \
  a_PDA_aimmatrix_swim_mid_center \
  taunt_brutallegendinblend \
  a_BUILDING_aimmatrix_crouch_idle_neutral \
  a_crouch_walkN_crouch_walk_MELEE \
  a_swimN_ITEM1 \
  taunt_yeti \
  taunt_aerobic_A_START \
  taunt_flip_success_receiver \
  a_ITEM2_aimmatrix_run_down_center \
  a_BUILDING_DEPLOYED_aimmatrix_crouch_idle_down_right \
  grapple_hand_pose \
  throw_fire \
  a_swimE_MELEE_ALLCLASS \
  a_runN_MELEE \
  a_runSE_MELEE \
  taunt_killer_time_outro \
  a_jumpstart_BUILDING_DEPLOYED \
  a_crouch_walkW_crouch_walk_ITEM1 \
  a_PDA_fire \
  layer_dieviolent \
  a_MELEE_aimmatrix_crouch_idle_straight_up \
  a_SECONDARY_aimmatrix_forward_straight_up \
  a_PRIMARY_aimmatrix_idle_up_center \
  a_MELEE_aimmatrix_crouch_idle_down_left \
  a_MELEE_ALLCLASS_aimmatrix_idle_mid_left \
  a_MELEE_ALLCLASS_aimmatrix_walk_neutral \
  a_crouch_walkE_crouch_walk_ITEM2 \
  a_MELEE_aimmatrix_walk_up_left \
  a_MELEE_aimmatrix_crouch_idle_up_center \
  a_MELEE_ALLCLASS_aimmatrix_idle_down_left \
  a_MELEE_aimmatrix_idle_straight_up \
  ReloadSwim_SECONDARY \
  AttackSwim_MELEE_ALLCLASS \
  a_BUILDING_aimmatrix_swim_up_center \
  a_crouch_walkCenter_crouch_walk_PASSTIME \
  a_runSW_BUILDING \
  a_PDA_aimmatrix_idle_straight_up \
  a_runNE_PDA \
  a_PASSTIME_aimmatrix_crouch_idle_mid_center \
  a_kart_jump_float \
  a_ITEM1_aimmatrix_swim_mid_left \
  a_jumpstart_LOSER \
  a_swimSE_BUILDING \
  a_swimN_MELEE_ALLCLASS \
  a_MELEE_aimmatrix_swim_down_center \
  a_SECONDARY_aimmatrix_crouch_idle_neutral \
  ReloadStand_PRIMARY \
  a_crouch_walkS_crouch_walk_BUILDING_DEPLOYED \
  hand_pose_01 \
  a_MELEE_aimmatrix_walk_up_center \
  a_PRIMARY_aimmatrix_run_straight_up \
  AttackSwim_MELEE \
  bread_robo_pose \
  a_ITEM1_aimmatrix_swim_up_left \
  airwalk_ITEM1 \
  a_ITEM2_aimmatrix_idle_up_left \
  a_PRIMARY_aimmatrix_run_mid_left \
  a_kart_reference \
  a_grapple_pull_idle \
  a_crouch_walkSW_crouch_walk_ITEM2 \
  gesture_melee_help \
  a_crouch_walkS_SECONDARY \
  a_BUILDING_DEPLOYED_aimmatrix_crouch_idle_mid_right \
  a_MELEE_ALLCLASS_aimmatrix_swim_up_left \
  a_ITEM2_aimmatrix_run_neutral \
  a_blend_crouchN_crouch_walk_MELEE_ALLCLASS \
  layer_taunt_killer_time_outro \
  a_crouch_walkCenter_crouch_walk_MELEE \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_straight_up \
  a_PDA_aimmatrix_crouch_idle_mid_right \
  a_ITEM1_aimmatrix_run_neutral \
  a_swimW_BUILDING \
  a_crouch_walkSW_crouch_walk_BUILDING_DEPLOYED \
  a_runW_PDA \
  a_jumpfloat_LOSER \
  layer_taunt_vehicle_allclass_honk \
  a_runCenter_PASSTIME \
  a_blend_crouchN_crouch_walk_ITEM2 \
  a_SECONDARY_aimmatrix_forward_mid_center \
  a_swimNE_MELEE_ALLCLASS \
  a_SECONDARY_aimmatrix_swim_up_left \
  a_runS_BUILDING \
  a_MELEE_aimmatrix_idle_down_left \
  airwalk_MELEE_ALLCLASS \
  a_MELEE_aimmatrix_idle_mid_right \
  a_crouch_walkCenter_crouch_walk_ITEM2 \
  a_PRIMARY_aimmatrix_swim_down_left \
  a_SECONDARY_aimmatrix_swim_mid_left \
  a_stun_endpose \
  PRIMARY_death_burning \
  a_swimCenter_SECONDARY \
  a_BUILDING_DEPLOYED_aimmatrix_crouch_idle_straight_up \
  a_MELEE_ALLCLASS_aimmatrix_walk_up_right \
  a_jumpstart_PDA \
  a_swimCenter_MELEE \
  jumplandPose_ITEM2 \
  a_runW_SECONDARY \
  a_ITEM2_aimmatrix_swim_down_center \
  a_runE_MELEE_ALLCLASS \
  a_MELEE_aimmatrix_run_mid_center \
  a_ITEM1_aimmatrix_run_down_left \
  a_BUILDING_aimmatrix_crouch_idle_up_center \
  a_MELEE_aimmatrix_swim_mid_right \
  a_BUILDING_DEPLOYED_aimmatrix_swim_up_center \
  a_MELEE_ALLCLASS_aimmatrix_walk_mid_center \
  a_BUILDING_DEPLOYED_aimmatrix_crouch_idle_up_right \
  a_ITEM1_aimmatrix_swim_up_right \
  a_MELEE_aimmatrix_run_up_left \
  a_ITEM1_aimmatrix_crouch_idle_up_left \
  a_swimS_LOSER \
  a_ITEM2_aimmatrix_swim_up_right \
  a_PDA_Crouch_fire \
  a_swimW_BUILDING_DEPLOYED \
  a_BUILDING_DEPLOYED_aimmatrix_idle_down_left \
  a_MELEE_ALLCLASS_aimmatrix_walk_straight_up \
  airwalk_ITEM2 \
  AttackSwim_ITEM2_hard \
  a_MELEE_aimmatrix_run_neutral \
  stand_LOSER \
  a_MELEE_aimmatrix_swim_mid_center \
  taunt_flip_start \
  layer_taunt_rps_rock \
  a_swimE_ITEM1 \
  a_MELEE_aimmatrix_swim_down_left \
  a_ITEM2_aimmatrix_idle_down_left \
  a_crouch_walkNW_crouch_walk_PASSTIME \
  a_grapple_SHOOT \
  a_MELEE_aimmatrix_idle_mid_center \
  a_crouch_walkE_SECONDARY \
  a_crouch_walkCenter_crouch_walk_BUILDING_DEPLOYED \
  a_crouch_walkE_crouch_walk_ITEM1 \
  layer_reload_arms_PRIMARY \
  taunt_vehicle_allclass_end \
  a_ITEM2_aimmatrix_run_straight_up \
  a_swimNW_BUILDING \
  a_SECONDARY_aimmatrix_run_down_left \
  a_SECONDARY_aimmatrix_forward_down_right \
  a_PDA_aimmatrix_idle_down_center \
  bodylayer_PDA_fire \
  a_crouch_walkW_crouch_walk_BUILDING_DEPLOYED \
  a_BUILDING_DEPLOYED_aimmatrix_crouch_idle_up_center \
  a_crouch_walkSE_BUILDING \
  armslayer_ITEM2_crouch_swing_hard \
  a_MELEE_aimmatrix_walk_mid_left \
  a_runSE_BUILDING \
  a_runNE_BUILDING_DEPLOYED \
  a_swimNW_ITEM1 \
  a_MELEE_aimmatrix_idle_down_right \
  a_SECONDARY_aimmatrix_reverse_up_right \
  a_jumpfloat_PRIMARY \
  a_MELEE_aimmatrix_run_up_right \
  a_swimSW_PDA \
  armslayer_melee_swing \
  a_ITEM1_aimmatrix_idle_neutral \
  a_runS_BUILDING_DEPLOYED \
  jumpland_KART \
  a_MELEE_ALLCLASS_aimmatrix_swim_mid_center \
  a_SECONDARY_aimmatrix_run_mid_right \
  a_swimNW_PRIMARY \
  a_swimSE_MELEE \
  taunt_aerobic_B_START \
  a_swimCenter_ITEM1 \
  AttackStand_SECONDARY \
  a_aerobic_neutral \
  a_PRIMARY_aimmatrix_idle_up_right \
  a_MELEE_aimmatrix_crouch_idle_up_left \
  a_SECONDARY_aimmatrix_idle_up_right \
  a_PDA_aimmatrix_swim_up_right \
  a_crouch_walkNE_crouch_walk_ITEM1 \
  a_SECONDARY_aimmatrix_reverse_mid_center \
  a_crouch_walkNW_crouch_walk_ITEM2 \
  stand_ITEM2 \
  a_runCenter_SECONDARY \
  a_BUILDING_aimmatrix_run_down_center \
  a_runE_PASSTIME \
  a_runS_SECONDARY \
  jumpland_PRIMARY \
  layer_kart_cheer \
  a_crouch_walkNE_SECONDARY \
  a_crouch_walkN_SECONDARY \
  a_PDA_aimmatrix_crouch_idle_up_center \
  a_MELEE_aimmatrix_walk_down_right \
  taunt_dosido_intro \
  ReloadCrouch_PRIMARY \
  a_PDA_aimmatrix_idle_mid_right \
  a_MELEE_aimmatrix_swim_straight_up \
  a_PDA_aimmatrix_swim_mid_right \
  a_swimNE_ITEM1 \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_mid_right \
  a_MELEE_aimmatrix_run_down_center \
  a_runN_PASSTIME \
  SPELL_arm_pose \
  a_PASSTIME_aimmatrix_run_mid_left \
  a_SECONDARY_aimmatrix_run_mid_center \
  a_BUILDING_aimmatrix_crouch_idle_straight_up \
  a_crouch_walkW_crouch_walk_MELEE \
  jumplandPose_ITEM1 \
  a_ITEM2_aimmatrix_idle_straight_up \
  crouch_SECONDARY \
  a_jumpfloat_ITEM2 \
  a_swimSE_ITEM1 \
  taunt_vehicle_allclass_start_layer \
  a_jumpstart_MELEE_ALLCLASS \
  AttackCrouch_SECONDARY \
  a_MELEE_aimmatrix_walk_mid_center \
  a_BUILDING_aimmatrix_swim_up_right \
  taunt_brutallegendin \
  a_PRIMARY_aimmatrix_airwalk_mid_center \
  a_BUILDING_DEPLOYED_aimmatrix_swim_down_left \
  a_runCenter_PDA \
  a_BUILDING_aimmatrix_run_up_left \
  layer_fire_standing_arms_PDA \
  a_ITEM2_swing \
  a_swimW_MELEE_ALLCLASS \
  jumplandPose_BUILDING \
  a_SECONDARY_aimmatrix_reverse_down_center \
  layer_taunt_rps_rock_lose \
  a_SECONDARY_aimmatrix_forward_down_center \
  a_ITEM1_aimmatrix_crouch_idle_down_right \
  PRIMARY_reload_end \
  PRIMARY_death_backstab \
  a_runNE_ITEM2 \
  a_ITEM1_aimmatrix_swim_down_left \
  stand_MELEE \
  ITEM2_swing_hard \
  a_ITEM1_aimmatrix_idle_mid_right \
  a_Melee_allclass_Crouch_Swing \
  a_crouch_walkNW_PRIMARY \
  a_crouch_walkSE_crouch_walk_PASSTIME \
  a_BUILDING_aimmatrix_crouch_idle_down_left \
  jumpland_PDA \
  a_MELEE_ALLCLASS_aimmatrix_walk_mid_left \
  a_swimNW_BUILDING_DEPLOYED \
  a_PRIMARY_aimmatrix_airwalk_mid_left \
  a_swimNW_ITEM2 \
  AttackStand_PRIMARY \
  a_crouch_walkSW_crouch_walk_ITEM1 \
  a_SECONDARY_aimmatrix_forward_neutral \
  melee_crouchraw \
  a_BUILDING_aimmatrix_swim_down_left \
  a_MELEE_ALLCLASS_aimmatrix_idle_mid_right \
  a_SECONDARY_aimmatrix_reverse_down_right \
  a_PRIMARY_aimmatrix_crouch_idle_straight_up \
  a_runE_SECONDARY \
  a_swimW_PDA \
  a_SECONDARY_aimmatrix_crouch_idle_mid_left \
  taunt_dosido_dance \
  a_runSW_SECONDARY \
  a_vehicle_allclass_lean_neutral \
  PRIMARY_reload_swim \
  a_swimS_MELEE \
  hand_pose_02 \
  a_ITEM2_aimmatrix_run_up_right \
  layer_PRIMARY_stun_end \
  a_runCenter_MELEE_ALLCLASS \
  layer_PRIMARY_stun_begin \
  bodylayer_ITEM2_crouch_swing \
  a_swimSW_PRIMARY \
  a_SECONDARY_aimmatrix_swim_straight_up \
  layer_taunt02 \
  a_SECONDARY_aimmatrix_idle_mid_right \
  a_MELEE_ALLCLASS_aimmatrix_idle_up_right \
  jumplandPose_MELEE_ALLCLASS \
  crouch_BUILDING \
  melee_raw \
  a_PDA_aimmatrix_run_up_right \
  a_runN_BUILDING \
  a_crouch_walkS_PRIMARY \
  a_SECONDARY_aimmatrix_run_neutral \
  a_crouch_walkW_SECONDARY \
  a_SECONDARY_aimmatrix_swim_down_center \
  taunt_brutallegend \
  a_BUILDING_aimmatrix_idle_mid_right \
  a_ITEM1_aimmatrix_run_up_right \
  a_PDA_aimmatrix_idle_down_right \
  Melee_Swing \
  saxxy_pose \
  a_MELEE_ALLCLASS_aimmatrix_run_up_left \
  a_PDA_aimmatrix_run_up_left \
  a_crouch_walkCenter_PRIMARY \
  PRIMARY_reload_airwalk_loop \
  a_MELEE_ALLCLASS_aimmatrix_walk_down_right \
  a_swimE_BUILDING_DEPLOYED \
  a_swimE_BUILDING \
  a_MELEE_aimmatrix_crouch_idle_mid_right \
  taunt_rps_paper_lose \
  a_crouch_walkNW_crouch_walk_MELEE \
  a_vehicle_allclass_neutral \
  kart_impact \
  PRIMARY_reloadcrouch \
  a_PRIMARYcrouch_reload \
  a_MELEE_aimmatrix_run_mid_left \
  a_swimSE_ITEM2 \
  a_aerobic_center \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_neutral \
  gesture_PDA_go \
  a_PRIMARY_aimmatrix_crouch_idle_up_center \
  a_runCenter_MELEE \
  a_BUILDING_DEPLOYED_aimmatrix_idle_mid_center \
  a_PRIMARY_aimmatrix_airwalk_down_center \
  a_MELEE_ALLCLASS_aimmatrix_idle_up_left \
  a_PDA_aimmatrix_crouch_idle_down_left \
  layer_taunt_vehicle_allclass_end \
  a_BUILDING_aimmatrix_crouch_idle_up_left \
  a_PDA_aimmatrix_run_down_center \
  a_runCenter_BUILDING \
  layer_gesture_primary_help_armL \
  a_runS_MELEE \
  a_PASSTIME_aimmatrix_run_up_center \
  airwalk_PRIMARY \
  taunt_replay \
  a_PDA_aimmatrix_crouch_idle_down_right \
  layer_gesture_secondary_help_armL \
  layer_taunt_rps_rock_win \
  jumpland_ITEM1 \
  a_PDA_aimmatrix_idle_down_left \
  a_SECONDARY_aimmatrix_reverse_up_left \
  a_PDA_aimmatrix_idle_mid_left \
  a_runN_PDA \
  a_SECONDARY_aimmatrix_reverse_mid_right \
  a_crouch_walkN_PRIMARY \
  a_MELEE_ALLCLASS_aimmatrix_swim_mid_left \
  a_runE_ITEM1 \
  PASSTIME_throw_middle \
  a_ITEM2_aimmatrix_crouch_idle_mid_left \
  PASSTIME_throw_cancel \
  grapple_grip \
  a_MELEE_ALLCLASS_aimmatrix_walk_up_center \
  a_ITEM2_aimmatrix_crouch_idle_mid_right \
  a_runNE_ITEM1 \
  a_PRIMARY_aimmatrix_swim_down_right \
  a_SECONDARY_aimmatrix_reverse_mid_left \
  a_BUILDING_DEPLOYED_aimmatrix_idle_up_center \
  a_BUILDING_aimmatrix_crouch_idle_up_right \
  a_runW_MELEE_ALLCLASS \
  a_runNE_PRIMARY \
  jumplandPose_MELEE \
  a_MELEE_aimmatrix_crouch_idle_down_right \
  layer_taunt_dosido_dance \
  a_runCenter_PRIMARY \
  a_ITEM2_aimmatrix_crouch_idle_up_right \
  bodylayer_Melee_Crouch_Swing \
  a_MELEE_ALLCLASS_aimmatrix_idle_up_center \
  a_ITEM1_aimmatrix_idle_mid_center \
  a_crouch_walkW_PRIMARY \
  a_PRIMARY_reload \
  a_swimS_ITEM2 \
  a_PDA_aimmatrix_crouch_idle_neutral \
  a_MELEE_ALLCLASS_aimmatrix_swim_up_right \
  a_PASSTIME_aimmatrix_run_down_right \
  a_PDA_aimmatrix_crouch_idle_mid_center \
  a_PRIMARY_aimmatrix_airwalk_neutral \
  a_PDA_aimmatrix_swim_down_left \
  armslayer_melee_allclass_Crouch_swing \
  a_swimW_ITEM2 \
  a_MELEE_ALLCLASS_aimmatrix_swim_down_center \
  PDA_run_fire \
  taunt_highFiveStart \
  a_PRIMARY_aimmatrix_airwalk_up_center \
  a_ITEM1_aimmatrix_idle_up_left \
  a_PRIMARY_aimmatrix_airwalk_up_left \
  a_ITEM2_aimmatrix_run_down_left \
  b_PRIMARY_reloadcrouch_loop \
  a_BUILDING_DEPLOYED_aimmatrix_idle_up_right \
  a_runSW_ITEM1 \
  layer_reload_arms_PRIMARY_end_swim \
  layer_taunt_rps_scissors_lose \
  a_MELEE_aimmatrix_walk_neutral \
  SPELL_hand_pose \
  a_BUILDING_aimmatrix_run_up_right \
  layer_reload_crouch_arms_SECONDARY \
  b_PRIMARY_reload_loop \
  a_SECONDARY_aimmatrix_crouch_idle_up_right \
  a_PRIMARY_aimmatrix_swim_up_right \
  a_swimCenter_PRIMARY \
  a_crouch_walkCenter_crouch_walk_ITEM1 \
  a_PRIMARY_aimmatrix_swim_mid_left \
  a_MELEE_ALLCLASS_aimmatrix_walk_mid_right \
  a_runSW_LOSER \
  a_SECONDARY_aimmatrix_reverse_straight_up \
  a_swimNW_PDA \
  a_swimSW_ITEM1 \
  a_runNW_ITEM2 \
  a_PASSTIME_aimmatrix_idle_up_right \
  a_crouch_walkSE_crouch_walk_ITEM1 \
  a_BUILDING_aimmatrix_run_mid_left \
  a_BUILDING_aimmatrix_swim_down_right \
  taunt02 \
  PRIMARY_death_headshot \
  a_Melee_Swing \
  gesture_PDA_cheer \
  gesture_PDA_help \
  a_swimS_MELEE_ALLCLASS \
  a_SECONDARY_aimmatrix_forward_up_left \
  a_PDA_aimmatrix_run_up_center \
  a_runSE_PDA \
  a_SECONDARY_aimmatrix_forward_mid_left \
  a_runSE_SECONDARY \
  layer_taunt_rps_paper_lose \
  a_PRIMARY_aimmatrix_run_down_center \
  armslayer_ITEM2_swing \
  a_PRIMARY_aimmatrix_crouch_idle_mid_left \
  a_PRIMARY_aimmatrix_run_up_center \
  jumpland_SECONDARY \
  a_SECONDARY_aimmatrix_swim_neutral \
  a_MELEE_aimmatrix_crouch_idle_mid_left \
  a_crouch_walkSW_crouch_walk_MELEE \
  a_PASSTIME_aimmatrix_crouch_idle_up_center \
  AttackSwim_SECONDARY \
  ragdollspawn \
  a_jumpfloat_SECONDARY \
  a_BUILDING_DEPLOYED_aimmatrix_swim_down_right \
  AttackStand_PDA \
  a_MELEE_ALLCLASS_aimmatrix_run_down_left \
  layer_taunt_replay \
  taunt_rps_scissors_lose \
  kart_dash \
  layer_gesture_secondary_cheer_armL \
  a_SECONDARY_aimmatrix_crouch_idle_mid_right \
  a_crouch_walkNE_crouch_walk_PDA \
  a_runCenter_BUILDING_DEPLOYED \
  a_ITEM1_aimmatrix_swim_neutral \
  a_MELEE_ALLCLASS_aimmatrix_idle_down_center \
  a_ITEM2_aimmatrix_swim_mid_center \
  ITEM2_crouch_swing \
  stand_MELEE_ALLCLASS \
  a_runNE_BUILDING \
  a_swimN_PDA \
  a_SECONDARY_aimmatrix_swim_mid_center \
  a_runSW_PDA \
  a_ITEM2_aimmatrix_swim_up_left \
  a_ITEM2_aimmatrix_idle_neutral \
  a_SECONDARY_aimmatrix_swim_mid_right \
  jumpland_BUILDING_DEPLOYED \
  a_PASSTIME_aimmatrix_crouch_idle_up_right \
  taunt_brutallegendout \
  bodylayer_ITEM2_swing_hard \
  a_crouch_walkNW_crouch_walk_ITEM1 \
  a_runE_PDA \
  a_swimS_PRIMARY \
  airwalk_BUILDING \
  a_PRIMARY_aimmatrix_run_up_left \
  layer_taunt_drg_melee \
  kart_idle \
  a_BUILDING_aimmatrix_idle_mid_center \
  a_MELEE_aimmatrix_crouch_idle_neutral \
  a_runW_ITEM2 \
  a_Melee_Crouch_Swing \
  a_swimCenter_PDA \
  a_crouch_walkW_crouch_walk_MELEE_ALLCLASS \
  a_runCenter_LOSER \
  layer_gesture_melee_cheer_armL \
  a_PASSTIME_aimmatrix_idle_down_left \
  PASSTIME_throw_end \
  taunt09 \
  a_runW_PRIMARY \
  a_SECONDARY_aimmatrix_forward_up_right \
  a_ITEM1_aimmatrix_crouch_idle_up_center \
  a_swimS_BUILDING \
  a_vehicle_allclass_right_bd \
  taunt_cyoa_PDA_intro \
  a_runE_PRIMARY \
  layer_taunt03 \
  a_crouch_walkW_crouch_walk_PDA \
  a_ITEM1_aimmatrix_idle_down_right \
  a_MELEE_ALLCLASS_aimmatrix_run_straight_up \
  a_runNW_LOSER \
  taunt_highFiveStart_idle \
  a_crouch_walkSE_PRIMARY \
  jumplandPose_SECONDARY \
  a_vehicle_taunt_allclass_left \
  a_crouch_walkNE_BUILDING \
  a_crouch_walkE_crouch_walk_PASSTIME \
  a_throw_fire \
  Melee_allclass_Swing \
  a_MELEE_ALLCLASS_aimmatrix_run_neutral \
  a_BUILDING_DEPLOYED_aimmatrix_crouch_idle_up_left \
  a_SECONDARY_aimmatrix_run_up_right \
  a_ITEM1_aimmatrix_swim_mid_center \
  a_crouch_walkSW_crouch_walk_MELEE_ALLCLASS \
  a_PDA_aimmatrix_run_down_left \
  a_jumpfloat_MELEE_ALLCLASS \
  a_PDA_aimmatrix_swim_up_left \
  a_BUILDING_aimmatrix_idle_down_left \
  a_ITEM2_crouch_swing \
  a_SECONDARY_aimmatrix_idle_mid_left \
  layer_gesture_melee_go_armL \
  a_PDA_aimmatrix_swim_straight_up \
  a_PRIMARY_reload_airwalk \
  a_MELEE_aimmatrix_swim_down_right \
  layer_reload_arms_PRIMARY_swim \
  a_swimE_SECONDARY \
  a_vehicle_taunt_allclass_right \
  a_runSW_MELEE \
  a_ITEM2_aimmatrix_idle_mid_right \
  kart_impact_big \
  a_SECONDARY_aimmatrix_idle_down_center \
  a_crouch_walkN_crouch_walk_BUILDING_DEPLOYED \
  jumpland_MELEE_ALLCLASS \
  a_runE_MELEE \
  a_swimSW_BUILDING_DEPLOYED \
  a_blend_crouchN_crouch_walk_PASSTIME \
  a_ITEM2_aimmatrix_idle_down_center \
  a_PASSTIME_aimmatrix_idle_down_right \
  bodylayer_Melee_allclass_Swing \
  ReloadCrouch_SECONDARY \
  gesture_primary_help \
  a_MELEE_aimmatrix_idle_down_center \
  a_swimN_BUILDING \
  airwalk_SECONDARY \
  layer_taunt07 \
  crouch_LOSER \
  a_runSW_ITEM2 \
  a_BUILDING_DEPLOYED_aimmatrix_idle_mid_left \
  layer_gesture_secondary_go_armL \
  a_flinch01 \
  a_MELEE_aimmatrix_swim_up_center \
  a_PRIMARY_reloadcrouch_loop \
  a_BUILDING_aimmatrix_idle_down_center \
  a_ITEM2_aimmatrix_swim_down_left \
  a_vehicle_allclass_left \
  r_handposes \
  a_aerobic_left \
  layer_taunt_rps_scissors \
  a_reference \
  layer_taunt_dosido_intro \
  a_ITEM1_aimmatrix_crouch_idle_mid_right \
  a_crouch_walkSE_crouch_walk_MELEE \
  layer_PASSTIME_throw_cancel \
  a_Melee_allclass_Swing \
  a_PASSTIME_aimmatrix_run_straight_up \
  a_PRIMARY_aimmatrix_swim_mid_center \
  a_ITEM2_aimmatrix_swim_up_center \
  a_BUILDING_aimmatrix_run_up_center \
  a_MELEE_aimmatrix_idle_up_right \
  armslayer_ITEM2_crouch_swing \
  a_BUILDING_aimmatrix_run_neutral \
  a_grapple_pull_start \
  a_runSE_PRIMARY \
  jumpland_MELEE \
  a_ITEM2_aimmatrix_run_mid_left \
  a_ITEM2_swing_hard \
  a_BUILDING_aimmatrix_crouch_idle_mid_right \
  a_swimCenter_ITEM2 \
  a_swimNE_ITEM2 \
  a_runE_LOSER \
  a_MELEE_aimmatrix_walk_down_center \
  taunt_yetipunch \
  layer_taunt10 \
  gesture_primary_go \
  a_PASSTIME_aimmatrix_run_down_center \
  a_MELEE_ALLCLASS_aimmatrix_run_mid_left \
  a_PRIMARY_aimmatrix_idle_neutral \
  a_runNE_SECONDARY \
  a_SECONDARY_aimmatrix_idle_mid_center \
  a_PASSTIME_aimmatrix_idle_up_center \
  taunt_drg_melee \
  a_ITEM2_aimmatrix_crouch_idle_up_center \
  a_runE_BUILDING \
  a_BUILDING_DEPLOYED_aimmatrix_crouch_idle_down_left \
  taunt_rps_scissors \
  a_MELEE_ALLCLASS_aimmatrix_swim_mid_right \
  a_swimSW_SECONDARY \
  a_runNE_LOSER \
  a_ITEM2_aimmatrix_swim_down_right \
  a_swimSE_MELEE_ALLCLASS \
  a_runSW_BUILDING_DEPLOYED \
  a_MELEE_aimmatrix_run_mid_right \
  a_BUILDING_DEPLOYED_aimmatrix_swim_mid_right \
  a_PRIMARY_aimmatrix_airwalk_down_right \
  a_jumpfloat_ITEM1 \
  a_runNW_BUILDING_DEPLOYED \
  a_crouch_walkE_crouch_walk_MELEE \
  taunt_conga \
  a_ITEM2_aimmatrix_idle_up_center \
  a_runNW_PRIMARY \
  a_MELEE_aimmatrix_run_straight_up \
  layer_reload_arms_PRIMARY_end \
  a_jumpstart_ITEM1 \
  a_runSE_BUILDING_DEPLOYED \
  a_ITEM1_aimmatrix_idle_down_center \
  a_swimCenter_LOSER \
  layer_reload_standing_arms_SECONDARY \
  a_BUILDING_DEPLOYED_aimmatrix_swim_down_center \
  taunt_yeti_layer \
  a_PRIMARY_aimmatrix_run_neutral \
  a_PASSTIME_aimmatrix_run_down_left \
  a_BUILDING_DEPLOYED_aimmatrix_idle_straight_up \
  a_ITEM1_aimmatrix_run_mid_center \
  a_swimW_PRIMARY \
  a_crouch_walkNE_PRIMARY \
  a_jumpfloat_PDA \
  a_ITEM2_aimmatrix_run_mid_right \
  gesture_melee_cheer \
  stand_PRIMARY \
  taunt_cyoa_PDA_idle \
  crouch_PDA \
  a_swimW_MELEE \
  layer_taunt_rps_paper_win \
  layer_taunt_yetipunch \
  a_PASSTIME_aimmatrix_idle_mid_center \
  a_PASSTIME_aimmatrix_crouch_idle_neutral \
  taunt_rps_rock \
  a_SECONDARY_aimmatrix_run_up_center \
  a_SECONDARY_aimmatrix_forward_down_left \
  a_runN_LOSER \
  a_SECONDARY_aimmatrix_crouch_idle_down_left \
  a_PRIMARY_aimmatrix_swim_up_left \
  a_ITEM2_aimmatrix_crouch_idle_down_left \
  a_vehicle_taunt_allclass_neutral \
  a_runS_PDA \
  layer_taunt_yeti_prop \
  a_jumpstart_PRIMARY \
  a_BUILDING_aimmatrix_crouch_idle_mid_left \
  a_PASSTIME_aimmatrix_crouch_idle_up_left \
  a_crouch_walkCenter_SECONDARY \
  a_runS_MELEE_ALLCLASS \
  PRIMARY_reload_swim_loop \
  a_crouch_walkN_crouch_walk_PASSTIME \
  a_runS_ITEM1 \
  a_swimNE_PRIMARY \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_down_right \
  a_SECONDARY_aimmatrix_crouch_idle_up_center \
  PASSTIME_throw_begin \
  a_vehicle_allclass_right \
  a_ITEM1_aimmatrix_run_mid_left \
  a_runE_ITEM2 \
  AttackSwim_PRIMARY \
  a_MELEE_ALLCLASS_aimmatrix_swim_straight_up \
  a_PASSTIME_aimmatrix_crouch_idle_mid_left \
  a_SECONDARY_aimmatrix_reverse_up_center \
  bread_shortbread_pose \
  armslayer_melee_allclass_swing \
  a_crouch_walkNE_crouch_walk_BUILDING_DEPLOYED \
  a_runSE_PASSTIME \
  gesture_primary_cheer \
  a_BUILDING_aimmatrix_run_mid_center \
  a_swimW_SECONDARY \
  a_PDA_aimmatrix_swim_neutral \
  a_crouch_walkSW_crouch_walk_PDA \
  layer_taunt_killer_time_intro \
  a_PRIMARY_aimmatrix_crouch_idle_up_right \
  layer_gesture_PDA_help_armL \
  layer_PRIMARY_stun_middle \
  a_MELEE_ALLCLASS_aimmatrix_swim_neutral \
  a_BUILDING_aimmatrix_run_straight_up \
  layer_gesture_PDA_go_armL \
  a_vehicle_taunt_allclass_center \
  competitive_winnerstate_idle \
  taunt_flip_success_initiator \
  taunt_vehicle_allclass_start \
  a_SECONDARY_aimmatrix_run_straight_up \
  a_BUILDING_DEPLOYED_aimmatrix_crouch_idle_mid_center \
  a_SECONDARY_aimmatrix_idle_up_center \
  a_PRIMARY_aimmatrix_run_mid_right \
  a_PDA_aimmatrix_run_neutral \
  a_PASSTIME_aimmatrix_run_up_right \
  a_PASSTIME_aimmatrix_run_mid_center \
  AttackSwim_ITEM2 \
  competitive_loserstate_idle \
  a_ITEM2_aimmatrix_run_up_left \
  armslayer_PDA_fire \
  a_crouch_walkSW_BUILDING \
  a_BUILDING_aimmatrix_idle_down_right \
  a_runW_BUILDING \
  a_ITEM2_aimmatrix_run_mid_center \
  a_swimS_ITEM1 \
  a_crouch_walkNW_SECONDARY \
  a_vehicle_allclass_lean_center \
  taunt07 \
  a_PDA_aimmatrix_crouch_idle_up_right \
  a_crouch_walkE_crouch_walk_MELEE_ALLCLASS \
  a_ITEM1_aimmatrix_run_down_center \
  a_vehicle_lean_backward \
  layer_taunt01 \
  a_swimCenter_MELEE_ALLCLASS \
  a_ITEM1_aimmatrix_swim_mid_right \
  layer_taunt09 \
  a_ITEM2_aimmatrix_crouch_idle_down_right \
  bread_crumpet_pose \
  a_PRIMARY_aimmatrix_crouch_idle_mid_right \
  jumplandPose_PDA \
  a_ITEM1_aimmatrix_crouch_idle_mid_left \
  layer_PASSTIME_throw_begin \
  a_runSW_PRIMARY \
  gesture_secondary_go \
  a_crouch_walkW_crouch_walk_ITEM2 \
  a_runW_BUILDING_DEPLOYED \
  bread_monster_pose \
  a_swimE_LOSER \
  taunt_brutallegendoutblend \
  a_SECONDARY_aimmatrix_idle_neutral \
  a_crouch_walkCenter_crouch_walk_MELEE_ALLCLASS \
  a_crouch_walkN_crouch_walk_ITEM2 \
  a_blend_crouchN_crouch_walk_BUILDING_DEPLOYED \
  a_swimN_BUILDING_DEPLOYED \
  a_crouch_walkS_crouch_walk_ITEM1 \
  a_PRIMARY_aimmatrix_idle_down_left \
  a_PASSTIME_aimmatrix_crouch_idle_down_center \
  taunt_russian \
  a_BUILDING_aimmatrix_idle_neutral \
  a_ITEM1_aimmatrix_idle_straight_up \
  a_MELEE_ALLCLASS_aimmatrix_walk_down_center \
  a_runSW_PASSTIME \
  a_BUILDING_DEPLOYED_aimmatrix_swim_neutral \
  a_runCenter_ITEM2 \
  a_ITEM1_aimmatrix_run_straight_up \
  armslayer_throw_fire \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_up_right \
  a_swimNE_BUILDING_DEPLOYED \
  a_crouch_walkN_crouch_walk_ITEM1 \
  airwalk_PDA \
  a_PRIMARY_aimmatrix_idle_up_left \
  a_PRIMARY_aimmatrix_idle_straight_up \
  taunt_headbutt_success \
  a_swimE_MELEE \
  a_BUILDING_DEPLOYED_aimmatrix_idle_up_left \
  a_ITEM1_aimmatrix_crouch_idle_down_center \
  a_crouch_walkE_crouch_walk_PDA \
  a_BUILDING_aimmatrix_crouch_idle_down_right \
  a_crouch_walkN_BUILDING \
  crouch_ITEM2 \
  a_MELEE_ALLCLASS_aimmatrix_run_up_center \
  a_swimNE_MELEE \
  a_vehicle_allclass_center \
  a_swimN_ITEM2 \
  layer_taunt_headbutt_success \
  a_BUILDING_DEPLOYED_aimmatrix_swim_up_right \
  a_crouch_walkE_crouch_walk_BUILDING_DEPLOYED \
  a_swimS_SECONDARY \
  a_PDA_aimmatrix_run_down_right \
  a_ITEM1_aimmatrix_idle_mid_left \
  a_MELEE_aimmatrix_run_down_left \
  a_PRIMARY_reload_swim \
  a_PRIMARY_aimmatrix_airwalk_down_left \
  crouch_PRIMARY \
  armslayer_melee_Crouch_swing \
  a_SECONDARY_aimmatrix_crouch_idle_down_center \
  a_crouch_walkW_crouch_walk_PASSTIME \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_mid_center \
  a_PASSTIME_aimmatrix_idle_mid_right \
  a_swimN_SECONDARY \
  a_MELEE_aimmatrix_run_down_right \
  a_PRIMARY_aimmatrix_swim_straight_up \
  a_runNW_SECONDARY \
  layer_grapple_SHOOT \
  a_aerobic_right \
  a_MELEE_ALLCLASS_aimmatrix_walk_up_left \
  a_SECONDARY_aimmatrix_reverse_neutral \
  a_SECONDARY_aimmatrix_forward_up_center \
  a_ITEM1_aimmatrix_run_down_right \
  a_PASSTIME_aimmatrix_idle_down_center \
  taunt_rps_paper \
  a_PDA_aimmatrix_run_mid_left \
  a_PASSTIME_aimmatrix_idle_straight_up \
  SelectionMenu_Anim01 \
  a_crouch_walkSW_PRIMARY \
  taunt_rps_scissors_win \
  a_crouch_walkSE_crouch_walk_PDA \
  bread_ration_pose \
  a_jumpfloat_BUILDING \
  bread_cornbread_pose \
  a_PRIMARY_aimmatrix_airwalk_straight_up \
  a_PASSTIME_aimmatrix_idle_neutral \
  a_swimCenter_BUILDING \
  taunt03 \
  a_passtime_throw_startpose \
  a_BUILDING_DEPLOYED_aimmatrix_swim_mid_center \
  a_crouch_walkCenter_BUILDING \
  airwalk_BUILDING_DEPLOYED \
  a_crouch_walkNW_crouch_walk_BUILDING_DEPLOYED \
  a_ITEM2_aimmatrix_crouch_idle_neutral \
  PRIMARY_reload_airwalk \
  a_MELEE_ALLCLASS_aimmatrix_idle_mid_center \
  a_ITEM2_aimmatrix_crouch_idle_up_left \
  a_ITEM1_aimmatrix_run_up_left \
  SelectionMenu_StartPose \
  a_crouch_walkCenter_crouch_walk_PDA \
  a_crouch_walkNE_crouch_walk_PASSTIME \
  jumpland_LOSER \
  a_swimE_ITEM2 \
  a_swimSE_LOSER \
  a_PRIMARY_aimmatrix_swim_neutral \
  a_swimNE_SECONDARY \
  a_PRIMARY_aimmatrix_airwalk_mid_right \
  bodylayer_ITEM2_crouch_swing_hard \
  a_vehicle_allclass_left_bd \
  a_BUILDING_aimmatrix_swim_mid_right \
  layer_gesture_primary_cheer_armL \
  a_runNE_MELEE \
  a_ITEM1_aimmatrix_idle_up_center \
  a_swimSE_BUILDING_DEPLOYED \
  a_SECONDARY_aimmatrix_crouch_idle_straight_up \
  stand_PDA \
  default_grip \
  a_MELEE_aimmatrix_crouch_idle_mid_center \
  bread_cinnamon_pose \
  a_runN_SECONDARY \
  a_swimW_ITEM1 \
  layer_PASSTIME_throw_middle \
  a_crouch_walkS_crouch_walk_MELEE \
  a_crouch_walkS_crouch_walk_ITEM2 \
  taunt_vehicle_allclass_honk \
  layer_taunt_flip_success_receiver

#begin blender_char_egg
  #define BLENDER_PREFIX engineer-
  #define EGG_PREFIX engineer-
  #define POLY_MODEL zero
  #define CHAR_NAME engineer.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[ENGINEER_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    engineer-zero.egg \
    $[matrix anims/engineer-,$[ENGINEER_ANIMS],.egg]

  #define OPTCHAR_OPTS \
    -expose weapon_bone \
    -expose weapon_bone_L \
    -expose weapon_bone_1 \
    -flag engineer_morphs_low \
    -flag engineer_morphs_low_lod1 \
    -flag engineer_morphs_low_lod2 \
    -flag engineer_morphs_low_lod3 \
    -flag engineer_morphs_low_lod4 \
    -flag engineer_morphs_low_lod5 \
    -flag engineer_hat_bodygroup \
    -flag engineer_hat_bodygroup_lod1 \
    -flag engineer_hat_bodygroup_lod2 \
    -flag engineer_hat_bodygroup_lod3 \
    -flag engineer_hat_bodygroup_lod4 \
    -flag engineer_hat_bodygroup_lod5 \
    -flag engineer_glove_bodygroup \
    -flag engineer_glove_bodygroup_lod1 \
    -flag engineer_glove_bodygroup_lod2 \
    -flag engineer_glove_bodygroup_lod3 \
    -flag engineer_glove_bodygroup_lod4 \
    -flag engineer_glove_bodygroup_lod5
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    engineer-zero.egg
  #define SOURCES_NC \
    $[matrix engineer-,$[ENGINEER_ANIMS],.egg]
#end install_egg