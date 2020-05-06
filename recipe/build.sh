#!/bin/bash

mkdir build && cd build

cmake -LAH \
  -DCMAKE_PREFIX_PATH="$PREFIX" \
  -DCMAKE_FIND_FRAMEWORK=LAST \
  -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DCMAKE_BUILD_TYPE="Release"  \
  -DBUILD_SHARED_LIBS=ON \
  -Dnsllib=nsllib-NOTFOUND \
  ..
make install -j$CPU_COUNT
