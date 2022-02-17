#define DIR_TYPE models
#define INSTALL_TO models/weapons

#begin blender_char_egg
  #define BLENDER_PREFIX c_rocketlauncher-
  #define EGG_PREFIX c_rocketlauncher-
  #define POLY_MODEL zero
  #define CHAR_NAME c_rocketlauncher.qc_skeleton
#end blender_char_egg

#define V_ROCKETLAUNCHER_SOLDIER_ANIMS \
  draw \
  fire \
  idle \
  ref \
  reload_finish \
  reload_loop \
  reload_start

#begin blender_char_egg
  #define BLENDER_PREFIX v_rocketlauncher_soldier-
  #define EGG_PREFIX v_rocketlauncher_soldier-
  #define POLY_MODEL zero
  #define CHAR_NAME v_rocketlauncher_soldier.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_ROCKETLAUNCHER_SOLDIER_ANIMS]
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

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_rocketlauncher_soldier-zero.egg \
    $[matrix anims/v_rocketlauncher_soldier-,$[V_ROCKETLAUNCHER_SOLDIER_ANIMS],.egg]

#end optchar_egg

#begin install_mdl
  #define SOURCES \
    c_rocketlauncher.pmdl \
    w_rocket.pmdl \
    v_rocketlauncher_soldier.pmdl
#end install_mdl
