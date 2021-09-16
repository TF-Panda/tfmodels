#define DIR_TYPE models
#define INSTALL_TO models/char

#begin install_tex
  #define SOURCES \
    materials/demoman_blue.ptex materials/demoman_red.ptex \
    materials/demoman_head.ptex materials/demoman_normal.ptex \
    materials/smiley.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    materials/demoman_blue.pmat materials/demoman_red.pmat \
    materials/demoman_head.pmat materials/smiley.pmat materials/eyeball_r_demo.pmat
#end install_mat

#define DEMO_ANIMS \
  AttackCrouch_PRIMARY  \
  AttackCrouch_SECONDARY  \
  AttackStand_PRIMARY  \
  AttackStand_SECONDARY  \
  AttackSwim_PRIMARY  \
  AttackSwim_SECONDARY  \
  MELEE_allclass_idle_arm  \
  Melee_Crouch_Swing  \
  Melee_Swim_Swing  \
  Melee_Swing  \
  Melee_allclass_Crouch_Swing  \
  Melee_allclass_Swim_Swing  \
  Melee_allclass_Swing  \
  PASSTIME_throw_begin  \
  PASSTIME_throw_cancel  \
  PASSTIME_throw_end  \
  PASSTIME_throw_middle  \
  PRIMARY_crouch_reload  \
  PRIMARY_death_backstab  \
  PRIMARY_death_burning  \
  PRIMARY_death_headshot  \
  PRIMARY_placeSapper  \
  PRIMARY_reload  \
  PRIMARY_reload_airwalk  \
  PRIMARY_stun_begin  \
  PRIMARY_stun_end  \
  PRIMARY_stun_middle  \
  PRIMARY_swim_reload  \
  SECONDARY_crouch_reload  \
  SECONDARY_reload  \
  SECONDARY_reload_airwalk  \
  SECONDARY_reload_loop  \
  SECONDARY_swim_reload  \
  SPELL_arm_pose  \
  SPELL_hand_pose  \
  a_ITEM1_aimmatrix_crouch_idle_down_center  \
  a_ITEM1_aimmatrix_crouch_idle_down_left  \
  a_ITEM1_aimmatrix_crouch_idle_down_right  \
  a_ITEM1_aimmatrix_crouch_idle_mid_center  \
  a_ITEM1_aimmatrix_crouch_idle_mid_left  \
  a_ITEM1_aimmatrix_crouch_idle_mid_right  \
  a_ITEM1_aimmatrix_crouch_idle_neutral  \
  a_ITEM1_aimmatrix_crouch_idle_straight_up  \
  a_ITEM1_aimmatrix_crouch_idle_up_center  \
  a_ITEM1_aimmatrix_crouch_idle_up_left  \
  a_ITEM1_aimmatrix_crouch_idle_up_right  \
  a_ITEM1_aimmatrix_idle_down_center  \
  a_ITEM1_aimmatrix_idle_down_left  \
  a_ITEM1_aimmatrix_idle_down_right  \
  a_ITEM1_aimmatrix_idle_mid_center  \
  a_ITEM1_aimmatrix_idle_mid_left  \
  a_ITEM1_aimmatrix_idle_mid_right  \
  a_ITEM1_aimmatrix_idle_neutral  \
  a_ITEM1_aimmatrix_idle_straight_up  \
  a_ITEM1_aimmatrix_idle_up_center  \
  a_ITEM1_aimmatrix_idle_up_left  \
  a_ITEM1_aimmatrix_idle_up_right  \
  a_ITEM1_aimmatrix_run_down_center  \
  a_ITEM1_aimmatrix_run_down_left  \
  a_ITEM1_aimmatrix_run_down_right  \
  a_ITEM1_aimmatrix_run_mid_center  \
  a_ITEM1_aimmatrix_run_mid_left  \
  a_ITEM1_aimmatrix_run_mid_right  \
  a_ITEM1_aimmatrix_run_neutral  \
  a_ITEM1_aimmatrix_run_straight_up  \
  a_ITEM1_aimmatrix_run_up_center  \
  a_ITEM1_aimmatrix_run_up_left  \
  a_ITEM1_aimmatrix_run_up_right  \
  a_ITEM1_aimmatrix_swim_down_center  \
  a_ITEM1_aimmatrix_swim_down_left  \
  a_ITEM1_aimmatrix_swim_down_right  \
  a_ITEM1_aimmatrix_swim_mid_center  \
  a_ITEM1_aimmatrix_swim_mid_left  \
  a_ITEM1_aimmatrix_swim_mid_right  \
  a_ITEM1_aimmatrix_swim_neutral  \
  a_ITEM1_aimmatrix_swim_straight_up  \
  a_ITEM1_aimmatrix_swim_up_center  \
  a_ITEM1_aimmatrix_swim_up_left  \
  a_ITEM1_aimmatrix_swim_up_right  \
  a_ITEM1_crouch_swing  \
  a_ITEM1_swim_swing  \
  a_ITEM1_swing  \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_down_center  \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_down_left  \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_down_right  \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_mid_center  \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_mid_left  \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_mid_right  \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_neutral  \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_straight_up  \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_up_center  \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_up_left  \
  a_MELEE_ALLCLASS_aimmatrix_crouch_idle_up_right  \
  a_MELEE_ALLCLASS_aimmatrix_idle_down_center  \
  a_MELEE_ALLCLASS_aimmatrix_idle_down_left  \
  a_MELEE_ALLCLASS_aimmatrix_idle_down_right  \
  a_MELEE_ALLCLASS_aimmatrix_idle_mid_center  \
  a_MELEE_ALLCLASS_aimmatrix_idle_mid_left  \
  a_MELEE_ALLCLASS_aimmatrix_idle_mid_right  \
  a_MELEE_ALLCLASS_aimmatrix_idle_neutral  \
  a_MELEE_ALLCLASS_aimmatrix_idle_straight_up  \
  a_MELEE_ALLCLASS_aimmatrix_idle_up_center  \
  a_MELEE_ALLCLASS_aimmatrix_idle_up_left  \
  a_MELEE_ALLCLASS_aimmatrix_idle_up_right  \
  a_MELEE_ALLCLASS_aimmatrix_run_down_center  \
  a_MELEE_ALLCLASS_aimmatrix_run_down_left  \
  a_MELEE_ALLCLASS_aimmatrix_run_down_right  \
  a_MELEE_ALLCLASS_aimmatrix_run_mid_center  \
  a_MELEE_ALLCLASS_aimmatrix_run_mid_left  \
  a_MELEE_ALLCLASS_aimmatrix_run_mid_right  \
  a_MELEE_ALLCLASS_aimmatrix_run_neutral  \
  a_MELEE_ALLCLASS_aimmatrix_run_straight_up  \
  a_MELEE_ALLCLASS_aimmatrix_run_up_center  \
  a_MELEE_ALLCLASS_aimmatrix_run_up_left  \
  a_MELEE_ALLCLASS_aimmatrix_run_up_right  \
  a_MELEE_ALLCLASS_aimmatrix_swim_down_center  \
  a_MELEE_ALLCLASS_aimmatrix_swim_down_left  \
  a_MELEE_ALLCLASS_aimmatrix_swim_down_right  \
  a_MELEE_ALLCLASS_aimmatrix_swim_mid_center  \
  a_MELEE_ALLCLASS_aimmatrix_swim_mid_left  \
  a_MELEE_ALLCLASS_aimmatrix_swim_mid_right  \
  a_MELEE_ALLCLASS_aimmatrix_swim_neutral  \
  a_MELEE_ALLCLASS_aimmatrix_swim_straight_up  \
  a_MELEE_ALLCLASS_aimmatrix_swim_up_center  \
  a_MELEE_ALLCLASS_aimmatrix_swim_up_left  \
  a_MELEE_ALLCLASS_aimmatrix_swim_up_right  \
  a_MELEE_aimmatrix_crouch_idle_down_center  \
  a_MELEE_aimmatrix_crouch_idle_down_left  \
  a_MELEE_aimmatrix_crouch_idle_down_right  \
  a_MELEE_aimmatrix_crouch_idle_mid_center  \
  a_MELEE_aimmatrix_crouch_idle_mid_left  \
  a_MELEE_aimmatrix_crouch_idle_mid_right  \
  a_MELEE_aimmatrix_crouch_idle_neutral  \
  a_MELEE_aimmatrix_crouch_idle_straight_up  \
  a_MELEE_aimmatrix_crouch_idle_up_center  \
  a_MELEE_aimmatrix_crouch_idle_up_left  \
  a_MELEE_aimmatrix_crouch_idle_up_right  \
  a_MELEE_aimmatrix_idle_down_center  \
  a_MELEE_aimmatrix_idle_down_left  \
  a_MELEE_aimmatrix_idle_down_right  \
  a_MELEE_aimmatrix_idle_mid_center  \
  a_MELEE_aimmatrix_idle_mid_left  \
  a_MELEE_aimmatrix_idle_mid_right  \
  a_MELEE_aimmatrix_idle_neutral  \
  a_MELEE_aimmatrix_idle_straight_up  \
  a_MELEE_aimmatrix_idle_up_center  \
  a_MELEE_aimmatrix_idle_up_left  \
  a_MELEE_aimmatrix_idle_up_right  \
  a_MELEE_aimmatrix_run_down_center  \
  a_MELEE_aimmatrix_run_down_left  \
  a_MELEE_aimmatrix_run_down_right  \
  a_MELEE_aimmatrix_run_mid_center  \
  a_MELEE_aimmatrix_run_mid_left  \
  a_MELEE_aimmatrix_run_mid_right  \
  a_MELEE_aimmatrix_run_neutral  \
  a_MELEE_aimmatrix_run_straight_up  \
  a_MELEE_aimmatrix_run_up_center  \
  a_MELEE_aimmatrix_run_up_left  \
  a_MELEE_aimmatrix_run_up_right  \
  a_MELEE_aimmatrix_swim_down_center  \
  a_MELEE_aimmatrix_swim_down_left  \
  a_MELEE_aimmatrix_swim_down_right  \
  a_MELEE_aimmatrix_swim_mid_center  \
  a_MELEE_aimmatrix_swim_mid_left  \
  a_MELEE_aimmatrix_swim_mid_right  \
  a_MELEE_aimmatrix_swim_neutral  \
  a_MELEE_aimmatrix_swim_straight_up  \
  a_MELEE_aimmatrix_swim_up_center  \
  a_MELEE_aimmatrix_swim_up_left  \
  a_MELEE_aimmatrix_swim_up_right  \
  a_Melee_Crouch_Swing  \
  a_Melee_Swim_Swing  \
  a_Melee_Swing  \
  a_Melee_allclass_Crouch_Swing  \
  a_Melee_allclass_Swim_Swing  \
  a_Melee_allclass_Swing  \
  a_PASSTIME_aimmatrix_crouch_idle_down_center  \
  a_PASSTIME_aimmatrix_crouch_idle_down_left  \
  a_PASSTIME_aimmatrix_crouch_idle_down_right  \
  a_PASSTIME_aimmatrix_crouch_idle_mid_center  \
  a_PASSTIME_aimmatrix_crouch_idle_mid_left  \
  a_PASSTIME_aimmatrix_crouch_idle_mid_right  \
  a_PASSTIME_aimmatrix_crouch_idle_neutral  \
  a_PASSTIME_aimmatrix_crouch_idle_straight_up  \
  a_PASSTIME_aimmatrix_crouch_idle_up_center  \
  a_PASSTIME_aimmatrix_crouch_idle_up_left  \
  a_PASSTIME_aimmatrix_crouch_idle_up_right  \
  a_PASSTIME_aimmatrix_idle_down_center  \
  a_PASSTIME_aimmatrix_idle_down_left  \
  a_PASSTIME_aimmatrix_idle_down_right  \
  a_PASSTIME_aimmatrix_idle_mid_center  \
  a_PASSTIME_aimmatrix_idle_mid_left  \
  a_PASSTIME_aimmatrix_idle_mid_right  \
  a_PASSTIME_aimmatrix_idle_neutral  \
  a_PASSTIME_aimmatrix_idle_straight_up  \
  a_PASSTIME_aimmatrix_idle_up_center  \
  a_PASSTIME_aimmatrix_idle_up_left  \
  a_PASSTIME_aimmatrix_idle_up_right  \
  a_PASSTIME_aimmatrix_run_down_center  \
  a_PASSTIME_aimmatrix_run_down_left  \
  a_PASSTIME_aimmatrix_run_down_right  \
  a_PASSTIME_aimmatrix_run_mid_center  \
  a_PASSTIME_aimmatrix_run_mid_left  \
  a_PASSTIME_aimmatrix_run_mid_right  \
  a_PASSTIME_aimmatrix_run_neutral  \
  a_PASSTIME_aimmatrix_run_straight_up  \
  a_PASSTIME_aimmatrix_run_up_center  \
  a_PASSTIME_aimmatrix_run_up_left  \
  a_PASSTIME_aimmatrix_run_up_right  \
  a_PRIMARY_aimmatrix_airwalk_down_center  \
  a_PRIMARY_aimmatrix_airwalk_down_left  \
  a_PRIMARY_aimmatrix_airwalk_down_right  \
  a_PRIMARY_aimmatrix_airwalk_mid_center  \
  a_PRIMARY_aimmatrix_airwalk_mid_left  \
  a_PRIMARY_aimmatrix_airwalk_mid_right  \
  a_PRIMARY_aimmatrix_airwalk_neutral  \
  a_PRIMARY_aimmatrix_airwalk_straight_up  \
  a_PRIMARY_aimmatrix_airwalk_up_center  \
  a_PRIMARY_aimmatrix_airwalk_up_left  \
  a_PRIMARY_aimmatrix_airwalk_up_right  \
  a_PRIMARY_aimmatrix_crouch_idle_down_center  \
  a_PRIMARY_aimmatrix_crouch_idle_down_left  \
  a_PRIMARY_aimmatrix_crouch_idle_down_right  \
  a_PRIMARY_aimmatrix_crouch_idle_mid_center  \
  a_PRIMARY_aimmatrix_crouch_idle_mid_left  \
  a_PRIMARY_aimmatrix_crouch_idle_mid_right  \
  a_PRIMARY_aimmatrix_crouch_idle_neutral  \
  a_PRIMARY_aimmatrix_crouch_idle_straight_up  \
  a_PRIMARY_aimmatrix_crouch_idle_up_center  \
  a_PRIMARY_aimmatrix_crouch_idle_up_left  \
  a_PRIMARY_aimmatrix_crouch_idle_up_right  \
  a_PRIMARY_aimmatrix_idle_down_center  \
  a_PRIMARY_aimmatrix_idle_down_left  \
  a_PRIMARY_aimmatrix_idle_down_right  \
  a_PRIMARY_aimmatrix_idle_mid_center  \
  a_PRIMARY_aimmatrix_idle_mid_left  \
  a_PRIMARY_aimmatrix_idle_mid_right  \
  a_PRIMARY_aimmatrix_idle_neutral  \
  a_PRIMARY_aimmatrix_idle_straight_up  \
  a_PRIMARY_aimmatrix_idle_up_center  \
  a_PRIMARY_aimmatrix_idle_up_left  \
  a_PRIMARY_aimmatrix_idle_up_right  \
  a_PRIMARY_aimmatrix_run_down_center  \
  a_PRIMARY_aimmatrix_run_down_left  \
  a_PRIMARY_aimmatrix_run_down_right  \
  a_PRIMARY_aimmatrix_run_mid_center  \
  a_PRIMARY_aimmatrix_run_mid_left  \
  a_PRIMARY_aimmatrix_run_mid_right  \
  a_PRIMARY_aimmatrix_run_neutral  \
  a_PRIMARY_aimmatrix_run_straight_up  \
  a_PRIMARY_aimmatrix_run_up_center  \
  a_PRIMARY_aimmatrix_run_up_left  \
  a_PRIMARY_aimmatrix_run_up_right  \
  a_PRIMARY_aimmatrix_swim_down_center  \
  a_PRIMARY_aimmatrix_swim_down_left  \
  a_PRIMARY_aimmatrix_swim_down_right  \
  a_PRIMARY_aimmatrix_swim_mid_center  \
  a_PRIMARY_aimmatrix_swim_mid_left  \
  a_PRIMARY_aimmatrix_swim_mid_right  \
  a_PRIMARY_aimmatrix_swim_neutral  \
  a_PRIMARY_aimmatrix_swim_straight_up  \
  a_PRIMARY_aimmatrix_swim_up_center  \
  a_PRIMARY_aimmatrix_swim_up_left  \
  a_PRIMARY_aimmatrix_swim_up_right  \
  a_PRIMARY_crouch_reload  \
  a_PRIMARY_crouch_reload_end  \
  a_PRIMARY_crouch_reload_loop  \
  a_PRIMARY_reload  \
  a_PRIMARY_reload_airwalk  \
  a_PRIMARY_reload_airwalk_end  \
  a_PRIMARY_reload_airwalk_loop  \
  a_PRIMARY_reload_end  \
  a_PRIMARY_reload_loop  \
  a_PRIMARY_swim_reload  \
  a_PRIMARY_swim_reload_end  \
  a_PRIMARY_swim_reload_loop  \
  a_SECONDARY_aimmatrix_crouch_idle_down_center  \
  a_SECONDARY_aimmatrix_crouch_idle_down_left  \
  a_SECONDARY_aimmatrix_crouch_idle_down_right  \
  a_SECONDARY_aimmatrix_crouch_idle_mid_center  \
  a_SECONDARY_aimmatrix_crouch_idle_mid_left  \
  a_SECONDARY_aimmatrix_crouch_idle_mid_right  \
  a_SECONDARY_aimmatrix_crouch_idle_neutral  \
  a_SECONDARY_aimmatrix_crouch_idle_straight_up  \
  a_SECONDARY_aimmatrix_crouch_idle_up_center  \
  a_SECONDARY_aimmatrix_crouch_idle_up_left  \
  a_SECONDARY_aimmatrix_crouch_idle_up_right  \
  a_SECONDARY_aimmatrix_idle_down_center  \
  a_SECONDARY_aimmatrix_idle_down_left  \
  a_SECONDARY_aimmatrix_idle_down_right  \
  a_SECONDARY_aimmatrix_idle_mid_center  \
  a_SECONDARY_aimmatrix_idle_mid_left  \
  a_SECONDARY_aimmatrix_idle_mid_right  \
  a_SECONDARY_aimmatrix_idle_neutral  \
  a_SECONDARY_aimmatrix_idle_straight_up  \
  a_SECONDARY_aimmatrix_idle_up_center  \
  a_SECONDARY_aimmatrix_idle_up_left  \
  a_SECONDARY_aimmatrix_idle_up_right  \
  a_SECONDARY_aimmatrix_run_down_center  \
  a_SECONDARY_aimmatrix_run_down_left  \
  a_SECONDARY_aimmatrix_run_down_right  \
  a_SECONDARY_aimmatrix_run_mid_center  \
  a_SECONDARY_aimmatrix_run_mid_left  \
  a_SECONDARY_aimmatrix_run_mid_right  \
  a_SECONDARY_aimmatrix_run_neutral  \
  a_SECONDARY_aimmatrix_run_straight_up  \
  a_SECONDARY_aimmatrix_run_up_center  \
  a_SECONDARY_aimmatrix_run_up_left  \
  a_SECONDARY_aimmatrix_run_up_right  \
  a_SECONDARY_aimmatrix_swim_down_center  \
  a_SECONDARY_aimmatrix_swim_down_left  \
  a_SECONDARY_aimmatrix_swim_down_right  \
  a_SECONDARY_aimmatrix_swim_mid_center  \
  a_SECONDARY_aimmatrix_swim_mid_left  \
  a_SECONDARY_aimmatrix_swim_mid_right  \
  a_SECONDARY_aimmatrix_swim_neutral  \
  a_SECONDARY_aimmatrix_swim_straight_up  \
  a_SECONDARY_aimmatrix_swim_up_center  \
  a_SECONDARY_aimmatrix_swim_up_left  \
  a_SECONDARY_aimmatrix_swim_up_right  \
  a_SECONDARY_crouch_reload  \
  a_SECONDARY_crouch_reload_end  \
  a_SECONDARY_crouch_reload_loop  \
  a_SECONDARY_reload  \
  a_SECONDARY_reload_airwalk  \
  a_SECONDARY_reload_airwalk_end  \
  a_SECONDARY_reload_airwalk_loop  \
  a_SECONDARY_reload_end  \
  a_SECONDARY_swim_reload  \
  a_SECONDARY_swim_reload_end  \
  a_SECONDARY_swim_reload_loop  \
  a_aerobic_center  \
  a_aerobic_left  \
  a_aerobic_neutral  \
  a_aerobic_right  \
  a_blend_crouchN_crouch_walk_ITEM1  \
  a_blend_crouchN_crouch_walk_MELEE  \
  a_blend_crouchN_crouch_walk_MELEE_ALLCLASS  \
  a_blend_crouchN_crouch_walk_PASSTIME  \
  a_blend_crouchN_crouch_walk_SECONDARY  \
  a_crouch_walkCenter_PRIMARY  \
  a_crouch_walkCenter_crouch_walk_ITEM1  \
  a_crouch_walkCenter_crouch_walk_MELEE  \
  a_crouch_walkCenter_crouch_walk_MELEE_ALLCLASS  \
  a_crouch_walkCenter_crouch_walk_PASSTIME  \
  a_crouch_walkCenter_crouch_walk_SECONDARY  \
  a_crouch_walkE_PRIMARY  \
  a_crouch_walkE_crouch_walk_ITEM1  \
  a_crouch_walkE_crouch_walk_MELEE  \
  a_crouch_walkE_crouch_walk_MELEE_ALLCLASS  \
  a_crouch_walkE_crouch_walk_PASSTIME  \
  a_crouch_walkE_crouch_walk_SECONDARY  \
  a_crouch_walkNE_PRIMARY  \
  a_crouch_walkNE_crouch_walk_ITEM1  \
  a_crouch_walkNE_crouch_walk_MELEE  \
  a_crouch_walkNE_crouch_walk_MELEE_ALLCLASS  \
  a_crouch_walkNE_crouch_walk_PASSTIME  \
  a_crouch_walkNE_crouch_walk_SECONDARY  \
  a_crouch_walkNW_PRIMARY  \
  a_crouch_walkNW_crouch_walk_ITEM1  \
  a_crouch_walkNW_crouch_walk_MELEE  \
  a_crouch_walkNW_crouch_walk_MELEE_ALLCLASS  \
  a_crouch_walkNW_crouch_walk_PASSTIME  \
  a_crouch_walkNW_crouch_walk_SECONDARY  \
  a_crouch_walkN_PRIMARY  \
  a_crouch_walkN_crouch_walk_ITEM1  \
  a_crouch_walkN_crouch_walk_MELEE  \
  a_crouch_walkN_crouch_walk_MELEE_ALLCLASS  \
  a_crouch_walkN_crouch_walk_PASSTIME  \
  a_crouch_walkN_crouch_walk_SECONDARY  \
  a_crouch_walkSE_PRIMARY  \
  a_crouch_walkSE_crouch_walk_ITEM1  \
  a_crouch_walkSE_crouch_walk_MELEE  \
  a_crouch_walkSE_crouch_walk_MELEE_ALLCLASS  \
  a_crouch_walkSE_crouch_walk_PASSTIME  \
  a_crouch_walkSE_crouch_walk_SECONDARY  \
  a_crouch_walkSW_PRIMARY  \
  a_crouch_walkSW_crouch_walk_ITEM1  \
  a_crouch_walkSW_crouch_walk_MELEE  \
  a_crouch_walkSW_crouch_walk_MELEE_ALLCLASS  \
  a_crouch_walkSW_crouch_walk_PASSTIME  \
  a_crouch_walkSW_crouch_walk_SECONDARY  \
  a_crouch_walkS_PRIMARY  \
  a_crouch_walkS_crouch_walk_ITEM1  \
  a_crouch_walkS_crouch_walk_MELEE  \
  a_crouch_walkS_crouch_walk_MELEE_ALLCLASS  \
  a_crouch_walkS_crouch_walk_PASSTIME  \
  a_crouch_walkS_crouch_walk_SECONDARY  \
  a_crouch_walkW_PRIMARY  \
  a_crouch_walkW_crouch_walk_ITEM1  \
  a_crouch_walkW_crouch_walk_MELEE  \
  a_crouch_walkW_crouch_walk_MELEE_ALLCLASS  \
  a_crouch_walkW_crouch_walk_PASSTIME  \
  a_crouch_walkW_crouch_walk_SECONDARY  \
  a_flinch01  \
  a_grapple_SHOOT  \
  a_grapple_pull_idle  \
  a_grapple_pull_start  \
  a_jumpfloat_ITEM1  \
  a_jumpfloat_LOSER  \
  a_jumpfloat_MELEE  \
  a_jumpfloat_MELEE_ALLCLASS  \
  a_jumpfloat_PRIMARY  \
  a_jumpfloat_SECONDARY  \
  a_jumpstart_ITEM1  \
  a_jumpstart_LOSER  \
  a_jumpstart_MELEE  \
  a_jumpstart_MELEE_ALLCLASS  \
  a_jumpstart_PRIMARY  \
  a_jumpstart_SECONDARY  \
  a_kart_jump_float  \
  a_kart_jump_start  \
  a_kart_reference  \
  a_passtime_throw_endpose  \
  a_passtime_throw_startpose  \
  a_reference  \
  a_runCenter_ITEM1  \
  a_runCenter_LOSER  \
  a_runCenter_MELEE  \
  a_runCenter_MELEE_ALLCLASS  \
  a_runCenter_PASSTIME  \
  a_runCenter_PRIMARY  \
  a_runCenter_SECONDARY  \
  a_runE_ITEM1  \
  a_runE_LOSER  \
  a_runE_MELEE  \
  a_runE_MELEE_ALLCLASS  \
  a_runE_PASSTIME  \
  a_runE_PRIMARY  \
  a_runE_SECONDARY  \
  a_runNE_ITEM1  \
  a_runNE_LOSER  \
  a_runNE_MELEE  \
  a_runNE_MELEE_ALLCLASS  \
  a_runNE_PASSTIME  \
  a_runNE_PRIMARY  \
  a_runNE_SECONDARY  \
  a_runNW_ITEM1  \
  a_runNW_LOSER  \
  a_runNW_MELEE  \
  a_runNW_MELEE_ALLCLASS  \
  a_runNW_PASSTIME  \
  a_runNW_PRIMARY  \
  a_runNW_SECONDARY  \
  a_runN_ITEM1  \
  a_runN_LOSER  \
  a_runN_MELEE  \
  a_runN_MELEE_ALLCLASS  \
  a_runN_PASSTIME  \
  a_runN_PRIMARY  \
  a_runN_SECONDARY  \
  a_runSE_ITEM1  \
  a_runSE_LOSER  \
  a_runSE_MELEE  \
  a_runSE_MELEE_ALLCLASS  \
  a_runSE_PASSTIME  \
  a_runSE_PRIMARY  \
  a_runSE_SECONDARY  \
  a_runSW_ITEM1  \
  a_runSW_LOSER  \
  a_runSW_MELEE  \
  a_runSW_MELEE_ALLCLASS  \
  a_runSW_PASSTIME  \
  a_runSW_PRIMARY  \
  a_runSW_SECONDARY  \
  a_runS_ITEM1  \
  a_runS_LOSER  \
  a_runS_MELEE  \
  a_runS_MELEE_ALLCLASS  \
  a_runS_PASSTIME  \
  a_runS_PRIMARY  \
  a_runS_SECONDARY  \
  a_runW_ITEM1  \
  a_runW_LOSER  \
  a_runW_MELEE  \
  a_runW_MELEE_ALLCLASS  \
  a_runW_PASSTIME  \
  a_runW_PRIMARY  \
  a_runW_SECONDARY  \
  a_stun_endpose  \
  a_stun_startpose  \
  a_swimCenter_ITEM1  \
  a_swimCenter_LOSER  \
  a_swimCenter_MELEE  \
  a_swimCenter_MELEE_ALLCLASS  \
  a_swimCenter_PRIMARY  \
  a_swimCenter_SECONDARY  \
  a_swimE_ITEM1  \
  a_swimE_LOSER  \
  a_swimE_MELEE  \
  a_swimE_MELEE_ALLCLASS  \
  a_swimE_PRIMARY  \
  a_swimE_SECONDARY  \
  a_swimNE_ITEM1  \
  a_swimNE_LOSER  \
  a_swimNE_MELEE  \
  a_swimNE_MELEE_ALLCLASS  \
  a_swimNE_PRIMARY  \
  a_swimNE_SECONDARY  \
  a_swimNW_ITEM1  \
  a_swimNW_LOSER  \
  a_swimNW_MELEE  \
  a_swimNW_MELEE_ALLCLASS  \
  a_swimNW_PRIMARY  \
  a_swimNW_SECONDARY  \
  a_swimN_ITEM1  \
  a_swimN_LOSER  \
  a_swimN_MELEE  \
  a_swimN_MELEE_ALLCLASS  \
  a_swimN_PRIMARY  \
  a_swimN_SECONDARY  \
  a_swimSE_ITEM1  \
  a_swimSE_LOSER  \
  a_swimSE_MELEE  \
  a_swimSE_MELEE_ALLCLASS  \
  a_swimSE_PRIMARY  \
  a_swimSE_SECONDARY  \
  a_swimSW_ITEM1  \
  a_swimSW_LOSER  \
  a_swimSW_MELEE  \
  a_swimSW_MELEE_ALLCLASS  \
  a_swimSW_PRIMARY  \
  a_swimSW_SECONDARY  \
  a_swimS_ITEM1  \
  a_swimS_LOSER  \
  a_swimS_MELEE  \
  a_swimS_MELEE_ALLCLASS  \
  a_swimS_PRIMARY  \
  a_swimS_SECONDARY  \
  a_swimW_ITEM1  \
  a_swimW_LOSER  \
  a_swimW_MELEE  \
  a_swimW_MELEE_ALLCLASS  \
  a_swimW_PRIMARY  \
  a_swimW_SECONDARY  \
  a_throw_fire  \
  a_vehicle_allclass_center  \
  a_vehicle_allclass_lean_center  \
  a_vehicle_allclass_lean_neutral  \
  a_vehicle_allclass_left  \
  a_vehicle_allclass_left_bd  \
  a_vehicle_allclass_neutral  \
  a_vehicle_allclass_right  \
  a_vehicle_allclass_right_bd  \
  a_vehicle_lean_backward  \
  a_vehicle_lean_forward  \
  a_vehicle_taunt_allclass_center  \
  a_vehicle_taunt_allclass_left  \
  a_vehicle_taunt_allclass_neutral  \
  a_vehicle_taunt_allclass_right  \
  airwalk_ITEM1  \
  airwalk_LOSER  \
  airwalk_MELEE  \
  airwalk_MELEE_ALLCLASS  \
  airwalk_PRIMARY  \
  airwalk_SECONDARY  \
  arm_pose_01  \
  armslayer_ITEM1_crouch_swing  \
  armslayer_ITEM1_swim_swing  \
  armslayer_ITEM1_swing  \
  armslayer_melee_Crouch_swing  \
  armslayer_melee_Swim_swing  \
  armslayer_melee_allclass_Crouch_swing  \
  armslayer_melee_allclass_Swim_swing  \
  armslayer_melee_allclass_swing  \
  armslayer_melee_swing  \
  armslayer_throw_fire  \
  attackcrouch_ITEM1  \
  attackstand_ITEM1  \
  attackswim_ITEM1  \
  bodylayer_ITEM1_crouch_swing  \
  bodylayer_ITEM1_swim_swing  \
  bodylayer_ITEM1_swing  \
  bodylayer_Melee_Crouch_Swing  \
  bodylayer_Melee_Swim_Swing  \
  bodylayer_Melee_Swing  \
  bodylayer_Melee_allclass_Crouch_Swing  \
  bodylayer_Melee_allclass_Swim_Swing  \
  bodylayer_Melee_allclass_Swing  \
  bread_bagged_pose  \
  bread_baguette_pose  \
  bread_burnt_pose  \
  bread_cinnamon_pose  \
  bread_cornbread_pose  \
  bread_crumpet_pose  \
  bread_monster_pose  \
  bread_pretzel_pose  \
  bread_ration_pose  \
  bread_robo_pose  \
  bread_russianblack_pose  \
  bread_shortbread_pose  \
  competitive_loserstate_idle  \
  competitive_winnerstate_idle  \
  crouch_ITEM1  \
  crouch_LOSER  \
  crouch_MELEE  \
  crouch_MELEE_ALLCLASS  \
  crouch_PRIMARY  \
  crouch_SECONDARY  \
  dieviolent  \
  gesture_MELEE_cheer  \
  gesture_MELEE_go  \
  gesture_MELEE_help  \
  gesture_MELEE_positive  \
  gesture_PRIMARY_cheer  \
  gesture_PRIMARY_go  \
  gesture_PRIMARY_help  \
  gesture_PRIMARY_positive  \
  gesture_SECONDARY_cheer  \
  gesture_SECONDARY_go  \
  gesture_SECONDARY_help  \
  gesture_SECONDARY_positive  \
  grapple_arm_pose  \
  grapple_hand_pose  \
  hand_pose_01  \
  hand_pose_02  \
  jumplandPose_ITEM1  \
  jumplandPose_LOSER  \
  jumplandPose_MELEE  \
  jumplandPose_MELEE_ALLCLASS  \
  jumplandPose_PRIMARY  \
  jumplandPose_SECONDARY  \
  jumpland_ITEM1  \
  jumpland_KART  \
  jumpland_LOSER  \
  jumpland_MELEE  \
  jumpland_MELEE_ALLCLASS  \
  jumpland_PRIMARY  \
  jumpland_SECONDARY  \
  kart_dash  \
  kart_idle  \
  kart_impact  \
  kart_impact_big  \
  layer_PASSTIME_throw_begin  \
  layer_PASSTIME_throw_cancel  \
  layer_PASSTIME_throw_end  \
  layer_PASSTIME_throw_middle  \
  layer_PRIMARY_stun_begin  \
  layer_PRIMARY_stun_end  \
  layer_PRIMARY_stun_middle  \
  layer_dieviolent  \
  layer_gesture_MELEE_cheer_armL  \
  layer_gesture_MELEE_go_armL  \
  layer_gesture_MELEE_help_armL  \
  layer_gesture_MELEE_positive_armL  \
  layer_gesture_PRIMARY_cheer_armL  \
  layer_gesture_PRIMARY_cheer_runN_armL  \
  layer_gesture_PRIMARY_go_armL  \
  layer_gesture_PRIMARY_go_runN_armL  \
  layer_gesture_PRIMARY_help_armL  \
  layer_gesture_PRIMARY_help_runN_armL  \
  layer_gesture_PRIMARY_positive_armL  \
  layer_gesture_PRIMARY_positive_runN_armL  \
  layer_gesture_SECONDARY_cheer_armL  \
  layer_gesture_SECONDARY_cheer_runN_armL  \
  layer_gesture_SECONDARY_go_armL  \
  layer_gesture_SECONDARY_go_runN_armL  \
  layer_gesture_SECONDARY_help_armL  \
  layer_gesture_SECONDARY_help_runN_armL  \
  layer_gesture_SECONDARY_positive_armL  \
  layer_gesture_SECONDARY_positive_runN_armL  \
  layer_grapple_SHOOT  \
  layer_placeSapper_ArmL  \
  layer_taunt01  \
  layer_taunt02  \
  layer_taunt03  \
  layer_taunt04  \
  layer_taunt08  \
  layer_taunt09  \
  layer_taunt11_howl  \
  layer_taunt_cyoa_PDA_intro  \
  layer_taunt_cyoa_PDA_outro  \
  layer_taunt_dosido_dance  \
  layer_taunt_dosido_intro  \
  layer_taunt_flip_success_initiator  \
  layer_taunt_flip_success_receiver  \
  layer_taunt_headbutt_start  \
  layer_taunt_headbutt_success  \
  layer_taunt_highfiveSuccess  \
  layer_taunt_highfiveSuccessFull  \
  layer_taunt_laugh  \
  layer_taunt_nuke  \
  layer_taunt_replay  \
  layer_taunt_rps_paper  \
  layer_taunt_rps_paper_lose  \
  layer_taunt_rps_paper_win  \
  layer_taunt_rps_rock  \
  layer_taunt_rps_rock_lose  \
  layer_taunt_rps_rock_win  \
  layer_taunt_rps_scissors  \
  layer_taunt_rps_scissors_lose  \
  layer_taunt_rps_scissors_win  \
  layer_taunt_vehicle_allclass_end  \
  layer_taunt_vehicle_allclass_honk  \
  layer_taunt_vehicle_allclass_spawn  \
  layer_taunt_woohoo  \
  layer_taunt_yeti_prop  \
  layer_taunt_yetipunch  \
  r_handposes  \
  ragdollspawn  \
  saxxy_pose  \
  selectionmenu_anim01  \
  selectionmenu_idle  \
  selectionmenu_startpose  \
  stand_ITEM1  \
  stand_LOSER  \
  stand_MELEE  \
  stand_MELEE_ALLCLASS  \
  stand_PASSTIME  \
  stand_PRIMARY  \
  stand_SECONDARY  \
  taunt01  \
  taunt02  \
  taunt03  \
  taunt04  \
  taunt06  \
  taunt08  \
  taunt09  \
  taunt11_howl  \
  taunt_aerobic_A  \
  taunt_aerobic_A_START  \
  taunt_aerobic_B  \
  taunt_aerobic_B_START  \
  taunt_brutallegend  \
  taunt_brutallegendin  \
  taunt_brutallegendinblend  \
  taunt_brutallegendinterior  \
  taunt_brutallegendout  \
  taunt_brutallegendoutblend  \
  taunt_conga  \
  taunt_cyoa_PDA_idle_A  \
  taunt_cyoa_PDA_intro  \
  taunt_cyoa_PDA_outro  \
  taunt_dosido_dance  \
  taunt_dosido_intro  \
  taunt_flip_start  \
  taunt_flip_success_initiator  \
  taunt_flip_success_receiver  \
  taunt_headbutt_start  \
  taunt_headbutt_success  \
  taunt_highFiveStart  \
  taunt_highFiveStart_idle  \
  taunt_highfiveSuccess  \
  taunt_highfiveSuccessFull  \
  taunt_laugh  \
  taunt_nuke  \
  taunt_replay  \
  taunt_rps_paper  \
  taunt_rps_paper_lose  \
  taunt_rps_paper_win  \
  taunt_rps_rock  \
  taunt_rps_rock_lose  \
  taunt_rps_rock_win  \
  taunt_rps_scissors  \
  taunt_rps_scissors_lose  \
  taunt_rps_scissors_win  \
  taunt_rps_start  \
  taunt_russian  \
  taunt_vehicle_allclass_end  \
  taunt_vehicle_allclass_honk  \
  taunt_vehicle_allclass_start  \
  taunt_vehicle_allclass_start_layer  \
  taunt_woohoo  \
  taunt_yeti  \
  taunt_yeti_layer  \
  taunt_yetipunch  \
  throw_fire

