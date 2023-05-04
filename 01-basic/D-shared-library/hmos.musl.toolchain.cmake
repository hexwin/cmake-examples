##set(CMAKE_C_COMPILER "$ENV{HMOS_CLANG}/bin/clang")
##set(CMAKE_CXX_COMPILER "$ENV{HMOS_CLANG}/bin/clang++")

set(HMOS_CLANG "/Users/xwhe/Library/OpenHarmony/Sdk/9/native/llvm")
set(HMOS_TOOLCHAIN "/Users/xwhe/Library/OpenHarmony/Sdk/9/native/sysroot/")

message(STATUS "start make ----------> " ${HMOS_CLANG})

set(CMAKE_C_COMPILER "${HMOS_CLANG}/bin/clang")
set(CMAKE_CXX_COMPILER "${HMOS_CLANG}/bin/clang++")

set(CMAKE_CROSSCOMPILING TRUE)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_CXX_COMPILER_ID Clang)
set(CMAKE_TOOLCHAIN_PREFIX llvm-)
set(CMAKE_INSTALL_PREFIX output)
set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_CXX_COMPILER_WORKS 1)


set(TOOLCHAIN_FLAGS "--target=aarch64-linux-ohos -march=armv8 --sysroot=${HMOS_TOOLCHAIN} -Wno-pointer-sign")
set(CMAKE_CXX_FLAGS ${TOOLCHAIN_FLAGS})
set(CMAKE_C_FLAGS ${TOOLCHAIN_FLAGS})
set(CMAKE_CXX_LINE_FLAGS ${TOOLCHAIN_FLAGS})
set(CMAKE_C_LINK_FLAGS ${TOOLCHAIN_FLAGS})

