#define DIR_TYPE models
#define INSTALL_TO models/weapons

//
// C_WRENCH
//

#begin install_tex
  #define SOURCES \
    c_wrench.ptex \
    c_wrench_specular.ptex \
    c_wrench_roughness.ptex
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
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    c_wrench-zero.egg

  #define OPTCHAR_OPTS \
    -keepall \
    -flag c_wrench_reference \
    -flag c_wrench_reference_lod1 \
    -flag c_wrench_reference_lod2 \
    -flag c_wrench_reference_lod3 \
    -flag c_wrench_physics
#end optchar_egg

#begin install_mdl
  #define SOURCES \
    c_wrench.pmdl
#end install_mdl
