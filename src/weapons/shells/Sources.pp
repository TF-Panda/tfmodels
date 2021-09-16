#define DIR_TYPE models
#define INSTALL_TO models/weapons

#begin install_tex
  #define SOURCES \
    all_shells.ptex \
    all_shells_normal.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    all_shells.pmat
#end install_mat

#begin blender_egg
  #define SOURCES \
    shell_shotgun.blend
#end blender_egg

#begin install_egg
  #define UNPAL_SOURCES \
    shell_shotgun.egg
#end install_egg
