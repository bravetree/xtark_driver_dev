# CMake generated Testfile for 
# Source directory: /home/xtark/ros_ws/src/third_packages/unique_identifier/unique_id/tests
# Build directory: /home/xtark/ros_ws/build/third_packages/unique_identifier/unique_id/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_unique_id_gtest_test_unique_id "/home/xtark/ros_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/xtark/ros_ws/build/test_results/unique_id/gtest-test_unique_id.xml" "--return-code" "/home/xtark/ros_ws/devel/lib/unique_id/test_unique_id --gtest_output=xml:/home/xtark/ros_ws/build/test_results/unique_id/gtest-test_unique_id.xml")
add_test(_ctest_unique_id_nosetests_test_unique_id.py "/home/xtark/ros_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/xtark/ros_ws/build/test_results/unique_id/nosetests-test_unique_id.py.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/xtark/ros_ws/build/test_results/unique_id" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/xtark/ros_ws/src/third_packages/unique_identifier/unique_id/tests/test_unique_id.py --with-xunit --xunit-file=/home/xtark/ros_ws/build/test_results/unique_id/nosetests-test_unique_id.py.xml")
