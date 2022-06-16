cmake_minimum_required(VERSION 2.8.9)
set(COMPONENT_NAME preemptrt-gpiotest)  #set the name of the binary

project(${COMPONENT_NAME})
file(GLOB SOURCES "*.c")
#set(CMAKE_EXE_LINKER_FLAGS -static)
set(CMAKE_CXX_FLAGS_RELEASE "-O0")

find_library(GPIOD_LIBRARY NAMES libgpiod.so)
if(NOT GPIOD_LIBRARY)
	  message(FATAL_ERROR "gpiod library not found. Install apt install libgpiod-dev")
endif()

add_executable(${COMPONENT_NAME} ${SOURCES})
install(TARGETS ${COMPONENT_NAME} DESTINATION sbin)
target_link_libraries(${COMPONENT_NAME} rt gpiod)

#for cross compiling
#cmake -H. -BOutput -DCMAKE_TOOLCHAIN_FILE=/path/to/toolchain-arm-backup.cmake -DCMAKE_INSTALL_PREFIX=/home/user/tmp/
#cmake --build Output -- all -j$(nproc)
#cmake --build Output -- install -j$(nproc)

#for local compiling
#cmake -H. -BOutput
#cmake --build Output -- all -j$(nproc)

#for cleaning make generated output
#rm -rf Output
