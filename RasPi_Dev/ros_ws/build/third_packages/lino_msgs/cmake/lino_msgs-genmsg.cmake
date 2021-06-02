# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lino_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ilino_msgs:/home/xtark/ros_ws/src/third_packages/lino_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lino_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/PID.msg" NAME_WE)
add_custom_target(_lino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lino_msgs" "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/PID.msg" ""
)

get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Imu.msg" NAME_WE)
add_custom_target(_lino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lino_msgs" "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Imu.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Velocities.msg" NAME_WE)
add_custom_target(_lino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lino_msgs" "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Velocities.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lino_msgs
  "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lino_msgs
)
_generate_msg_cpp(lino_msgs
  "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lino_msgs
)
_generate_msg_cpp(lino_msgs
  "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lino_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(lino_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lino_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lino_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lino_msgs_generate_messages lino_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/PID.msg" NAME_WE)
add_dependencies(lino_msgs_generate_messages_cpp _lino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(lino_msgs_generate_messages_cpp _lino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(lino_msgs_generate_messages_cpp _lino_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lino_msgs_gencpp)
add_dependencies(lino_msgs_gencpp lino_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lino_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lino_msgs
  "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lino_msgs
)
_generate_msg_eus(lino_msgs
  "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lino_msgs
)
_generate_msg_eus(lino_msgs
  "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lino_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(lino_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lino_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lino_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lino_msgs_generate_messages lino_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/PID.msg" NAME_WE)
add_dependencies(lino_msgs_generate_messages_eus _lino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(lino_msgs_generate_messages_eus _lino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(lino_msgs_generate_messages_eus _lino_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lino_msgs_geneus)
add_dependencies(lino_msgs_geneus lino_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lino_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lino_msgs
  "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lino_msgs
)
_generate_msg_lisp(lino_msgs
  "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lino_msgs
)
_generate_msg_lisp(lino_msgs
  "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lino_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(lino_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lino_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lino_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lino_msgs_generate_messages lino_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/PID.msg" NAME_WE)
add_dependencies(lino_msgs_generate_messages_lisp _lino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(lino_msgs_generate_messages_lisp _lino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(lino_msgs_generate_messages_lisp _lino_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lino_msgs_genlisp)
add_dependencies(lino_msgs_genlisp lino_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lino_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(lino_msgs
  "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lino_msgs
)
_generate_msg_nodejs(lino_msgs
  "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lino_msgs
)
_generate_msg_nodejs(lino_msgs
  "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lino_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(lino_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lino_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lino_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lino_msgs_generate_messages lino_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/PID.msg" NAME_WE)
add_dependencies(lino_msgs_generate_messages_nodejs _lino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(lino_msgs_generate_messages_nodejs _lino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(lino_msgs_generate_messages_nodejs _lino_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lino_msgs_gennodejs)
add_dependencies(lino_msgs_gennodejs lino_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lino_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lino_msgs
  "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lino_msgs
)
_generate_msg_py(lino_msgs
  "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lino_msgs
)
_generate_msg_py(lino_msgs
  "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lino_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(lino_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lino_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lino_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lino_msgs_generate_messages lino_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/PID.msg" NAME_WE)
add_dependencies(lino_msgs_generate_messages_py _lino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(lino_msgs_generate_messages_py _lino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xtark/ros_ws/src/third_packages/lino_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(lino_msgs_generate_messages_py _lino_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lino_msgs_genpy)
add_dependencies(lino_msgs_genpy lino_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lino_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lino_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lino_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lino_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(lino_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lino_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lino_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lino_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(lino_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lino_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lino_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lino_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(lino_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lino_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lino_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(lino_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(lino_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lino_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lino_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lino_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lino_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(lino_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
