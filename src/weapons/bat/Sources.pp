#define DIR_TYPE models
#define INSTALL_TO models/weapons

#define V_BAT_SCOUT_ANIMS \
  draw \
  idle \
  swingMiss_a \
  swingMiss_b \
  swingMiss_crit

#begin blender_char_egg
  #define BLENDER_PREFIX v_bat_scout-
  #define EGG_PREFIX v_bat_scout-
  #define POLY_MODEL zero
  #define CHAR_NAME v_bat_scout.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_BAT_SCOUT_ANIMS]

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_bat_scout-zero.egg \
    $[matrix anims/v_bat_scout-,$[V_BAT_SCOUT_ANIMS],.egg]

#end optchar_egg

#begin blender_char_egg
  #define BLENDER_PREFIX c_bat-
  #define EGG_PREFIX c_bat-
  #define POLY_MODEL zero
  #define CHAR_NAME c_bat.qc_skeleton

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    c_bat-zero.egg

  #define OPTCHAR_OPTS \
    -keepall \
    -flag c_bat_physics \
    -flag c_bat_reference \
    -flag c_bat_reference_lod1 \
    -flag c_bat_reference_lod2

#end optchar_egg

#begin install_mdl
  #define SOURCES \
    c_bat.pmdl \
    v_bat_scout.pmdl
#end install_mdl
