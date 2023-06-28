
mkdir build && cd build

cmake -LAH -G "Ninja"                         ^
    -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%"    ^
    -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
    -DCMAKE_BUILD_TYPE=Release                ^
    -DBUILD_SHARED_LIBS=OFF                   ^
    -DDLIB_NO_GUI_SUPPORT=ON ^
    -DDLIB_GIF_SUPPORT=OFF ^
    -DDLIB_LINK_WITH_SQLITE3=OFF ^
    -DDLIB_WEBP_SUPPORT=OFF ^
    -DDLIB_USE_FFMPEG=OFF ^
    -DDLIB_USE_CUDA=OFF ^
    ..
if errorlevel 1 exit 1

cmake --build . --target install
if errorlevel 1 exit 1
