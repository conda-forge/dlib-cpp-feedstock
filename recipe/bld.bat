
mkdir build && cd build

cmake -LAH -G"Ninja" ^
    -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%"    ^
    -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
    -DCMAKE_BUILD_TYPE=Release                ^
    -DBUILD_SHARED_LIBS=OFF                   ^
    ..
if errorlevel 1 exit 1

cmake --build . --target install
if errorlevel 1 exit 1
