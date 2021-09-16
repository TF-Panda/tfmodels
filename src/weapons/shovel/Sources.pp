#define DIR_TYPE models
#define INSTALL_TO models/weapons

#begin install_tex
  #define SOURCES \
    c_shovel.ptex \
    c_shovel_gloss.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    c_shovel.pmat
#end install_mat

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

#begin install_mdl
  #define SOURCES \
    c_shovel.pmdl
#end install_mdl
