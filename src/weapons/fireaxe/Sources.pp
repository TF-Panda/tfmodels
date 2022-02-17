#define DIR_TYPE models
#define INSTALL_TO models/weapons

#begin blender_char_egg
  #define BLENDER_PREFIX w_fireaxe-
  #define EGG_PREFIX w_fireaxe-
  #define POLY_MODEL zero
  #define CHAR_NAME w_fireaxe.qc_skeleton

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES w_fireaxe-zero.egg
  #define OPTCHAR_OPTS \
    -keepall \
    -flag w_fireaxe_reference,w_fireaxe_reference_lod1 \
    -flag w_fireaxe_physics

#end optchar_egg

#define V_FIREAXE_PYRO_ANIMS \
  draw \
  idle \
  ref \
  swing_a \
  swing_b \
  swing_c

#begin blender_char_egg
  #define BLENDER_PREFIX v_fireaxe_pyro-
  #define EGG_PREFIX v_fireaxe_pyro-
  #define POLY_MODEL zero
  #define CHAR_NAME v_fireaxe_pyro.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_FIREAXE_PYRO_ANIMS]

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_fireaxe_pyro-zero.egg \
    $[matrix anims/v_fireaxe_pyro-,$[V_FIREAXE_PYRO_ANIMS],.egg]

#end optchar_egg

#begin install_mdl
  #define SOURCES \
    w_fireaxe.pmdl \
    v_fireaxe_pyro.pmdl
#end install_mdl
