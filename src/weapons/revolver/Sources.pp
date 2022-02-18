#define DIR_TYPE models
#define INSTALL_TO models/weapons

//
// W_REVOLVER
//
#begin blender_char_egg
  #define BLENDER_PREFIX w_revolver-
  #define EGG_PREFIX w_revolver-
  #define POLY_MODEL zero
  #define CHAR_NAME w_revolver.qc_skeleton

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES w_revolver-zero.egg
  #define OPTCHAR_OPTS \
    -keepall \
    -flag w_revolver_reference,w_revolver_reference_lod1,w_revolver_reference_lod2,w_revolver_reference_lod3,w_revolver_reference_lod4 \
    -flag w_revolver_physics

#end optchar_egg

//
// V_REVOLVER_SPY
//
#define V_REVOLVER_SPY_ANIMS \
  draw \
  fire \
  idle \
  reload

#begin blender_char_egg
  #define BLENDER_PREFIX v_revolver_spy-
  #define EGG_PREFIX v_revolver_spy-
  #define POLY_MODEL zero
  #define CHAR_NAME v_revolver_spy.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_REVOLVER_SPY_ANIMS]

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_revolver_spy-zero.egg \
    $[matrix anims/v_revolver_spy-,$[V_REVOLVER_SPY_ANIMS],.egg]

#end optchar_egg

//
// Bam installation.
//
#begin install_mdl
  #define SOURCES \
    w_revolver.pmdl \
    v_revolver_spy.pmdl

#end install_mdl
