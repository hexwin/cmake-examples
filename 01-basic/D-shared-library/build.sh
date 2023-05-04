#!/bin/bash

set -e

rm -rf .hmos_build
mkdir .hmos_build
pushd .hmos_build

cmake -DBUILD_SHARED_LIBS=TRUE -DOHMS_CLIB=MUSL -DCMAKE_BUILD_TYPE=MinSizeRel -DCMAKE_TOOLCHAIN_FILE=../hmos.musl.toolchain.cmake ..

echo "cmake start......."
make clean
make -j8

popd
