#define DIR_TYPE models
#define INSTALL_TO models/weapons

#begin blender_char_egg
  #define BLENDER_PREFIX c_flamethrower-
  #define EGG_PREFIX c_flamethrower-
  #define POLY_MODEL zero
  #define CHAR_NAME c_flamethrower.qc_skeleton
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    c_flamethrower-zero.egg
  #define OPTCHAR_OPTS \
    -keepall \
    -flag c_flamethrower_reference \
    -flag c_flamethrower_reference_lod1 \
    -flag c_flamethrower_reference_lod2 \
    -flag c_flamethrower_reference_lod3 \
    -flag c_flamethrower_reference_lod4 \
    -flag c_flamethrower_physics
#end optchar_egg

#begin install_mdl
  #define SOURCES \
    c_flamethrower.pmdl //\
    //c_flamethrower_pilotlight.pmdl
#end install_mdl
