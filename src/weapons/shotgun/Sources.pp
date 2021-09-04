#define DIR_TYPE models
#define INSTALL_TO models/weapons/shotgun

//
// C_SHOTGUN
//

#define C_SHOTGUN_ANIMS idle

#begin install_tex
  #define SOURCES \
    c_shotgun.ptex \
    c_shotgun_metalness.ptex \
    c_shotgun_roughness.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    c_shotgun.pmat
#end install_mat

#begin blender_char_egg
  #define BLENDER_PREFIX c_shotgun-
  #define EGG_PREFIX c_shotgun-
  #define POLY_MODEL zero
  #define CHAR_NAME c_shotgun.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[C_SHOTGUN_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    c_shotgun-zero.egg \
    $[matrix anims/c_shotgun-,$[C_SHOTGUN_ANIMS],.egg]

  #define OPTCHAR_OPTS \
    -keepall \
    -flag c_shotgun_reference \
    -flag c_shotgun_reference_lod1 \
    -flag c_shotgun_reference_lod2 \
    -flag c_shotgun_physics
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    c_shotgun-zero.egg
  #define SOURCES_NC \
    $[matrix c_shotgun-,$[C_SHOTGUN_ANIMS],.egg]
#end install_egg

//
// W_SHOTGUN
//

#define W_SHOTGUN_ANIMS idle

#begin install_tex
  #define SOURCES \
    v_shotgun.ptex \
    v_shotgun_arme.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    w_shotgun.pmat
#end install_mat

#begin blender_char_egg
  #define BLENDER_PREFIX w_shotgun-
  #define EGG_PREFIX w_shotgun-
  #define POLY_MODEL zero
  #define CHAR_NAME w_shotgun.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[W_SHOTGUN_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    w_shotgun-zero.egg \
    $[matrix anims/w_shotgun-,$[W_SHOTGUN_ANIMS],.egg]

  #define OPTCHAR_OPTS \
    -keepall \
    -flag w_shotgun_reference \
    -flag w_shotgun_reference_lod1 \
    -flag w_shotgun_reference_lod2
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    w_shotgun-zero.egg
  #define SOURCES_NC \
    $[matrix w_shotgun-,$[C_SHOTGUN_ANIMS],.egg]
#end install_egg
