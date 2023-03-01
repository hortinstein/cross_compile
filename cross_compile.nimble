# Package

version       = "0.1.0"
author        = "akex"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"

binDir        = "bin"
bin           = @["cross_compile"]


# Dependencies

requires "nim >= 1.6.10"
# Dependencies
requires "enkodo >= 0.1.5"
requires "flatty"
requires "jsutils"
requires "monocypher"
requires "oshostname >= 0.1.0"
requires "print"
requires "printdebug"
requires "psutil"
requires "puppy"
requires "urlly"

task buildwin, "Build the windows executable":
  exec "nimble c --out:bin/cross_win -d:mingw src/cross_compile.nim"
task buildmobile, "Build the android executable":
  exec "nim c --out:bin/cross_arm --cpu:arm64 src/cross_compile.nim"
