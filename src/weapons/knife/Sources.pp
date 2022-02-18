#define DIR_TYPE models
#define INSTALL_TO models/weapons

#begin blender_char_egg
  #define BLENDER_PREFIX w_knife-
  #define EGG_PREFIX w_knife-
  #define POLY_MODEL zero
  #define CHAR_NAME w_knife.qc_skeleton

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES w_knife-zero.egg
  #define OPTCHAR_OPTS \
    -keepall \
    -flag w_knife_reference,w_knife_reference_lod1 \
    -flag w_knife_physics

#end optchar_egg

#define V_KNIFE_SPY_ANIMS \
  backstab \
  backstab_down \
  backstab_idle \
  backstab_up \
  draw \
  idle \
  ref \
  stab_a \
  stab_b \
  stab_c \
  stun

#begin blender_char_egg
  #define BLENDER_PREFIX v_knife_spy-
  #define EGG_PREFIX v_knife_spy-
  #define POLY_MODEL zero
  #define CHAR_NAME v_knife_spy.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_KNIFE_SPY_ANIMS]

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_knife_spy-zero.egg \
    $[matrix anims/v_knife_spy-,$[V_KNIFE_SPY_ANIMS],.egg]

#end optchar_egg

#begin install_mdl
  #define SOURCES \
    w_knife.pmdl \
    v_knife_spy.pmdl

#end install_mdl
