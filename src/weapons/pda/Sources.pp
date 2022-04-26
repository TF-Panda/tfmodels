#define DIR_TYPE models
#define INSTALL_TO models/weapons

//
// V_BUILDER_ENGINEER
//

#define V_BUILDER_ENGINEER_ANIMS \
  draw \
  idle

#begin blender_char_egg
  #define EGG_PREFIX v_builder_engineer-
  #define BLENDER_PREFIX v_builder_engineer-
  #define POLY_MODEL zero
  #define CHAR_NAME v_builder_engineer.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_BUILDER_ENGINEER_ANIMS]

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_builder_engineer-zero.egg \
    $[matrix anims/v_builder_engineer-,$[V_BUILDER_ENGINEER_ANIMS],.egg]

#end optchar_egg

//
// W_BUILDER
//

#begin blender_char_egg
  #define EGG_PREFIX w_builder-
  #define BLENDER_PREFIX w_builder-
  #define POLY_MODEL zero
  #define CHAR_NAME w_builder.qc_skeleton

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    w_builder-zero.egg
  #define OPTCHAR_OPTS \
    -keepall \
    -flag w_builder_physics \
    -flag w_builder_reference,w_builder_reference_lod1

#end optchar_egg

//
// V_PDA_ENGINEER
//

#define V_PDA_ENGINEER_ANIMS \
  draw \
  idle

#begin blender_char_egg
  #define EGG_PREFIX v_pda_engineer-
  #define BLENDER_PREFIX v_pda_engineer-
  #define POLY_MODEL zero
  #define CHAR_NAME v_pda_engineer.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_PDA_ENGINEER_ANIMS]

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_pda_engineer-zero.egg \
    $[matrix anims/v_pda_engineer-,$[V_PDA_ENGINEER_ANIMS],.egg]

#end optchar_egg

//
// W_PDA_ENGINEER
//

#begin blender_char_egg
  #define EGG_PREFIX w_pda_engineer-
  #define BLENDER_PREFIX w_pda_engineer-
  #define POLY_MODEL zero
  #define CHAR_NAME w_pda_engineer.qc_skeleton

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    w_pda_engineer-zero.egg
  #define OPTCHAR_OPTS \
    -keepall \
    -flag w_pda_engineer_physics \
    -flag w_PDA_Engineer_reference,w_PDA_Engineer_reference_lod1

#end optchar_egg

//
// Bam file installation.
//

#begin install_mdl
  #define SOURCES \
    w_builder.pmdl \
    w_pda_engineer.pmdl \
    v_builder_engineer.pmdl \
    v_pda_engineer.pmdl
#end install_mdl
