#define DIR_TYPE models
#define INSTALL_TO models/buildables

#define sentry1_heavy_anims \
  a_yaw_right \
  a_pitch_down \
  fire \
  a_yaw_neutral \
  a_yaw_back \
  a_pitch_up \
  aim_nat \
  idle_off \
  ref \
  a_yaw_left \
  a_yaw_forward \
  disabled \
  build \
  a_pitch_neutral \
  a_pitch_center
#define sentry1_heavy_optchar_opts \
  -keepall \
  -flag Sentry1_arms_reference \
  -flag Sentry1_reference \
  -flag mini_sentry_light \
  -flag Sentry1_toolbox_reference \
    \
  -flag Sentry1_arms_reference_lod1 \
  -flag Sentry1_reference_lod1 \
  -flag mini_sentry_light_lod1 \
  -flag Sentry1_toolbox_reference_lod1 \
    \
  -flag Sentry1_arms_reference_lod2 \
  -flag Sentry1_reference_lod2 \
  -flag mini_sentry_light_lod2 \
  -flag Sentry1_toolbox_reference_lod2 \
  \
  -flag Sentry1_arms_reference_lod3 \
  -flag Sentry1_reference_lod3 \
  -flag mini_sentry_light_lod3 \
  -flag Sentry1_toolbox_reference_lod3 \
  \
  -flag Sentry1_arms_reference_lod4 \
  -flag Sentry1_reference_lod4 \
  -flag mini_sentry_light_lod4 \
  -flag Sentry1_toolbox_reference_lod4

#begin blender_char_egg
  #define EGG_PREFIX sentry1-
  #define BLENDER_PREFIX sentry1_heavy-
  #define POLY_MODEL zero
  #define CHAR_NAME sentry1_heavy.qc_skeleton
  #define ANIMS_DIR anims
  #define ANIMS $[sentry1_heavy_anims]

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    sentry1-zero.egg \
    $[matrix anims/sentry1-,$[sentry1_heavy_anims],.egg]
  #define OPTCHAR_OPTS \
    $[sentry1_heavy_optchar_opts]

#end optchar_egg

// Blueprint model.
#call tf_char_egg sentry1_blueprint,idle reject,

// Sentry1 gibs.
#call tf_char_egg sentry1_gib1,,-flag sentry1_gib1_physics
#call tf_char_egg sentry1_gib2,,-flag sentry1_gib2_physics
#call tf_char_egg sentry1_gib3,,-flag sentry1_gib3_physics
#call tf_char_egg sentry1_gib4,,-flag sentry1_gib4_physics

#define sentry2_heavy_anims \
  a_pitch_center \
  a_pitch_down \
  a_pitch_neutral \
  a_pitch_up \
  a_yaw_back \
  a_yaw_forward \
  a_yaw_left \
  a_yaw_neutral \
  a_yaw_right \
  aim_nat \
  upgrade
#define sentry2_heavy_optchar_opts \
  -keepall \
  -flag sentry2_laser \
  -flag sentry2_laser_lod1 \
  -flag sentry2_reference \
  -flag sentry2_reference_lod1 \
  -flag sentry2_s1_casing \
  -flag sentry2_s1_casing_lod1 \
  -flag sentry2_s1_muzzle \
  -flag sentry2_s1_muzzle_lod1 \
  -flag sentry2_s2_casing \
  -flag sentry2_s2_casing_lod1 \
  -flag sentry2_s2_guns \
  -flag sentry2_s2_guns_lod1 \
  -flag sentry2_s2_lid \
  -flag sentry2_s2_lid_lod1
#call tf_char_egg sentry2_heavy,$[sentry2_heavy_anims],$[sentry2_heavy_optchar_opts]

#define sentry2_anims \
  a_idle \
  a_pitch_center \
  a_pitch_down \
  a_pitch_neutral \
  a_pitch_up \
  a_yaw_back \
  a_yaw_forward \
  a_yaw_left \
  a_yaw_neutral \
  a_yaw_right \
  aim_nat \
  fire \
  fire_empty \
  idle_off \
  refpose
#define sentry2_optchar_opts \
  -keepall \
  -flag sentry2_laser \
  -flag sentry2_laser_lod1 \
  -flag sentry2_laser_lod2 \
  -flag sentry2_laser_lod3 \
  -flag sentry2_laser_lod4 \
  -flag sentry2_optimized_reference \
  -flag sentry2_optimized_reference_lod1 \
  -flag sentry2_optimized_reference_lod2 \
  -flag sentry2_optimized_reference_lod3 \
  -flag sentry2_optimized_reference_lod4
