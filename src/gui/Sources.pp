#define DIR_TYPE models
#define INSTALL_TO models/gui

#begin install_misc
  #define SOURCES \
    $[if $[WINDOWS_PLATFORM],game.ico] \
    $[if $[OSX_PLATFORM],game.icns] \
    $[if $[UNIX_PLATFORM],game.svg]

#end install_misc
