#!/bin/bash

mkdir build && cd build

cmake ${CMAKE_ARGS} -LAH -G "Ninja" \
  -DCMAKE_PREFIX_PATH="$PREFIX" \
  -DCMAKE_FIND_FRAMEWORK=LAST \
  -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DCMAKE_INSTALL_RPATH="${PREFIX}/lib" \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DCMAKE_BUILD_TYPE="Release"  \
  -DBUILD_SHARED_LIBS=ON \
  -DDLIB_LINK_WITH_SQLITE3=OFF \
  -Dnsllib=nsllib-NOTFOUND \
  ..
cmake --build . --target install
