# This is just an example to get you started. A typical binary package
# uses this file as the main entry point of the application.

import monocypher
import puppy
import zippy

import puppy

echo fetch(
  "http://neverssl.com/",
  headers = @[("User-Agent", "Nim 1.0")]
)
when isMainModule:
  
  echo("Hello, World!")
