# this one is important
SET(CMAKE_SYSTEM_NAME Linux)

# specify the cross compiler
SET(CMAKE_C_COMPILER   $ENV{HOME}/arm-buildroot-linux-uclibcgnueabihf_sdk-buildroot/usr/bin/arm-buildroot-linux-uclibcgnueabihf-gcc)
SET(CMAKE_CXX_COMPILER $ENV{HOME}/arm-buildroot-linux-uclibcgnueabihf_sdk-buildroot/usr/bin/arm-buildroot-linux-uclibcgnueabihf-g++)

# where is the target environment 
SET(CMAKE_FIND_ROOT_PATH  $ENV{HOME}/arm-buildroot-linux-uclibcgnueabihf_sdk-buildroot/arm-buildroot-linux-uclibcgnueabihf/sysroot)

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
