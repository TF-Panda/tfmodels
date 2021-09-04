#define DIR_TYPE models
#define INSTALL_TO models/weapons

#begin install_tex
  #define SOURCES \
    v_bottle.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    v_bottle.pmat
#end install_mat

#begin blender_char_egg
  #define BLENDER_PREFIX c_bottle-
  #define EGG_PREFIX c_bottle-
  #define POLY_MODEL zero
  #define CHAR_NAME c_bottle.qc_skeleton
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES c_bottle-zero.egg
  #define OPTCHAR_OPTS \
    -keepall \
    -flag c_bottle \
    -flag c_bottle_lod1 \
    -flag c_bottle_lod2 \
    -flag c_bottle_lod3 \
    -flag c_bottle_broken \
    -flag c_bottle_broken_lod1 \
    -flag c_bottle_broken_lod2 \
    -flag c_bottle_broken_lod3 \
    -flag c_bottle_physics
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    c_bottle-zero.egg
#end install_egg