#call tf_char_egg sentry2,$[sentry2_anims],$[sentry2_optchar_opts]

///////////////////////////////////////////////////////////////////////////////
//
// DISPENSER
//
///////////////////////////////////////////////////////////////////////////////

// Blueprint model.
#call tf_char_egg dispenser_blueprint,idle reject,

// "Heavy" model.  Used for the building animation.
#define dispenser_optchar_opts \
  -flag dispenser_toolbox,dispenser_toolbox_lod1,dispenser_toolbox_lod2 \
  -flag dispenser_toolbox_lod3,dispenser_toolbox_lod4 \
  -flag dispenser_toolbox_junk,dispenser_toolbox_junk_lod1,dispenser_toolbox_junk_lod2 \
  -flag dispenser_toolbox_junk_lod3,dispenser_toolbox_junk_lod4
#call tf_char_egg dispenser,a_idle a_build_1,$[dispenser_optchar_opts]

// "Light" model.  Used after building animation.
#define dispenser_light_optchar_opts \
  -flag dispenser_light_reference,dispenser_light_reference_lod1 \
  -flag dispenser_light_reference_lod2,dispenser_light_reference_lod3 \
  -flag dispenser_light_reference_lod4
#call tf_char_egg dispenser_light,a_idle,$[dispenser_light_optchar_opts]

// Dispenser gibs.
#call tf_char_egg dispenser_gib1,,-flag dispenser_gib1_physics
#call tf_char_egg dispenser_gib2,,-flag dispenser_gib2_physics
#call tf_char_egg dispenser_gib3,,-flag dispenser_gib3_physics
#call tf_char_egg dispenser_gib4,,-flag dispenser_gib4_physics
#call tf_char_egg dispenser_gib5,,-flag dispenser_gib5_physics

///////////////////////////////////////////////////////////////////////////////
//
// TELEPORTER
//
///////////////////////////////////////////////////////////////////////////////

// Blueprints.
#call tf_char_egg teleporter_blueprint_enter,enter_idle enter_reject,
#call tf_char_egg teleporter_blueprint_exit,exit_idle exit_reject,

// Model for when teleporter is constructing.
#define teleporter_optchar_opts \
  -flag teleporter_reference,teleporter_reference_lod1,teleporter_reference_lod2
#call tf_char_egg teleporter,build idle,$[teleporter_optchar_opts]

// Model for when teleporter is active.
#define teleporter_light_anims \
  a_arrowEnd a_arrowMid0 a_arrowMid1 \
  a_arrowMid2 a_arrowStart a_running
#define teleporter_light_optchar_opts \
  -flag teleporter_arrow,teleporter_arrow_lod1,teleporter_arrow_lod2 \
  -flag teleporter_light_reference,teleporter_light_reference_lod1,teleporter_light_reference_lod2 \
  -flag teleporter_spin_blur,teleporter_spin_blur_lod1,teleporter_spin_blur_lod2
#call tf_char_egg teleporter_light,$[teleporter_light_anims],$[teleporter_light_optchar_opts]

// Teleporter gibs.
#call tf_char_egg teleporter_gib1,,-flag teleporter_gib1_physics
#call tf_char_egg teleporter_gib2,,-flag teleporter_gib2_physics
#call tf_char_egg teleporter_gib3,,-flag teleporter_gib3_physics
#call tf_char_egg teleporter_gib4,,-flag teleporter_gib4_physics

///////////////////////////////////////////////////////////////////////////////
//
// Bam file installation.
//
///////////////////////////////////////////////////////////////////////////////
#begin install_mdl
  #define SOURCES \
    sentry1.pmdl \
    sentry1_gib1.pmdl \
    sentry1_gib2.pmdl \
    sentry1_gib3.pmdl \
    sentry1_gib4.pmdl \
    sentry1_blueprint.pmdl \
    sentry2.pmdl \
    sentry2_heavy.pmdl \
    dispenser.pmdl \
    dispenser_light.pmdl \
    dispenser_blueprint.pmdl \
    dispenser_gib1.pmdl dispenser_gib2.pmdl \
    dispenser_gib3.pmdl dispenser_gib4.pmdl \
    dispenser_gib5.pmdl \
    teleporter.pmdl \
    teleporter_light.pmdl \
    teleporter_blueprint_enter.pmdl \
    teleporter_blueprint_exit.pmdl \
    teleporter_gib1.pmdl teleporter_gib2.pmdl \
    teleporter_gib3.pmdl teleporter_gib4.pmdl

#end install_mdl
