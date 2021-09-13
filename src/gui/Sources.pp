#define DIR_TYPE models
#define INSTALL_TO models/gui

#begin install_tex
  #define SOURCES \
    title_team_widescreen.ptex \
    background01.ptex background01_widescreen.ptex \
    background02.ptex background02_widescreen.ptex
#end install_tex

#begin install_misc
  #define SOURCES \
    $[if $[WINDOWS_PLATFORM],game.ico] \
    $[if $[OSX_PLATFORM],game.icns] \
    $[if $[UNIX_PLATFORM],game.svg]

#end install_misc

#begin install_egg
  #define UNPAL_SOURCES \
    tf2_logo.egg \
    tf2_logo_2.egg \
    title_team_widescreen.egg
#end install_egg
