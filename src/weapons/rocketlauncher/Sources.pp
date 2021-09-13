#define DIR_TYPE models
#define INSTALL_TO models/weapons

#begin install_tex
  #define SOURCES \
    c_rocketlauncher_metalness.ptex \
    c_rocketlauncher_roughness.ptex \
    c_rocketlauncher.ptex \
    w_rocket01.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    c_rocketlauncher.pmat \
    w_rocket01.pmat
#end install_mat

#define C_ROCKETLAUNCHER_ANIMS \
  idle

#begin blender_char_egg
  #define BLENDER_PREFIX c_rocketlauncher-
  #define EGG_PREFIX c_rocketlauncher-
  #define POLY_MODEL zero
  #define CHAR_NAME c_rocketlauncher.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[C_ROCKETLAUNCHER_ANIMS]
#end blender_char_egg

#begin blender_char_egg
  #define BLENDER_PREFIX w_rocket-
  #define EGG_PREFIX w_rocket-
  #define POLY_MODEL zero
  #define CHAR_NAME w_rocket.qc_skeleton
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES w_rocket-zero.egg
  #define OPTCHAR_OPTS \
    -keepall \
    -flag w_rocket_physics
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    c_rocketlauncher-zero.egg \
    $[matrix anims/c_rocketlauncher-,$[C_ROCKETLAUNCHER_ANIMS],.egg]

  #define OPTCHAR_OPTS \
    -keepall \
    -flag c_rocketlauncher \
    -flag c_rocketlauncher_lod1 \
    -flag c_rocketlauncher_lod2 \
    -flag c_rocketlauncher_lod3 \
    -flag c_rocketlauncher_physics
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
    c_rocketlauncher-zero.egg \
    w_rocket-zero.egg
  #define UNPAL_SOURCES_NC \
    $[matrix c_rocketlauncher-,$[C_ROCKETLAUNCHER_ANIMS],.egg]
#end install_egg

