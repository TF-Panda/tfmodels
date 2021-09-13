#define DIR_TYPE models
#define INSTALL_TO models/buildables

#begin install_tex
  #define SOURCES \
    base1.ptex \
    mini_sentry_blue.ptex \
    mini_sentry_light_blue.ptex \
    mini_sentry_light_red.ptex \
    mini_sentry_light_yellow.ptex \
    mini_sentry_red.ptex \
    sentry1_blue.ptex \
    sentry1_exponent.ptex \
    sentry1_lightwarp.ptex \
    sentry1_normal.ptex \
    sentry1.ptex \
    toolbox_blue.ptex \
    toolbox_red.ptex \
    sentry2.ptex \
    sentry2_blue.ptex \
    sentry1_gibs.ptex \
    sentry1_gibs_blue.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    mini_sentry_blue.pmat \
    mini_sentry_light_blue.pmat \
    mini_sentry_light_red.pmat \
    mini_sentry_red.pmat \
    sentry1_blue.pmat \
    sentry1.pmat \
    toolbox_blue.pmat \
    toolbox_red.pmat \
    Sentry2.pmat \
    sentry2_blue.pmat \
    Sentry1_Gibs.pmat \
    sentry1_gibs_blue.pmat
#end install_mat

#define SENTRY1_ANIMS \
  a_yaw_right \
  a_pitch_down \
  fire \
  a_yaw_neutral \
  a_yaw_back \
  a_pitch_up \
  aim_nat \
  idle_off \
  ref \
  a_yaw_left \
  a_yaw_forward \
  disabled \
  build \
  a_pitch_neutral \
  a_pitch_center

#begin blender_char_egg
  #define EGG_PREFIX sentry1-
  #define BLENDER_PREFIX sentry1_heavy-
  #define CHAR_NAME sentry1_heavy.qc_skeleton
  #define POLY_MODEL zero
  #define ANIMS_DIR anims
  #define ANIMS $[SENTRY1_ANIMS]
#end blender_char_egg

#begin blender_char_egg
  #define EGG_PREFIX sentry1_gib1-
  #define BLENDER_PREFIX sentry1_gib1-
  #define CHAR_NAME sentry1_gib1.qc_skeleton
  #define POLY_MODEL zero
#end blender_char_egg

#begin blender_char_egg
  #define EGG_PREFIX sentry1_gib2-
  #define BLENDER_PREFIX sentry1_gib2-
  #define CHAR_NAME sentry1_gib2.qc_skeleton
  #define POLY_MODEL zero
#end blender_char_egg

#begin blender_char_egg
  #define EGG_PREFIX sentry1_gib3-
  #define BLENDER_PREFIX sentry1_gib3-
  #define CHAR_NAME sentry1_gib3.qc_skeleton
  #define POLY_MODEL zero
#end blender_char_egg

#begin blender_char_egg
  #define EGG_PREFIX sentry1_gib4-
  #define BLENDER_PREFIX sentry1_gib4-
  #define CHAR_NAME sentry1_gib4.qc_skeleton
  #define POLY_MODEL zero
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    sentry1_gib1-zero.egg
  #define OPTCHAR_OPTS \
    -keepall -flag sentry1_gib1_physics
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    sentry1_gib2-zero.egg
  #define OPTCHAR_OPTS \
    -keepall -flag sentry1_gib2_physics
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    sentry1_gib3-zero.egg
  #define OPTCHAR_OPTS \
    -keepall -flag sentry1_gib3_physics
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    sentry1_gib4-zero.egg
  #define OPTCHAR_OPTS \
    -keepall -flag sentry1_gib4_physics
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    sentry1-zero.egg \
    $[matrix anims/sentry1-,$[SENTRY1_ANIMS],.egg]
  #define OPTCHAR_OPTS \
    -keepall \
    -flag Sentry1_arms_reference \
    -flag Sentry1_reference \
    -flag mini_sentry_light \
    -flag Sentry1_toolbox_reference \
      \
    -flag Sentry1_arms_reference_lod1 \
    -flag Sentry1_reference_lod1 \
    -flag mini_sentry_light_lod1 \
    -flag Sentry1_toolbox_reference_lod1 \
     \
    -flag Sentry1_arms_reference_lod2 \
    -flag Sentry1_reference_lod2 \
    -flag mini_sentry_light_lod2 \
    -flag Sentry1_toolbox_reference_lod2 \
    \
    -flag Sentry1_arms_reference_lod3 \
    -flag Sentry1_reference_lod3 \
    -flag mini_sentry_light_lod3 \
    -flag Sentry1_toolbox_reference_lod3 \
    \
    -flag Sentry1_arms_reference_lod4 \
    -flag Sentry1_reference_lod4 \
    -flag mini_sentry_light_lod4 \
    -flag Sentry1_toolbox_reference_lod4 \

