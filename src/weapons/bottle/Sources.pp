#define DIR_TYPE models
#define INSTALL_TO models/weapons

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

#define V_BOTTLE_DEMOMAN_ANIMS \
  draw \
  idle \
  swing_a \
  swing_b \
  swing_c

#begin blender_char_egg
  #define BLENDER_PREFIX v_bottle_demoman-
  #define EGG_PREFIX v_bottle_demoman-
  #define POLY_MODEL zero
  #define CHAR_NAME v_bottle_demoman.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_BOTTLE_DEMOMAN_ANIMS]

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_bottle_demoman-zero.egg \
    $[matrix anims/v_bottle_demoman-,$[V_BOTTLE_DEMOMAN_ANIMS],.egg]

#end optchar_egg

#begin install_mdl
  #define SOURCES \
    c_bottle.pmdl \
    v_bottle_demoman.pmdl
#end install_mdl

