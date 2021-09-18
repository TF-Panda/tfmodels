#define DIR_TYPE models
#define INSTALL_TO models/weapons

#begin install_tex
  #define SOURCES \
    c_minigun.ptex \
    c_minigun_roughness.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    c_minigun.pmat
#end install_mat

#begin blender_char_egg
  #define BLENDER_PREFIX c_minigun-
  #define EGG_PREFIX c_minigun-
  #define POLY_MODEL zero
  #define CHAR_NAME c_minigun.qc_skeleton
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    c_minigun-zero.egg
  #define OPTCHAR_OPTS \
    -keepall \
    -flag c_minigun \
    -flag c_minigun_lod1 \
    -flag c_minigun_lod2 \
    -flag c_minigun_lod3 \
    -flag c_minigun_lod4 \
    -flag c_minigun_physics
#end optchar_egg

#begin install_mdl
  #define SOURCES \
    c_minigun.pmdl
#end install_mdl