#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
    sentry1-zero.egg \
    sentry1_gib1-zero.egg \
    sentry1_gib2-zero.egg \
    sentry1_gib3-zero.egg \
    sentry1_gib4-zero.egg
  #define UNPAL_SOURCES_NC \
    $[matrix sentry1-,$[SENTRY1_ANIMS],.egg]
#end install_egg

#define SENTRY2_HEAVY_ANIMS \
  a_pitch_center \
  a_pitch_down \
  a_pitch_neutral \
  a_pitch_up \
  a_yaw_back \
  a_yaw_forward \
  a_yaw_left \
  a_yaw_neutral \
  a_yaw_right \
  aim_nat \
  upgrade

#begin blender_char_egg
  #define EGG_PREFIX sentry2_heavy-
  #define BLENDER_PREFIX sentry2_heavy-
  #define CHAR_NAME sentry2_heavy.qc_skeleton
  #define POLY_MODEL zero
  #define ANIMS_DIR anims
  #define ANIMS $[SENTRY2_HEAVY_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    sentry2_heavy-zero.egg \
    $[matrix anims/sentry2_heavy-,$[SENTRY2_HEAVY_ANIMS],.egg]
  #define OPTCHAR_OPTS \
    -keepall \
    -flag sentry2_laser \
    -flag sentry2_laser_lod1 \
    -flag sentry2_reference \
    -flag sentry2_reference_lod1 \
    -flag sentry2_s1_casing \
    -flag sentry2_s1_casing_lod1 \
    -flag sentry2_s1_muzzle \
    -flag sentry2_s1_muzzle_lod1 \
    -flag sentry2_s2_casing \
    -flag sentry2_s2_casing_lod1 \
    -flag sentry2_s2_guns \
    -flag sentry2_s2_guns_lod1 \
    -flag sentry2_s2_lid \
    -flag sentry2_s2_lid_lod1
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
    sentry2_heavy-zero.egg
  #define UNPAL_SOURCES_NC \
    $[matrix sentry2_heavy-,$[SENTRY2_HEAVY_ANIMS],.egg]
#end install_egg

#define SENTRY2_ANIMS \
  a_idle \
  a_pitch_center \
  a_pitch_down \
  a_pitch_neutral \
  a_pitch_up \
  a_yaw_back \
  a_yaw_forward \
  a_yaw_left \
  a_yaw_neutral \
  a_yaw_right \
  aim_nat \
  fire \
  fire_empty \
  idle_off \
  refpose

#begin blender_char_egg
  #define EGG_PREFIX sentry2-
  #define BLENDER_PREFIX sentry2-
  #define CHAR_NAME sentry2.qc_skeleton
  #define POLY_MODEL zero
  #define ANIMS_DIR anims
  #define ANIMS $[SENTRY2_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    sentry2-zero.egg \
    $[matrix anims/sentry2-,$[SENTRY2_ANIMS],.egg]
  #define OPTCHAR_OPTS \
    -keepall \
    -flag sentry2_laser \
    -flag sentry2_laser_lod1 \
    -flag sentry2_laser_lod2 \
    -flag sentry2_laser_lod3 \
    -flag sentry2_laser_lod4 \
    -flag sentry2_optimized_reference \
    -flag sentry2_optimized_reference_lod1 \
    -flag sentry2_optimized_reference_lod2 \
    -flag sentry2_optimized_reference_lod3 \
    -flag sentry2_optimized_reference_lod4
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
    sentry2-zero.egg
  #define UNPAL_SOURCES_NC \
    $[matrix sentry2-,$[SENTRY2_ANIMS],.egg]
#end install_egg
