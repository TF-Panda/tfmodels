#define DIR_TYPE models
#define INSTALL_TO models/weapons

#define V_FIST_HEAVY_ANIMS \
  draw \
  idle \
  swing_crit \
  swing_left \
  swing_right

#begin blender_char_egg
  #define BLENDER_PREFIX v_fist_heavy-
  #define EGG_PREFIX v_fist_heavy-
  #define POLY_MODEL zero
  #define CHAR_NAME v_fist_heavy.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_FIST_HEAVY_ANIMS]

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_fist_heavy-zero.egg \
    $[matrix anims/v_fist_heavy-,$[V_FIST_HEAVY_ANIMS],.egg]

#end optchar_egg

#begin install_mdl
  #define SOURCES \
    v_fist_heavy.pmdl

#end install_mdl
