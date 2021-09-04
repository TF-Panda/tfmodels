#define DIR_TYPE models
#define INSTALL_TO models/char

#begin install_tex
  #define SOURCES \
    demoman_hands.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    demoman_hands.pmat
#end install_mat

#define C_DEMO_ARMS_ANIMS \
  PASSTIME_ball_catch1 \
  PASSTIME_ball_catch2 \
  PASSTIME_ball_idle \
  PASSTIME_ball_pickup \
  PASSTIME_ball_throw_end \
  PASSTIME_ball_throw_loop \
  PASSTIME_ball_throw_start \
  b_draw \
  b_idle \
  b_swing_a \
  b_swing_b \
  b_swing_c \
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
  breadmonster \
  claymore_inspect_end \
  claymore_inspect_idle \
  claymore_inspect_start \
  cm_draw \
  cm_idle \
  cm_swing_a \
  cm_swing_b \
  cm_swing_c \
  g_auto_fire \
  g_draw \
  g_fire \
  g_idle \
  g_reload_end \
  g_reload_loop \
  g_reload_start \
  grapple_draw \
  grapple_fire_idle \
  grapple_fire_start \
  grapple_idle \
  grapple_pull_end \
  grapple_pull_idle \
  grapple_pull_start \
  loch_reload_end \
  loch_reload_loop \
  loch_reload_start \
  melee_allclass_draw \
  melee_allclass_idle \
  melee_allclass_inspect_end \
  melee_allclass_inspect_idle \
  melee_allclass_inspect_start \
  melee_allclass_swing_a \
  melee_allclass_swing_b \
  melee_allclass_swing_c \
  melee_alt1_inspect_end \
  melee_alt1_inspect_idle \
  melee_alt1_inspect_start \
  melee_inspect_end \
  melee_inspect_idle \
  melee_inspect_start \
  primary_alt1_inspect_end \
  primary_alt1_inspect_idle \
  primary_alt1_inspect_start \
  primary_inspect_end \
  primary_inspect_idle \
  primary_inspect_start \
  saxxy_pose \
  sb_autofire \
  sb_draw \
  sb_fire \
  sb_idle \
  sb_reload_end \
  sb_reload_loop \
  sb_reload_start \
  secondary_inspect_end \
  secondary_inspect_idle \
  secondary_inspect_start \
  spell_draw \
  spell_fire \
  throw_draw \
  throw_fire \
  throw_idle

#begin blender_char_egg
  #define BLENDER_PREFIX c_demo_arms-
  #define EGG_PREFIX c_demo_arms-
  #define POLY_MODEL zero
  #define CHAR_NAME c_demo_arms.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[C_DEMO_ARMS_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    c_demo_arms-zero.egg \
    $[matrix anims/c_demo_arms-,$[C_DEMO_ARMS_ANIMS],.egg]

  #define OPTCHAR_OPTS \
    -keepall
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    c_demo_arms-zero.egg
  #define SOURCES_NC \
    $[matrix c_demo_arms-,$[C_DEMO_ARMS_ANIMS],.egg]
#end install_egg
