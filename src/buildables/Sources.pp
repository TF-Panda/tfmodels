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
    toolbox_red.ptex
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
    toolbox_red.pmat
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

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    sentry1-zero.egg \
    $[matrix anims/sentry1-,$[SENTRY1_ANIMS],.egg]
  #define OPTCHAR_OPTS \
    -new build_point_0_attach,build_point_0,0,0,0,0,-90,0 \
    -expose build_point_0_attach \
                                 \
    -new laser_origin,turret_back,-4,-2.55,23,-90,0,0 \
    -expose laser \
                  \
    -new siren,turret_back,-1.8,12.5,0.5,87,0,0 \
    -expose siren \
                  \
    -new muzzle,turret_muzzle,0.06,0.01,3.64,0,0,0 \
    -expose muzzle \
                   \
    -new sapper_attach,turret_back,0.01,5.9,0.09,0,19.94,-90 \
    -expose sapper_attach \
                          \
    -expose hose_0_L \
     \
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
  #define SOURCES \
    sentry1-zero.egg
  #define SOURCES_NC \
    $[matrix sentry1-,$[SENTRY1_ANIMS],.egg]
#end install_egg
