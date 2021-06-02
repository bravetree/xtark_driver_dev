# Install script for directory: /home/xtark/ros_ws/src/third_packages/ecl/ecl_time_lite/include/ecl/time_lite

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/xtark/ros_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ecl/time_lite" TYPE FILE FILES
    "/home/xtark/ros_ws/src/third_packages/ecl/ecl_time_lite/include/ecl/time_lite/cpu_time.hpp"
    "/home/xtark/ros_ws/src/third_packages/ecl/ecl_time_lite/include/ecl/time_lite/date.hpp"
    "/home/xtark/ros_ws/src/third_packages/ecl/ecl_time_lite/include/ecl/time_lite/errors.hpp"
    "/home/xtark/ros_ws/src/third_packages/ecl/ecl_time_lite/include/ecl/time_lite/functions.hpp"
    "/home/xtark/ros_ws/src/third_packages/ecl/ecl_time_lite/include/ecl/time_lite/functions_mac.hpp"
    "/home/xtark/ros_ws/src/third_packages/ecl/ecl_time_lite/include/ecl/time_lite/functions_pos.hpp"
    "/home/xtark/ros_ws/src/third_packages/ecl/ecl_time_lite/include/ecl/time_lite/functions_rt.hpp"
    "/home/xtark/ros_ws/src/third_packages/ecl/ecl_time_lite/include/ecl/time_lite/functions_win.hpp"
    "/home/xtark/ros_ws/src/third_packages/ecl/ecl_time_lite/include/ecl/time_lite/macros.hpp"
    "/home/xtark/ros_ws/src/third_packages/ecl/ecl_time_lite/include/ecl/time_lite/types.hpp"
    "/home/xtark/ros_ws/src/third_packages/ecl/ecl_time_lite/include/ecl/time_lite/types_pos.hpp"
    "/home/xtark/ros_ws/src/third_packages/ecl/ecl_time_lite/include/ecl/time_lite/types_win.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ecl/time_lite" TYPE FILE FILES "/home/xtark/ros_ws/devel/include/ecl/time_lite/config.hpp")
endif()

