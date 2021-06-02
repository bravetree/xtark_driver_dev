# Install script for directory: /home/xtark/ros_ws/src/vslam/rtabmap_ros

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rtabmap_ros/msg" TYPE FILE FILES
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/msg/Info.msg"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/msg/KeyPoint.msg"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/msg/MapData.msg"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/msg/MapGraph.msg"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/msg/NodeData.msg"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/msg/Link.msg"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/msg/OdomInfo.msg"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/msg/Point2f.msg"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/msg/Point3f.msg"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/msg/Goal.msg"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/msg/RGBDImage.msg"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/msg/UserData.msg"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/msg/GPS.msg"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/msg/Path.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rtabmap_ros/srv" TYPE FILE FILES
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/srv/GetMap.srv"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/srv/ListLabels.srv"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/srv/PublishMap.srv"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/srv/ResetPose.srv"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/srv/SetGoal.srv"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/srv/SetLabel.srv"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/srv/GetPlan.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rtabmap_ros/cmake" TYPE FILE FILES "/home/xtark/ros_ws/build/vslam/rtabmap_ros/catkin_generated/installspace/rtabmap_ros-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/xtark/ros_ws/devel/include/rtabmap_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/xtark/ros_ws/devel/share/roseus/ros/rtabmap_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/xtark/ros_ws/devel/share/common-lisp/ros/rtabmap_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/xtark/ros_ws/devel/share/gennodejs/ros/rtabmap_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/xtark/ros_ws/devel/lib/python2.7/dist-packages/rtabmap_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/xtark/ros_ws/devel/lib/python2.7/dist-packages/rtabmap_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rtabmap_ros" TYPE FILE FILES "/home/xtark/ros_ws/devel/include/rtabmap_ros/CameraConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/rtabmap_ros" TYPE FILE FILES "/home/xtark/ros_ws/devel/lib/python2.7/dist-packages/rtabmap_ros/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/xtark/ros_ws/devel/lib/python2.7/dist-packages/rtabmap_ros/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/rtabmap_ros" TYPE DIRECTORY FILES "/home/xtark/ros_ws/devel/lib/python2.7/dist-packages/rtabmap_ros/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/xtark/ros_ws/build/vslam/rtabmap_ros/catkin_generated/installspace/rtabmap_ros.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rtabmap_ros/cmake" TYPE FILE FILES "/home/xtark/ros_ws/build/vslam/rtabmap_ros/catkin_generated/installspace/rtabmap_ros-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rtabmap_ros/cmake" TYPE FILE FILES
    "/home/xtark/ros_ws/build/vslam/rtabmap_ros/catkin_generated/installspace/rtabmap_rosConfig.cmake"
    "/home/xtark/ros_ws/build/vslam/rtabmap_ros/catkin_generated/installspace/rtabmap_rosConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rtabmap_ros" TYPE FILE FILES "/home/xtark/ros_ws/src/vslam/rtabmap_ros/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_sync.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_sync.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_sync.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/xtark/ros_ws/devel/lib/librtabmap_sync.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_sync.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_sync.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_sync.so"
         OLD_RPATH "/home/xtark/ros_ws/devel/lib:/opt/ros/kinetic/lib:/usr/local/lib:/usr/lib/arm-linux-gnueabihf/hdf5/openmpi:/usr/lib/arm-linux-gnueabihf/openmpi/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_sync.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_ros.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_ros.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_ros.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/xtark/ros_ws/devel/lib/librtabmap_ros.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_ros.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_ros.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_ros.so"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/arm-linux-gnueabihf/hdf5/openmpi:/usr/lib/arm-linux-gnueabihf/openmpi/lib:/home/xtark/ros_ws/devel/lib:/usr/local/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_ros.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_plugins.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_plugins.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_plugins.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/xtark/ros_ws/devel/lib/librtabmap_plugins.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_plugins.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_plugins.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_plugins.so"
         OLD_RPATH "/home/xtark/ros_ws/devel/lib:/opt/ros/kinetic/lib:/usr/local/lib:/usr/lib/arm-linux-gnueabihf/hdf5/openmpi:/usr/lib/arm-linux-gnueabihf/openmpi/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librtabmap_plugins.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rtabmap" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rtabmap")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rtabmap"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros" TYPE EXECUTABLE FILES "/home/xtark/ros_ws/devel/lib/rtabmap_ros/rtabmap")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rtabmap" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rtabmap")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rtabmap"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/arm-linux-gnueabihf/hdf5/openmpi:/usr/lib/arm-linux-gnueabihf/openmpi/lib:/home/xtark/ros_ws/devel/lib:/usr/local/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rtabmap")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rtabmapviz" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rtabmapviz")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rtabmapviz"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros" TYPE EXECUTABLE FILES "/home/xtark/ros_ws/devel/lib/rtabmap_ros/rtabmapviz")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rtabmapviz" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rtabmapviz")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rtabmapviz"
         OLD_RPATH "/home/xtark/ros_ws/devel/lib:/opt/ros/kinetic/lib:/usr/local/lib:/usr/lib/arm-linux-gnueabihf/hdf5/openmpi:/usr/lib/arm-linux-gnueabihf/openmpi/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rtabmapviz")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rgbd_odometry" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rgbd_odometry")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rgbd_odometry"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros" TYPE EXECUTABLE FILES "/home/xtark/ros_ws/devel/lib/rtabmap_ros/rgbd_odometry")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rgbd_odometry" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rgbd_odometry")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rgbd_odometry"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/arm-linux-gnueabihf/hdf5/openmpi:/usr/lib/arm-linux-gnueabihf/openmpi/lib:/home/xtark/ros_ws/devel/lib:/usr/local/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rgbd_odometry")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/icp_odometry" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/icp_odometry")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/icp_odometry"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros" TYPE EXECUTABLE FILES "/home/xtark/ros_ws/devel/lib/rtabmap_ros/icp_odometry")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/icp_odometry" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/icp_odometry")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/icp_odometry"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/arm-linux-gnueabihf/hdf5/openmpi:/usr/lib/arm-linux-gnueabihf/openmpi/lib:/home/xtark/ros_ws/devel/lib:/usr/local/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/icp_odometry")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rgbdicp_odometry" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rgbdicp_odometry")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rgbdicp_odometry"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros" TYPE EXECUTABLE FILES "/home/xtark/ros_ws/devel/lib/rtabmap_ros/rgbdicp_odometry")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rgbdicp_odometry" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rgbdicp_odometry")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rgbdicp_odometry"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/arm-linux-gnueabihf/hdf5/openmpi:/usr/lib/arm-linux-gnueabihf/openmpi/lib:/home/xtark/ros_ws/devel/lib:/usr/local/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/rgbdicp_odometry")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/stereo_odometry" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/stereo_odometry")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/stereo_odometry"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros" TYPE EXECUTABLE FILES "/home/xtark/ros_ws/devel/lib/rtabmap_ros/stereo_odometry")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/stereo_odometry" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/stereo_odometry")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/stereo_odometry"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/arm-linux-gnueabihf/hdf5/openmpi:/usr/lib/arm-linux-gnueabihf/openmpi/lib:/home/xtark/ros_ws/devel/lib:/usr/local/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/stereo_odometry")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/map_assembler" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/map_assembler")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/map_assembler"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros" TYPE EXECUTABLE FILES "/home/xtark/ros_ws/devel/lib/rtabmap_ros/map_assembler")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/map_assembler" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/map_assembler")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/map_assembler"
         OLD_RPATH "/home/xtark/ros_ws/devel/lib:/opt/ros/kinetic/lib:/usr/local/lib:/usr/lib/arm-linux-gnueabihf/hdf5/openmpi:/usr/lib/arm-linux-gnueabihf/openmpi/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/map_assembler")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/map_optimizer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/map_optimizer")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/map_optimizer"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros" TYPE EXECUTABLE FILES "/home/xtark/ros_ws/devel/lib/rtabmap_ros/map_optimizer")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/map_optimizer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/map_optimizer")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/map_optimizer"
         OLD_RPATH "/home/xtark/ros_ws/devel/lib:/opt/ros/kinetic/lib:/usr/local/lib:/usr/lib/arm-linux-gnueabihf/hdf5/openmpi:/usr/lib/arm-linux-gnueabihf/openmpi/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/map_optimizer")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/data_player" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/data_player")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/data_player"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros" TYPE EXECUTABLE FILES "/home/xtark/ros_ws/devel/lib/rtabmap_ros/data_player")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/data_player" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/data_player")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/data_player"
         OLD_RPATH "/home/xtark/ros_ws/devel/lib:/opt/ros/kinetic/lib:/usr/local/lib:/usr/lib/arm-linux-gnueabihf/hdf5/openmpi:/usr/lib/arm-linux-gnueabihf/openmpi/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/data_player")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/odom_msg_to_tf" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/odom_msg_to_tf")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/odom_msg_to_tf"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros" TYPE EXECUTABLE FILES "/home/xtark/ros_ws/devel/lib/rtabmap_ros/odom_msg_to_tf")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/odom_msg_to_tf" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/odom_msg_to_tf")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/odom_msg_to_tf"
         OLD_RPATH "/home/xtark/ros_ws/devel/lib:/opt/ros/kinetic/lib:/usr/local/lib:/usr/lib/arm-linux-gnueabihf/hdf5/openmpi:/usr/lib/arm-linux-gnueabihf/openmpi/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/odom_msg_to_tf")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/pointcloud_to_depthimage" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/pointcloud_to_depthimage")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/pointcloud_to_depthimage"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros" TYPE EXECUTABLE FILES "/home/xtark/ros_ws/devel/lib/rtabmap_ros/pointcloud_to_depthimage")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/pointcloud_to_depthimage" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/pointcloud_to_depthimage")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/pointcloud_to_depthimage"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/arm-linux-gnueabihf/hdf5/openmpi:/usr/lib/arm-linux-gnueabihf/openmpi/lib:/home/xtark/ros_ws/devel/lib:/usr/local/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/pointcloud_to_depthimage")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/camera" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/camera")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/camera"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros" TYPE EXECUTABLE FILES "/home/xtark/ros_ws/devel/lib/rtabmap_ros/camera")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/camera" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/camera")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/camera"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/arm-linux-gnueabihf/hdf5/openmpi:/usr/lib/arm-linux-gnueabihf/openmpi/lib:/home/xtark/ros_ws/devel/lib:/usr/local/lib:/opt/ros/kinetic/share/rviz/cmake/../../../lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/rtabmap_ros/camera")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rtabmap_ros" TYPE DIRECTORY FILES "/home/xtark/ros_ws/src/vslam/rtabmap_ros/include/rtabmap_ros/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/\\.svn$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rtabmap_ros/launch" TYPE FILE FILES
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/launch/rtabmap.launch"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/launch/rgbd_mapping.launch"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/launch/stereo_mapping.launch"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/launch/data_recorder.launch"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/launch/rgbd_mapping_kinect2.launch"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rtabmap_ros/launch" TYPE DIRECTORY FILES
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/launch/config"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/launch/data"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/launch/demo"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rtabmap_ros" TYPE FILE FILES
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/nodelet_plugins.xml"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/plugin_description.xml"
    "/home/xtark/ros_ws/src/vslam/rtabmap_ros/costmap_plugins.xml"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rtabmap_ros" TYPE FILE FILES "/home/xtark/ros_ws/src/vslam/rtabmap_ros/costmap_plugins.xml")
endif()

