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

#begin blender_char_egg
  #define BLENDER_PREFIX c_rocketlauncher-
  #define EGG_PREFIX c_rocketlauncher-
  #define POLY_MODEL zero
  #define CHAR_NAME c_rocketlauncher.qc_skeleton
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
    c_rocketlauncher-zero.egg

  #define OPTCHAR_OPTS \
    -keepall \
    -flag c_rocketlauncher \
    -flag c_rocketlauncher_lod1 \
    -flag c_rocketlauncher_lod2 \
    -flag c_rocketlauncher_lod3 \
    -flag c_rocketlauncher_physics
#end optchar_egg

#begin install_mdl
  #define SOURCES \
    c_rocketlauncher.pmdl \
    w_rocket.pmdl
#end install_mdl
