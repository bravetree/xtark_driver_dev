# Install script for directory: /home/xtark/ros_ws/src/third_packages/rosbridge_suite/rosbridge_server

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
  include("/home/xtark/ros_ws/build/third_packages/rosbridge_suite/rosbridge_server/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/xtark/ros_ws/build/third_packages/rosbridge_suite/rosbridge_server/catkin_generated/installspace/rosbridge_server.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosbridge_server/cmake" TYPE FILE FILES
    "/home/xtark/ros_ws/build/third_packages/rosbridge_suite/rosbridge_server/catkin_generated/installspace/rosbridge_serverConfig.cmake"
    "/home/xtark/ros_ws/build/third_packages/rosbridge_suite/rosbridge_server/catkin_generated/installspace/rosbridge_serverConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosbridge_server" TYPE FILE FILES "/home/xtark/ros_ws/src/third_packages/rosbridge_suite/rosbridge_server/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rosbridge_server" TYPE PROGRAM FILES
    "/home/xtark/ros_ws/src/third_packages/rosbridge_suite/rosbridge_server/scripts/rosbridge_websocket.py"
    "/home/xtark/ros_ws/src/third_packages/rosbridge_suite/rosbridge_server/scripts/rosbridge_websocket"
    "/home/xtark/ros_ws/src/third_packages/rosbridge_suite/rosbridge_server/scripts/rosbridge_tcp.py"
    "/home/xtark/ros_ws/src/third_packages/rosbridge_suite/rosbridge_server/scripts/rosbridge_tcp"
    "/home/xtark/ros_ws/src/third_packages/rosbridge_suite/rosbridge_server/scripts/rosbridge_udp"
    "/home/xtark/ros_ws/src/third_packages/rosbridge_suite/rosbridge_server/scripts/rosbridge_udp.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosbridge_server/launch" TYPE FILE FILES
    "/home/xtark/ros_ws/src/third_packages/rosbridge_suite/rosbridge_server/launch/rosbridge_websocket.launch"
    "/home/xtark/ros_ws/src/third_packages/rosbridge_suite/rosbridge_server/launch/rosbridge_tcp.launch"
    "/home/xtark/ros_ws/src/third_packages/rosbridge_suite/rosbridge_server/launch/rosbridge_udp.launch"
    )
endif()

