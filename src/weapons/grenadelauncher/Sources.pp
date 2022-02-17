#define DIR_TYPE models
#define INSTALL_TO models/weapons

#begin blender_char_egg
  #define BLENDER_PREFIX c_grenadelauncher-
  #define EGG_PREFIX c_grenadelauncher-
  #define POLY_MODEL zero
  #define CHAR_NAME c_grenadelauncher.qc_skeleton
#end blender_char_egg

#begin blender_char_egg
  #define BLENDER_PREFIX w_grenade_grenadelauncher
  #define EGG_PREFIX w_grenade_grenadelauncher
  #define POLY_MODEL
  #define CHAR_NAME w_grenade_grenadelauncher.qc_skeleton
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    c_grenadelauncher-zero.egg
  #define OPTCHAR_OPTS \
    -keepall \
    -flag c_grenadelauncher \
    -flag c_grenadelauncher_lod1 \
    -flag c_grenadelauncher_lod2 \
    -flag c_grenadelauncher_lod3 \
    -flag grenade_bodygroup \
    -flag grenade_bodygroup_lod1 \
    -flag grenade_bodygroup_lod2 \
    -flag grenade_bodygroup_lod3 \
    -flag c_grenadelauncher_physics
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    w_grenade_grenadelauncher.egg
  #define OPTCHAR_OPTS \
    -keepall \
    -flag w_grenade_grenadelauncher_reference \
    -flag w_grenade_grenadelauncher_physics
#end optchar_egg

#begin install_mdl
  #define SOURCES \
    c_grenadelauncher.pmdl \
    w_grenade_grenadelauncher.pmdl
#end install_mdl
