#define DIR_TYPE models
#define INSTALL_TO models/weapons

#define V_SCATTERGUN_SCOUT_ANIMS \
  draw \
  fire \
  idle \
  ref \
  reload_end \
  reload_loop \
  reload_start

#begin blender_char_egg
  #define BLENDER_PREFIX v_scattergun_scout-
  #define EGG_PREFIX v_scattergun_scout-
  #define POLY_MODEL zero
  #define CHAR_NAME v_scattergun_scout.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_SCATTERGUN_SCOUT_ANIMS]

#end blender_char_egg

#begin blender_char_egg
  #define BLENDER_PREFIX w_scattergun-
  #define EGG_PREFIX w_scattergun-
  #define POLY_MODEL zero
  #define CHAR_NAME w_scattergun.qc_skeleton

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_scattergun_scout-zero.egg \
    $[matrix anims/v_scattergun_scout-,$[V_SCATTERGUN_SCOUT_ANIMS],.egg]

  #define OPTCHAR_OPTS \
    -keepall

#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    w_scattergun-zero.egg

  #define OPTCHAR_OPTS \
    -keepall \
    -flag w_scattergun_physics \
    -flag w_scattergun_reference,w_scattergun_reference_lod1,w_scattergun_reference_lod2,w_scattergun_reference_lod3,w_scattergun_reference_lod4

#end optchar_egg

#begin install_mdl
  #define SOURCES \
    v_scattergun_scout.pmdl \
    w_scattergun.pmdl

#end install_mdl
