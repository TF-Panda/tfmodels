#define DIR_TYPE models
#define INSTALL_TO models/weapons/wrench

#begin install_tex
  #define SOURCES \
    v_wrench_sheet.ptex
#end install_tex

#begin install_mat
  #define SOURCES \
    v_wrench_sheet.pmat
#end install_mat

#begin blender_egg
  #define SOURCES \
    w_wrench.blend
#end blender_egg

#begin install_egg
  #define SOURCES \
    w_wrench.egg
#end install_egg
