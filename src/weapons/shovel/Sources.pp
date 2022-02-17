#define DIR_TYPE models
#define INSTALL_TO models/weapons

#begin blender_char_egg
  #define BLENDER_PREFIX c_shovel-
  #define EGG_PREFIX c_shovel-
  #define POLY_MODEL zero
  #define CHAR_NAME c_shovel.qc_skeleton
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    c_shovel-zero.egg
  #define OPTCHAR_OPTS \
    -keepall \
    -flag c_shovel_physics \
    -flag c_shovel_reference \
    -flag c_shovel_reference_lod1 \
    -flag c_shovel_reference_lod2
#end optchar_egg

#define V_SHOVEL_SOLDIER_ANIMS \
  draw \
  idle \
  ref \
  swing_a \
  swing_b \
  swing_c

#begin blender_char_egg
  #define BLENDER_PREFIX v_shovel_soldier-
  #define EGG_PREFIX v_shovel_soldier-
  #define POLY_MODEL zero
  #define CHAR_NAME v_shovel_soldier.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_SHOVEL_SOLDIER_ANIMS]

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_shovel_soldier-zero.egg \
    $[matrix anims/v_shovel_soldier-,$[V_SHOVEL_SOLDIER_ANIMS],.egg]

#end optchar_egg

#begin install_mdl
  #define SOURCES \
    c_shovel.pmdl \
    v_shovel_soldier.pmdl
#end install_mdl
