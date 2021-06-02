# Install script for directory: /home/xtark/ros_ws/src/third_packages/ecl_build

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/xtark/ros_ws/build/third_packages/ecl_build/catkin_generated/installspace/ecl_build.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ecl_build/cmake" TYPE FILE FILES
    "/home/xtark/ros_ws/src/third_packages/ecl_build/cmake/ecl_platform_detection.cmake"
    "/home/xtark/ros_ws/src/third_packages/ecl_build/cmake/ecl_package.cmake"
    "/home/xtark/ros_ws/src/third_packages/ecl_build/cmake/ecl_find_sse.cmake"
    "/home/xtark/ros_ws/src/third_packages/ecl_build/cmake/ecl_build_utilities.cmake"
    "/home/xtark/ros_ws/src/third_packages/ecl_build/cmake/ecl_cx11.cmake"
    "/home/xtark/ros_ws/src/third_packages/ecl_build/cmake/cotire.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ecl_build/cmake" TYPE FILE FILES
    "/home/xtark/ros_ws/build/third_packages/ecl_build/catkin_generated/installspace/ecl_buildConfig.cmake"
    "/home/xtark/ros_ws/build/third_packages/ecl_build/catkin_generated/installspace/ecl_buildConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ecl_build" TYPE FILE FILES "/home/xtark/ros_ws/src/third_packages/ecl_build/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ecl_build" TYPE DIRECTORY FILES "/home/xtark/ros_ws/src/third_packages/ecl_build/cmake")
endif()

