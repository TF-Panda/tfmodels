#define DIR_TYPE models
#define INSTALL_TO models/char

#define C_HEAVY_ARMS_ANIMS \
  Alt1_inspect_end \
  Alt1_inspect_idle \
  Alt1_inspect_start \
  Alt2_inspect_end \
  Alt2_inspect_idle \
  Alt2_inspect_start \
  Alt3_inspect_end \
  Alt3_inspect_idle \
  Alt3_inspect_start \
  PASSTIME_ball_catch1 \
  PASSTIME_ball_catch2 \
  PASSTIME_ball_idle \
  PASSTIME_ball_pickup \
  PASSTIME_ball_throw_end \
  PASSTIME_ball_throw_loop \
  PASSTIME_ball_throw_start \
  bg_draw \
  bg_idle \
  bg_metal_draw \
  bg_swing_crit \
  bg_swing_left \
  bg_swing_right \
  bread_bagged_pose \
  bread_baguette_pose \
  bread_burnt_pose \
  bread_cinnamon_pose \
  bread_cornbread_pose \
  bread_crumpet_pose \
  bread_pretzel_pose \
  bread_ration_pose \
  bread_robo_pose \
  bread_russianblack_pose \
  bread_shortbread_pose \
  breadglove_draw_A \
  breadglove_draw_B \
  breadglove_idle_A \
  breadglove_idle_B \
  breadglove_idle_C \
  breadglove_swing_crit \
  breadglove_swing_left \
  breadglove_swing_right \
  breadmonster \
  draw \
  f_draw \
  f_idle \
  f_swing_crit \
  f_swing_left \
  f_swing_right \
  fire \
  grapple_draw \
  grapple_fire_idle \
  grapple_fire_start \
  grapple_idle \
  grapple_pull_end \
  grapple_pull_idle \
  grapple_pull_start \
  idle \
  item1_inspect_end \
  item1_inspect_idle \
  item1_inspect_start \
  m_draw \
  m_fire \
  m_idle \
  m_spool_down \
  m_spool_idle \
  m_spool_up \
  melee_allclass_draw \
  melee_allclass_idle \
  melee_allclass_inspect_end \
  melee_allclass_inspect_idle \
  melee_allclass_inspect_start \
  melee_allclass_swing \
  melee_inspect_end \
  melee_inspect_idle \
  melee_inspect_start \
  primary_inspect_end \
  primary_inspect_idle \
  primary_inspect_start \
  reload_end \
  reload_loop \
  reload_start \
  saxxy_pose \
  secondary_inspect_end \
  secondary_inspect_idle \
  secondary_inspect_start \
  spell_draw \
  spell_fire \
  sw_draw \
  sw_idle \
  throw_draw \
  throw_fire \
  throw_idle

#begin blender_char_egg
  #define BLENDER_PREFIX c_heavy_arms-
  #define EGG_PREFIX c_heavy_arms-
  #define POLY_MODEL zero
  #define CHAR_NAME c_heavy_arms.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[C_HEAVY_ARMS_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    c_heavy_arms-zero.egg \
    $[matrix anims/c_heavy_arms-,$[C_HEAVY_ARMS_ANIMS],.egg]

  #define OPTCHAR_OPTS \
    -keepall
#end optchar_egg

#begin install_mdl
  #define SOURCES \
    c_heavy_arms.pmdl

#end install_mdl
