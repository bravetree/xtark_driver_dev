# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
include xtark_line_follower/CMakeFiles/navig.dir/depend.make

# Include the progress variables for this target.
include xtark_line_follower/CMakeFiles/navig.dir/progress.make

# Include the compile flags for this target's objects.
include xtark_line_follower/CMakeFiles/navig.dir/flags.make

xtark_line_follower/CMakeFiles/navig.dir/src/motion_node.cpp.o: xtark_line_follower/CMakeFiles/navig.dir/flags.make
xtark_line_follower/CMakeFiles/navig.dir/src/motion_node.cpp.o: /home/xtark/ros_ws/src/xtark_line_follower/src/motion_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xtark/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object xtark_line_follower/CMakeFiles/navig.dir/src/motion_node.cpp.o"
	cd /home/xtark/ros_ws/build/xtark_line_follower && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/navig.dir/src/motion_node.cpp.o -c /home/xtark/ros_ws/src/xtark_line_follower/src/motion_node.cpp

xtark_line_follower/CMakeFiles/navig.dir/src/motion_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/navig.dir/src/motion_node.cpp.i"
	cd /home/xtark/ros_ws/build/xtark_line_follower && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xtark/ros_ws/src/xtark_line_follower/src/motion_node.cpp > CMakeFiles/navig.dir/src/motion_node.cpp.i

xtark_line_follower/CMakeFiles/navig.dir/src/motion_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/navig.dir/src/motion_node.cpp.s"
	cd /home/xtark/ros_ws/build/xtark_line_follower && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xtark/ros_ws/src/xtark_line_follower/src/motion_node.cpp -o CMakeFiles/navig.dir/src/motion_node.cpp.s

xtark_line_follower/CMakeFiles/navig.dir/src/motion_node.cpp.o.requires:

.PHONY : xtark_line_follower/CMakeFiles/navig.dir/src/motion_node.cpp.o.requires

xtark_line_follower/CMakeFiles/navig.dir/src/motion_node.cpp.o.provides: xtark_line_follower/CMakeFiles/navig.dir/src/motion_node.cpp.o.requires
	$(MAKE) -f xtark_line_follower/CMakeFiles/navig.dir/build.make xtark_line_follower/CMakeFiles/navig.dir/src/motion_node.cpp.o.provides.build
.PHONY : xtark_line_follower/CMakeFiles/navig.dir/src/motion_node.cpp.o.provides

xtark_line_follower/CMakeFiles/navig.dir/src/motion_node.cpp.o.provides.build: xtark_line_follower/CMakeFiles/navig.dir/src/motion_node.cpp.o


xtark_line_follower/CMakeFiles/navig.dir/src/xtarkrobot.cpp.o: xtark_line_follower/CMakeFiles/navig.dir/flags.make
xtark_line_follower/CMakeFiles/navig.dir/src/xtarkrobot.cpp.o: /home/xtark/ros_ws/src/xtark_line_follower/src/xtarkrobot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xtark/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object xtark_line_follower/CMakeFiles/navig.dir/src/xtarkrobot.cpp.o"
	cd /home/xtark/ros_ws/build/xtark_line_follower && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/navig.dir/src/xtarkrobot.cpp.o -c /home/xtark/ros_ws/src/xtark_line_follower/src/xtarkrobot.cpp

xtark_line_follower/CMakeFiles/navig.dir/src/xtarkrobot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/navig.dir/src/xtarkrobot.cpp.i"
	cd /home/xtark/ros_ws/build/xtark_line_follower && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xtark/ros_ws/src/xtark_line_follower/src/xtarkrobot.cpp > CMakeFiles/navig.dir/src/xtarkrobot.cpp.i

xtark_line_follower/CMakeFiles/navig.dir/src/xtarkrobot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/navig.dir/src/xtarkrobot.cpp.s"
	cd /home/xtark/ros_ws/build/xtark_line_follower && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xtark/ros_ws/src/xtark_line_follower/src/xtarkrobot.cpp -o CMakeFiles/navig.dir/src/xtarkrobot.cpp.s

xtark_line_follower/CMakeFiles/navig.dir/src/xtarkrobot.cpp.o.requires:

.PHONY : xtark_line_follower/CMakeFiles/navig.dir/src/xtarkrobot.cpp.o.requires

xtark_line_follower/CMakeFiles/navig.dir/src/xtarkrobot.cpp.o.provides: xtark_line_follower/CMakeFiles/navig.dir/src/xtarkrobot.cpp.o.requires
	$(MAKE) -f xtark_line_follower/CMakeFiles/navig.dir/build.make xtark_line_follower/CMakeFiles/navig.dir/src/xtarkrobot.cpp.o.provides.build
.PHONY : xtark_line_follower/CMakeFiles/navig.dir/src/xtarkrobot.cpp.o.provides

xtark_line_follower/CMakeFiles/navig.dir/src/xtarkrobot.cpp.o.provides.build: xtark_line_follower/CMakeFiles/navig.dir/src/xtarkrobot.cpp.o


# Object files for target navig
navig_OBJECTS = \
"CMakeFiles/navig.dir/src/motion_node.cpp.o" \
"CMakeFiles/navig.dir/src/xtarkrobot.cpp.o"

# External object files for target navig
navig_EXTERNAL_OBJECTS =

/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: xtark_line_follower/CMakeFiles/navig.dir/src/motion_node.cpp.o
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: xtark_line_follower/CMakeFiles/navig.dir/src/xtarkrobot.cpp.o
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: xtark_line_follower/CMakeFiles/navig.dir/build.make
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /opt/ros/kinetic/lib/libcv_bridge.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /opt/ros/kinetic/lib/libroscpp.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /opt/ros/kinetic/lib/librosconsole.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /opt/ros/kinetic/lib/librostime.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /opt/ros/kinetic/lib/libcpp_common.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/xtark/ros_ws/devel/lib/xtark_line_follower/navig: xtark_line_follower/CMakeFiles/navig.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xtark/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/xtark/ros_ws/devel/lib/xtark_line_follower/navig"
	cd /home/xtark/ros_ws/build/xtark_line_follower && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/navig.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
xtark_line_follower/CMakeFiles/navig.dir/build: /home/xtark/ros_ws/devel/lib/xtark_line_follower/navig

.PHONY : xtark_line_follower/CMakeFiles/navig.dir/build

xtark_line_follower/CMakeFiles/navig.dir/requires: xtark_line_follower/CMakeFiles/navig.dir/src/motion_node.cpp.o.requires
xtark_line_follower/CMakeFiles/navig.dir/requires: xtark_line_follower/CMakeFiles/navig.dir/src/xtarkrobot.cpp.o.requires

.PHONY : xtark_line_follower/CMakeFiles/navig.dir/requires

xtark_line_follower/CMakeFiles/navig.dir/clean:
	cd /home/xtark/ros_ws/build/xtark_line_follower && $(CMAKE_COMMAND) -P CMakeFiles/navig.dir/cmake_clean.cmake
.PHONY : xtark_line_follower/CMakeFiles/navig.dir/clean

xtark_line_follower/CMakeFiles/navig.dir/depend:
	cd /home/xtark/ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xtark/ros_ws/src /home/xtark/ros_ws/src/xtark_line_follower /home/xtark/ros_ws/build /home/xtark/ros_ws/build/xtark_line_follower /home/xtark/ros_ws/build/xtark_line_follower/CMakeFiles/navig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : xtark_line_follower/CMakeFiles/navig.dir/depend
