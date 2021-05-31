#define DIR_TYPE models
#define INSTALL_TO models/weapons/wrench

//
// C_WRENCH
//

#define C_WRENCH_ANIMS idle

#begin install_tex
  #define SOURCES \
    c_wrench.ptex \
    c_wrench_specular.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    c_wrench.pmat
#end install_mat

#begin blender_char_egg
  #define BLENDER_PREFIX c_wrench-
  #define EGG_PREFIX c_wrench-
  #define POLY_MODEL zero
  #define CHAR_NAME c_wrench.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[C_WRENCH_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    c_wrench-zero.egg \
    $[matrix anims/c_wrench-,$[C_WRENCH_ANIMS],.egg]

  #define OPTCHAR_OPTS \
    -keepall \
    -flag c_wrench_reference \
    -flag c_wrench_reference_lod1 \
    -flag c_wrench_reference_lod2 \
    -flag c_wrench_reference_lod3
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    c_wrench-zero.egg
  #define SOURCES_NC \
    $[matrix c_wrench-,$[C_WRENCH_ANIMS],.egg]
#end install_egg

//
// W_WRENCH
//

#begin install_tex
  #define SOURCES \
    v_wrench_sheet.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    v_wrench_sheet.pmat
#end install_mat

#begin blender_egg
  #define SOURCES \
    w_wrench.blend
#end blender_egg

#begin install_egg
  #define SOURCES \
    w_wrench.egg
#end install_egg
