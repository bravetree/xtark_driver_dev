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
include third_packages/slam_karto/CMakeFiles/spa_solver.dir/depend.make

# Include the progress variables for this target.
include third_packages/slam_karto/CMakeFiles/spa_solver.dir/progress.make

# Include the compile flags for this target's objects.
include third_packages/slam_karto/CMakeFiles/spa_solver.dir/flags.make

third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/SpaSolver.cpp.o: third_packages/slam_karto/CMakeFiles/spa_solver.dir/flags.make
third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/SpaSolver.cpp.o: /home/xtark/ros_ws/src/third_packages/slam_karto/src/SpaSolver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xtark/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/SpaSolver.cpp.o"
	cd /home/xtark/ros_ws/build/third_packages/slam_karto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spa_solver.dir/src/SpaSolver.cpp.o -c /home/xtark/ros_ws/src/third_packages/slam_karto/src/SpaSolver.cpp

third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/SpaSolver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spa_solver.dir/src/SpaSolver.cpp.i"
	cd /home/xtark/ros_ws/build/third_packages/slam_karto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xtark/ros_ws/src/third_packages/slam_karto/src/SpaSolver.cpp > CMakeFiles/spa_solver.dir/src/SpaSolver.cpp.i

third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/SpaSolver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spa_solver.dir/src/SpaSolver.cpp.s"
	cd /home/xtark/ros_ws/build/third_packages/slam_karto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xtark/ros_ws/src/third_packages/slam_karto/src/SpaSolver.cpp -o CMakeFiles/spa_solver.dir/src/SpaSolver.cpp.s

third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/csparse.cpp.o: third_packages/slam_karto/CMakeFiles/spa_solver.dir/flags.make
third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/csparse.cpp.o: /home/xtark/ros_ws/src/third_packages/slam_karto/src/csparse.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xtark/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/csparse.cpp.o"
	cd /home/xtark/ros_ws/build/third_packages/slam_karto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spa_solver.dir/src/csparse.cpp.o -c /home/xtark/ros_ws/src/third_packages/slam_karto/src/csparse.cpp

third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/csparse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spa_solver.dir/src/csparse.cpp.i"
	cd /home/xtark/ros_ws/build/third_packages/slam_karto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xtark/ros_ws/src/third_packages/slam_karto/src/csparse.cpp > CMakeFiles/spa_solver.dir/src/csparse.cpp.i

third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/csparse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spa_solver.dir/src/csparse.cpp.s"
	cd /home/xtark/ros_ws/build/third_packages/slam_karto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xtark/ros_ws/src/third_packages/slam_karto/src/csparse.cpp -o CMakeFiles/spa_solver.dir/src/csparse.cpp.s

third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/spa2d.cpp.o: third_packages/slam_karto/CMakeFiles/spa_solver.dir/flags.make
third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/spa2d.cpp.o: /home/xtark/ros_ws/src/third_packages/slam_karto/src/spa2d.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xtark/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/spa2d.cpp.o"
	cd /home/xtark/ros_ws/build/third_packages/slam_karto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spa_solver.dir/src/spa2d.cpp.o -c /home/xtark/ros_ws/src/third_packages/slam_karto/src/spa2d.cpp

third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/spa2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spa_solver.dir/src/spa2d.cpp.i"
	cd /home/xtark/ros_ws/build/third_packages/slam_karto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xtark/ros_ws/src/third_packages/slam_karto/src/spa2d.cpp > CMakeFiles/spa_solver.dir/src/spa2d.cpp.i

third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/spa2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spa_solver.dir/src/spa2d.cpp.s"
	cd /home/xtark/ros_ws/build/third_packages/slam_karto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xtark/ros_ws/src/third_packages/slam_karto/src/spa2d.cpp -o CMakeFiles/spa_solver.dir/src/spa2d.cpp.s

# Object files for target spa_solver
spa_solver_OBJECTS = \
"CMakeFiles/spa_solver.dir/src/SpaSolver.cpp.o" \
"CMakeFiles/spa_solver.dir/src/csparse.cpp.o" \
"CMakeFiles/spa_solver.dir/src/spa2d.cpp.o"

# External object files for target spa_solver
spa_solver_EXTERNAL_OBJECTS =

/home/xtark/ros_ws/devel/lib/libspa_solver.so: third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/SpaSolver.cpp.o
/home/xtark/ros_ws/devel/lib/libspa_solver.so: third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/csparse.cpp.o
/home/xtark/ros_ws/devel/lib/libspa_solver.so: third_packages/slam_karto/CMakeFiles/spa_solver.dir/src/spa2d.cpp.o
/home/xtark/ros_ws/devel/lib/libspa_solver.so: third_packages/slam_karto/CMakeFiles/spa_solver.dir/build.make
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /opt/ros/kinetic/lib/libtf.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /opt/ros/kinetic/lib/libtf2_ros.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /opt/ros/kinetic/lib/libactionlib.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /opt/ros/kinetic/lib/libmessage_filters.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /opt/ros/kinetic/lib/libroscpp.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /opt/ros/kinetic/lib/libtf2.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /opt/ros/kinetic/lib/librosconsole.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /usr/lib/arm-linux-gnueabihf/liblog4cxx.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /opt/ros/kinetic/lib/librostime.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /opt/ros/kinetic/lib/libcpp_common.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so.0.4
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /home/xtark/ros_ws/devel/lib/libkarto.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: /usr/lib/arm-linux-gnueabihf/libcxsparse.so
/home/xtark/ros_ws/devel/lib/libspa_solver.so: third_packages/slam_karto/CMakeFiles/spa_solver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xtark/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library /home/xtark/ros_ws/devel/lib/libspa_solver.so"
	cd /home/xtark/ros_ws/build/third_packages/slam_karto && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/spa_solver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third_packages/slam_karto/CMakeFiles/spa_solver.dir/build: /home/xtark/ros_ws/devel/lib/libspa_solver.so

.PHONY : third_packages/slam_karto/CMakeFiles/spa_solver.dir/build

third_packages/slam_karto/CMakeFiles/spa_solver.dir/clean:
	cd /home/xtark/ros_ws/build/third_packages/slam_karto && $(CMAKE_COMMAND) -P CMakeFiles/spa_solver.dir/cmake_clean.cmake
.PHONY : third_packages/slam_karto/CMakeFiles/spa_solver.dir/clean

third_packages/slam_karto/CMakeFiles/spa_solver.dir/depend:
	cd /home/xtark/ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xtark/ros_ws/src /home/xtark/ros_ws/src/third_packages/slam_karto /home/xtark/ros_ws/build /home/xtark/ros_ws/build/third_packages/slam_karto /home/xtark/ros_ws/build/third_packages/slam_karto/CMakeFiles/spa_solver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_packages/slam_karto/CMakeFiles/spa_solver.dir/depend
