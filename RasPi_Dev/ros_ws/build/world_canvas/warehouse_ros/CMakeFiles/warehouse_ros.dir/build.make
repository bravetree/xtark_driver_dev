# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xtark/ros_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xtark/ros_ws/build

# Include any dependencies generated for this target.
include world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/depend.make

# Include the progress variables for this target.
include world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/progress.make

# Include the compile flags for this target's objects.
include world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/flags.make

world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/src/database_loader.cpp.o: world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/flags.make
world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/src/database_loader.cpp.o: /home/xtark/ros_ws/src/world_canvas/warehouse_ros/src/database_loader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xtark/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/src/database_loader.cpp.o"
	cd /home/xtark/ros_ws/build/world_canvas/warehouse_ros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/warehouse_ros.dir/src/database_loader.cpp.o -c /home/xtark/ros_ws/src/world_canvas/warehouse_ros/src/database_loader.cpp

world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/src/database_loader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/warehouse_ros.dir/src/database_loader.cpp.i"
	cd /home/xtark/ros_ws/build/world_canvas/warehouse_ros && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xtark/ros_ws/src/world_canvas/warehouse_ros/src/database_loader.cpp > CMakeFiles/warehouse_ros.dir/src/database_loader.cpp.i

world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/src/database_loader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/warehouse_ros.dir/src/database_loader.cpp.s"
	cd /home/xtark/ros_ws/build/world_canvas/warehouse_ros && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xtark/ros_ws/src/world_canvas/warehouse_ros/src/database_loader.cpp -o CMakeFiles/warehouse_ros.dir/src/database_loader.cpp.s

world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/src/transform_collection.cpp.o: world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/flags.make
world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/src/transform_collection.cpp.o: /home/xtark/ros_ws/src/world_canvas/warehouse_ros/src/transform_collection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xtark/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/src/transform_collection.cpp.o"
	cd /home/xtark/ros_ws/build/world_canvas/warehouse_ros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/warehouse_ros.dir/src/transform_collection.cpp.o -c /home/xtark/ros_ws/src/world_canvas/warehouse_ros/src/transform_collection.cpp

world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/src/transform_collection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/warehouse_ros.dir/src/transform_collection.cpp.i"
	cd /home/xtark/ros_ws/build/world_canvas/warehouse_ros && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xtark/ros_ws/src/world_canvas/warehouse_ros/src/transform_collection.cpp > CMakeFiles/warehouse_ros.dir/src/transform_collection.cpp.i

world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/src/transform_collection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/warehouse_ros.dir/src/transform_collection.cpp.s"
	cd /home/xtark/ros_ws/build/world_canvas/warehouse_ros && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xtark/ros_ws/src/world_canvas/warehouse_ros/src/transform_collection.cpp -o CMakeFiles/warehouse_ros.dir/src/transform_collection.cpp.s

# Object files for target warehouse_ros
warehouse_ros_OBJECTS = \
"CMakeFiles/warehouse_ros.dir/src/database_loader.cpp.o" \
"CMakeFiles/warehouse_ros.dir/src/transform_collection.cpp.o"

# External object files for target warehouse_ros
warehouse_ros_EXTERNAL_OBJECTS =

/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/src/database_loader.cpp.o
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/src/transform_collection.cpp.o
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/build.make
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libtinyxml2.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/libclass_loader.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/libPocoFoundation.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libdl.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/libroslib.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/librospack.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libpython2.7.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_program_options.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libtinyxml.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/libtf.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/libtf2_ros.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/libactionlib.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/libmessage_filters.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/libroscpp.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/libtf2.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/librosconsole.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/liblog4cxx.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/librostime.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/libcpp_common.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so.0.4
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/libtf2.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/librosconsole.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/liblog4cxx.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/librostime.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /opt/ros/kinetic/lib/libcpp_common.so
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so.0.4
/home/xtark/ros_ws/devel/lib/libwarehouse_ros.so: world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xtark/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library /home/xtark/ros_ws/devel/lib/libwarehouse_ros.so"
	cd /home/xtark/ros_ws/build/world_canvas/warehouse_ros && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/warehouse_ros.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/build: /home/xtark/ros_ws/devel/lib/libwarehouse_ros.so

.PHONY : world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/build

world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/clean:
	cd /home/xtark/ros_ws/build/world_canvas/warehouse_ros && $(CMAKE_COMMAND) -P CMakeFiles/warehouse_ros.dir/cmake_clean.cmake
.PHONY : world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/clean

world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/depend:
	cd /home/xtark/ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xtark/ros_ws/src /home/xtark/ros_ws/src/world_canvas/warehouse_ros /home/xtark/ros_ws/build /home/xtark/ros_ws/build/world_canvas/warehouse_ros /home/xtark/ros_ws/build/world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : world_canvas/warehouse_ros/CMakeFiles/warehouse_ros.dir/depend
