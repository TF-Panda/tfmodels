#define DIR_TYPE models
#define INSTALL_TO models/weapons

//
// C_SHOTGUN
//

#begin blender_char_egg
  #define BLENDER_PREFIX c_shotgun-
  #define EGG_PREFIX c_shotgun-
  #define POLY_MODEL zero
  #define CHAR_NAME c_shotgun.qc_skeleton
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    c_shotgun-zero.egg

  #define OPTCHAR_OPTS \
    -keepall \
    -flag c_shotgun_reference \
    -flag c_shotgun_reference_lod1 \
    -flag c_shotgun_reference_lod2 \
    -flag c_shotgun_physics
#end optchar_egg

//
// V_SHOTGUN_ENGINEER
//

#define V_SHOTGUN_ENGINEER_ANIMS \
  draw \
  fire \
  idle \
  reload_end \
  reload_loop \
  reload_start

#begin blender_char_egg
  #define BLENDER_PREFIX v_shotgun_engineer-
  #define EGG_PREFIX v_shotgun_engineer-
  #define POLY_MODEL zero
  #define CHAR_NAME v_shotgun_engineer.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_SHOTGUN_ENGINEER_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_shotgun_engineer-zero.egg \
    $[matrix anims/v_shotgun_engineer-,$[V_SHOTGUN_ENGINEER_ANIMS],.egg]

#end optchar_egg

//
// V_SHOTGUN_SOLDIER
//

#define V_SHOTGUN_SOLDIER_ANIMS \
  draw \
  fire \
  idle \
  reload_end \
  reload_loop \
  reload_start

#begin blender_char_egg
  #define BLENDER_PREFIX v_shotgun_soldier-
  #define EGG_PREFIX v_shotgun_soldier-
  #define POLY_MODEL zero
  #define CHAR_NAME v_shotgun_soldier.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_SHOTGUN_SOLDIER_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_shotgun_soldier-zero.egg \
    $[matrix anims/v_shotgun_soldier-,$[V_SHOTGUN_SOLDIER_ANIMS],.egg]

#end optchar_egg

//
// V_SHOTGUN_HEAVY
//

#define V_SHOTGUN_HEAVY_ANIMS \
  draw \
  fire \
  idle \
  reload_end \
  reload_loop \
  reload_start

#begin blender_char_egg
  #define BLENDER_PREFIX v_shotgun_heavy-
  #define EGG_PREFIX v_shotgun_heavy-
  #define POLY_MODEL zero
  #define CHAR_NAME v_shotgun_heavy.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_SHOTGUN_HEAVY_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_shotgun_heavy-zero.egg \
    $[matrix anims/v_shotgun_heavy-,$[V_SHOTGUN_HEAVY_ANIMS],.egg]

#end optchar_egg

//
// V_SHOTGUN_PYRO
//

#define V_SHOTGUN_PYRO_ANIMS \
  draw \
  fire \
  idle \
  reload_end \
  reload_loop \
  reload_start

#begin blender_char_egg
  #define BLENDER_PREFIX v_shotgun_pyro-
  #define EGG_PREFIX v_shotgun_pyro-
  #define POLY_MODEL zero
  #define CHAR_NAME v_shotgun_pyro.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[V_SHOTGUN_PYRO_ANIMS]
#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    v_shotgun_pyro-zero.egg \
    $[matrix anims/v_shotgun_pyro-,$[V_SHOTGUN_PYRO_ANIMS],.egg]

#end optchar_egg

//
// Bam file compilation/installation.
//
#begin install_mdl
  #define SOURCES \
    c_shotgun.pmdl \
    v_shotgun_engineer.pmdl \
    v_shotgun_soldier.pmdl \
    v_shotgun_heavy.pmdl \
    v_shotgun_pyro.pmdl
#end install_mdl
