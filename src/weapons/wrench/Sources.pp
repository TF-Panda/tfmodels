#define DIR_TYPE models
#define INSTALL_TO models/weapons

//
// C_WRENCH
//

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

//
// V_WRENCH_ENGINEER
//

#define V_WRENCH_ENGINEER_ANIMS \
  draw \
  idle_tap \
  swing_a \
  swing_b \
  swing_c

#begin blender_char_egg
  #define BLENDER_PREFIX v_wrench_engineer-
  #define EGG_PREFIX v_wrench_engineer-
  #define POLY_MODEL zero
  #define CHAR_NAME v_wrench_engineer.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_WRENCH_ENGINEER_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_wrench_engineer-zero.egg \
    $[matrix anims/v_wrench_engineer-,$[V_WRENCH_ENGINEER_ANIMS],.egg]

#end optchar_egg

//
// Bam file compilation/installation.
//
#begin install_mdl
  #define SOURCES \
    c_wrench.pmdl \
    v_wrench_engineer.pmdl
#end install_mdl
