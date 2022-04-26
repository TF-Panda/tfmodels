//
// Package.pp
//
// This file defines certain configuration variables that are to be
// written into the various make scripts.  It is processed by ppremake
// (along with the Sources.pp files in each of the various
// directories) to generate build scripts appropriate to each
// environment.
//
// This is the package-specific file, which should be at the top of
// every source hierarchy.  It generally gets the ball rolling, and is
// responsible for explicitly including all of the relevent Config.pp
// files.



// What is the name and version of this source tree?
#if $[eq $[PACKAGE],]
  #define PACKAGE tfmodels
  #define VERSION 0.80
#endif


// Where should we find the DIRECT source directory?
#if $[or $[CTPROJS],$[DIRECT]]
  // If we are presently attached, use the environment variable.
  #define DIRECT_SOURCE $[DIRECT]
  #if $[eq $[DIRECT],]
    #error You seem to be attached to some trees, but not DIRECT!
  #endif
#else
  // Otherwise, if we are not attached, we guess that the source is a
  // sibling directory to this source root.
  #define DIRECT_SOURCE $[standardize $[TOPDIR]/../direct]
#endif

// Where should we install TFMODELS?
#if $[TFMODELS_INSTALL]
  #define TFMODELS_INSTALL $[unixfilename $[TFMODELS_INSTALL]]
#elif $[or $[CTPROJS],$[TFMODELS]]
  #define TFMODELS $[unixfilename $[TFMODELS]]
  #define TFMODELS_INSTALL $[TFMODELS]/built
  #if $[eq $[TFMODELS],]
    #error You seem to be attached to some trees, but not TFMODELS!
  #endif
#else
  #defer TFMODELS_INSTALL $[unixfilename $[INSTALL_DIR]]
#endif


// Define the inter-tree dependencies.
#define NEEDS_TREES $[NEEDS_TREES] direct


// Also get the DIRECT Package file and everything that includes.
#if $[not $[isfile $[DIRECT_SOURCE]/Package.pp]]
  #printvar DIRECT_SOURCE
  #error DIRECT source directory not found from ttmodels!  Are you attached properly?
#endif

#include $[DIRECT_SOURCE]/Package.pp

// Define some global variables for this tree.
// NOTE: run maya2egg_server before make
#define MAYA2EGG maya2egg_client
#define MAYA2EGG_OPTS -uo ft -tbnall -nv 70
#define FLT2EGG_OPTS -tbnall -nv 70
#define LWO2EGG_OPTS -tbnall -nv 70
#define SOFT2EGG_OPTS -tbnall -nv 70

// Define a subroutine to simplify exporting character+animation
// egg files.
#defsub tf_char_egg prefix,anims,optchar_opts

#begin blender_char_egg
  #define EGG_PREFIX $[prefix]-
  #define BLENDER_PREFIX $[prefix]-
  #define POLY_MODEL zero
  #define CHAR_NAME $[prefix].qc_skeleton
  #if $[anims]
    #define ANIMS_DIR anims
    #define ANIMS $[anims]
  #endif

#end blender_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[prefix]-zero.egg
  #if $[anims]
    #define SOURCES $[SOURCES] \
      $[matrix anims/$[prefix]-,$[anims],.egg]
  #endif
  #define OPTCHAR_OPTS $[optchar_opts]

#end optchar_egg

#end tf_char_egg
