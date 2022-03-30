#!/bin/bash

echo "gcc started"


#https://web.archive.org/web/20201007174747/https://stackoverflow.com/questions/54373254/load-dependent-so-from-other-shared-library-via-jni/58842312#58842312
# Shared library
gcc -fPIC -shared -cpp ScienceMode2.cpp serial_linux.cpp -o ./lib/libScienceMode2.so



echo "gcc finished"

echo "Linux64 finished"

