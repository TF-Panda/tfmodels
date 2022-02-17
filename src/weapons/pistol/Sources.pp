#define DIR_TYPE models
#define INSTALL_TO models/weapons

#begin blender_char_egg
  #define BLENDER_PREFIX c_pistol-
  #define EGG_PREFIX c_pistol-
  #define POLY_MODEL zero
  #define CHAR_NAME c_pistol.qc_skeleton
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    c_pistol-zero.egg
  #define OPTCHAR_OPTS \
    -keepall \
    -flag c_pistol_reference \
    -flag c_pistol_reference_lod1 \
    -flag c_pistol_reference_lod2 \
    -flag c_pistol_physics
#end optchar_egg

//
// V_PISTOL_ENGINEER
//

#define V_PISTOL_ANIMS \
  draw \
  fire \
  idle \
  reload

#begin blender_char_egg
  #define BLENDER_PREFIX v_pistol_engineer-
  #define EGG_PREFIX v_pistol_engineer-
  #define POLY_MODEL zero
  #define CHAR_NAME v_pistol_engineer.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_PISTOL_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_pistol_engineer-zero.egg \
    $[matrix anims/v_pistol_engineer-,$[V_PISTOL_ANIMS],.egg]

#end optchar_egg

//
// V_PISTOL_SCOUT
//

#begin blender_char_egg
  #define BLENDER_PREFIX v_pistol_scout-
  #define EGG_PREFIX v_pistol_scout-
  #define POLY_MODEL zero
  #define CHAR_NAME v_pistol_scout.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_PISTOL_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_pistol_scout-zero.egg \
    $[matrix anims/v_pistol_scout-,$[V_PISTOL_ANIMS],.egg]

#end optchar_egg

#begin install_mdl
  #define SOURCES \
    c_pistol.pmdl \
    v_pistol_engineer.pmdl \
    v_pistol_scout.pmdl
#end install_mdl
