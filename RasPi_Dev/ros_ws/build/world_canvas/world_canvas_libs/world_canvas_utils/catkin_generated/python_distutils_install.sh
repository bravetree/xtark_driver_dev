#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/xtark/ros_ws/src/world_canvas/world_canvas_libs/world_canvas_utils"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/xtark/ros_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/xtark/ros_ws/install/lib/python2.7/dist-packages:/home/xtark/ros_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/xtark/ros_ws/build" \
    "/usr/bin/python" \
    "/home/xtark/ros_ws/src/world_canvas/world_canvas_libs/world_canvas_utils/setup.py" \
    build --build-base "/home/xtark/ros_ws/build/world_canvas/world_canvas_libs/world_canvas_utils" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/xtark/ros_ws/install" --install-scripts="/home/xtark/ros_ws/install/bin"
