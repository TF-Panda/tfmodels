#define DIR_TYPE models
#define INSTALL_TO models/char

#begin install_tex
  #define SOURCES \
    soldier_hands.ptex \
    soldier_hands_roughness.ptex \
    soldier_sleeves_normal.ptex \
    soldier_sleeves_blue.ptex \
    soldier_sleeves_red.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    soldier_hands.pmat \
    soldier_sleeves_red.pmat \
    soldier_sleeves_blue.pmat
#end install_mat

#define C_SOLDIER_ARMS_ANIMS \
  PASSTIME_ball_catch1 \
  PASSTIME_ball_catch2 \
  PASSTIME_ball_idle \
  PASSTIME_ball_pickup \
  PASSTIME_ball_throw_end \
  PASSTIME_ball_throw_loop \
  PASSTIME_ball_throw_start \
  bb_draw \
  bb_fire_blue \
  bb_fire_red \
  bb_idle \
  bet_draw \
  bet_fire \
  bet_idle \
  bet_reload_finish \
  bet_reload_loop \
  bet_reload_start \
  bison_draw \
  bison_fire \
  bison_idle \
  bison_reload_end \
  bison_reload_loop \
  bison_reload_start \
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
  dh_draw \
  dh_fire \
  dh_idle \
  dh_reload_finish \
  dh_reload_finish_alt \
  dh_reload_loop \
  dh_reload_loop_alt \
  dh_reload_start \
  dh_reload_start_alt \
  draw \
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
  item2_inspect_end \
  item2_inspect_idle \
  item2_inspect_start \
  mangler_fire_super \
  mangler_reload_finish \
  mangler_reload_loop \
  mangler_reload_start \
  melee_allclass_draw \
  melee_allclass_idle \
  melee_allclass_inspect_end \
  melee_allclass_inspect_idle \
  melee_allclass_inspect_start \
  melee_allclass_swing \
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
  reload_end \
  reload_loop \
  reload_start \
  s_draw \
  s_idle \
  s_swing_a \
  s_swing_b \
  s_swing_c \
  saxxy_pose \
  secondary_alt1_inspect_end \
  secondary_alt1_inspect_idle \
  secondary_alt1_inspect_start \
  secondary_inspect_end \
  secondary_inspect_idle \
  secondary_inspect_start \
  special_inspect_end \
  special_inspect_idle \
  special_inspect_start \
  spell_draw \
  spell_fire \
  throw_draw \
  throw_fire \
  throw_idle \
  wh_draw \
  wh_fire_blue \
  wh_fire_red \
  wh_idle

#begin blender_char_egg
  #define BLENDER_PREFIX c_soldier_arms-
  #define EGG_PREFIX c_soldier_arms-
  #define POLY_MODEL zero
  #define CHAR_NAME c_soldier_arms.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[C_SOLDIER_ARMS_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    c_soldier_arms-zero.egg \
    $[matrix anims/c_soldier_arms-,$[C_SOLDIER_ARMS_ANIMS],.egg]
  #define OPTCHAR_OPTS \
    -keepall
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
    c_soldier_arms-zero.egg
  #define UNPAL_SOURCES_NC \
    $[matrix c_soldier_arms-,$[C_SOLDIER_ARMS_ANIMS],.egg]
#end install_egg
