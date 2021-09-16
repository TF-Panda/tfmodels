#define DIR_TYPE models
#define INSTALL_TO models/char

#begin install_tex
  #define SOURCES \
    engineer_hands_lightwarp.ptex engineer_handl.ptex \
    engineer_handr_red.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    engineer_handL.pmat engineer_handR_red.pmat
#end install_mat

#define C_ENGINEER_ARMS_ANIMS \
  PASSTIME_ball_catch1 \
  PASSTIME_ball_catch2 \
  PASSTIME_ball_idle \
  PASSTIME_ball_pickup \
  PASSTIME_ball_throw_end \
  PASSTIME_ball_throw_loop \
  PASSTIME_ball_throw_start \
  bld_draw \
  bld_idle \
  box_draw \
  box_idle \
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
  fj_draw \
  fj_fire \
  fj_fire_alt \
  fj_idle \
  fj_reload_end \
  fj_reload_loop \
  fj_reload_start \
  grapple_draw \
  grapple_fire_idle \
  grapple_fire_start \
  grapple_idle \
  grapple_pull_end \
  grapple_pull_idle \
  grapple_pull_start \
  gun_draw \
  gun_idle \
  gun_idle_rare \
  gun_swing_B \
  gun_swing_a \
  item1_inspect_end \
  item1_inspect_idle \
  item1_inspect_start \
  item2_inspect_end \
  item2_inspect_idle \
  item2_inspect_start \
  melee_allclass_draw \
  melee_allclass_idle \
  melee_allclass_inspect_end \
  melee_allclass_inspect_idle \
  melee_allclass_inspect_start \
  melee_allclass_swing \
  melee_inspect_end \
  melee_inspect_idle \
  melee_inspect_start \
  pda_draw \
  pda_idle \
  pdq_draw \
  pdq_idle_tap \
  pdq_swing_a \
  pdq_swing_b \
  pdq_swing_c \
  pomson_draw \
  pomson_fire \
  pomson_idle \
  pomson_reload_end \
  pomson_reload_loop \
  pomson_reload_start \
  primary_alt1_inspect_end \
  primary_alt1_inspect_idle \
  primary_alt1_inspect_start \
  primary_inspect_end \
  primary_inspect_idle \
  primary_inspect_start \
  pstl_draw \
  pstl_fire \
  pstl_idle \
  pstl_reload \
  revolver_draw \
  revolver_fire \
  revolver_idle \
  revolver_reload \
  saxxy_pose \
  secondary_alt1_inspect_end \
  secondary_alt1_inspect_idle \
  secondary_alt1_inspect_start \
  secondary_alt2_inspect_end \
  secondary_alt2_inspect_idle \
  secondary_alt2_inspect_start \
  secondary_inspect_end \
  secondary_inspect_idle \
  secondary_inspect_start \
  spell_draw \
  spell_fire \
  spk_draw \
  spk_idle_tap \
  spk_swing_a \
  spk_swing_b \
  spk_swing_c \
  throw_draw \
  throw_fire \
  throw_idle \
  wgl_draw \
  wgl_idle \
  wgl_idle_rare \
  wgl_reload_end \
  wgl_reload_loop \
  wgl_reload_start

#begin blender_char_egg
  #define BLENDER_PREFIX c_engineer_arms-
  #define EGG_PREFIX c_engineer_arms-
  #define POLY_MODEL zero
  #define CHAR_NAME c_engineer_arms.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[C_ENGINEER_ARMS_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    c_engineer_arms-zero.egg \
    $[matrix anims/c_engineer_arms-,$[C_ENGINEER_ARMS_ANIMS],.egg]

  #define OPTCHAR_OPTS \
    -keepall
#end optchar_egg

#begin install_mdl
  #define SOURCES \
    c_engineer_arms.pmdl
#end install_mdl
