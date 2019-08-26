#!/bin/bash

export LD_LIBRARY_PATH="$BUILD_PREFIX/lib:$PREFIX/lib:$LD_LIBRARY_PATH"
export LD_INCLUDE_PATH="$BUILD_PREFIX/include:$PREFIX/include:$LD_INCLUDE_PATH"
export PKG_CONFIG_PATH="$BUILD_PREFIX/lib/pkgconfig"
libtoolize -vfi
./autogen.sh
./configure --without-x --prefix=${PREFIX} --with-screen=slang
make
make install