#begin blender_char_egg
  #define BLENDER_PREFIX demo-
  #define EGG_PREFIX demo-
  #define POLY_MODEL zero
  #define CHAR_NAME demo.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[DEMO_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    demo-zero.egg \
    $[matrix anims/demo-,$[DEMO_ANIMS],.egg]

  #define OPTCHAR_OPTS \
    -keepall \
    -flag demo_eye \
    -flag demo_morphs_low \
    -flag demo_morphs_low_lod1 \
    -flag demo_morphs_low_lod2 \
    -flag demo_morphs_low_lod3 \
    -flag demo_morphs_low_lod4 \
    -flag demo_morphs_low_lod5 \
    -flag demo_smiley \
    -flag demo_smiley_lod1 \
    -flag demo_smiley_lod2 \
    -flag demo_smiley_lod3 \
    -flag demo_smiley_lod4 \
    -flag demo_smiley_lod5 \
    -flag grenades_bodygroup \
    -flag grenades_bodygroup_lod1 \
    -flag grenades_bodygroup_lod2 \
    -flag grenades_bodygroup_lod3 \
    -flag grenades_bodygroup_lod4 \
    -flag grenades_bodygroup_lod5 \
    -flag shoes_bodygroup \
    -flag shoes_bodygroup_lod1 \
    -flag shoes_bodygroup_lod2 \
    -flag shoes_bodygroup_lod3 \
    -flag shoes_bodygroup_lod4 \
    -flag shoes_bodygroup_lod5
#end optchar_egg

#begin install_mdl
  #define SOURCES \
    demo.pmdl
#end install_mdl
