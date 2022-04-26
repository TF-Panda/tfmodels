#define DIR_TYPE models
#define INSTALL_TO models/weapons

#begin blender_char_egg
  #define EGG_PREFIX w_toolbox-
  #define BLENDER_PREFIX w_toolbox-
  #define POLY_MODEL zero
  #define CHAR_NAME w_toolbox.qc_skeleton

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    w_toolbox-zero.egg
  #define OPTCHAR_OPTS \
    -keepall \
    -flag w_toolbox_physics \
    -flag w_toolbox_reference \
    -flag w_toolbox_reference_lod1

#end optchar_egg

#define V_TOOLBOX_ENGINEER_ANIMS \
  draw \
  idle

#begin blender_char_egg
  #define EGG_PREFIX v_toolbox_engineer-
  #define BLENDER_PREFIX v_toolbox_engineer-
  #define POLY_MODEL zero
  #define CHAR_NAME v_toolbox_engineer.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_TOOLBOX_ENGINEER_ANIMS]

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_toolbox_engineer-zero.egg \
    $[matrix anims/v_toolbox_engineer-,$[V_TOOLBOX_ENGINEER_ANIMS],.egg]

#end optchar_egg

#begin install_mdl
  #define SOURCES \
    w_toolbox.pmdl \
    v_toolbox_engineer.pmdl
#end install_mdl
