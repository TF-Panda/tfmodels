#define DIR_TYPE models
#define INSTALL_TO models/weapons

#begin install_tex
  #define SOURCES \
    c_pistol.ptex \
    c_pistol_gloss.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    c_pistol.pmat
#end install_mat

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

#begin install_mdl
  #define SOURCES \
    c_pistol.pmdl
#end install_mdl
