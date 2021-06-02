# - Config file for the RTABMap package
# Components:
#  core    (required)
#  gui     (optional)
#  utilite (required)
# It defines the following variables
#  RTABMap_INCLUDE_DIRS - include directories for RTABMap
#  RTABMap_LIBRARIES    - libraries to link against
#  RTABMap_CORE         - core library
#  RTABMap_UTILITE      - utilite library
#  RTABMap_GUI          - gui library (set if RTABMap is built with Qt)

# Compute paths
get_filename_component(RTABMap_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(RTABMap_INCLUDE_DIRS "${RTABMap_CMAKE_DIR}/../../include/rtabmap-0.19")

#core lib
find_library(RTABMap_CORE_RELEASE NAMES rtabmap_core NO_DEFAULT_PATH HINTS ${RTABMap_CMAKE_DIR}/../)
find_library(RTABMap_CORE_DEBUG NAMES rtabmap_cored NO_DEFAULT_PATH HINTS ${RTABMap_CMAKE_DIR}/../)

IF(RTABMap_CORE_DEBUG AND RTABMap_CORE_RELEASE)
   SET(RTABMap_CORE
      debug ${RTABMap_CORE_DEBUG}
      optimized ${RTABMap_CORE_RELEASE}
   )
ELSEIF(RTABMap_CORE_DEBUG)
   SET(RTABMap_CORE ${RTABMap_CORE_DEBUG})
ELSE()
   SET(RTABMap_CORE ${RTABMap_CORE_RELEASE})
ENDIF()

#utilite lib
find_library(RTABMap_UTILITE_RELEASE NAMES rtabmap_utilite NO_DEFAULT_PATH HINTS ${RTABMap_CMAKE_DIR}/../)
find_library(RTABMap_UTILITE_DEBUG NAMES rtabmap_utilited NO_DEFAULT_PATH HINTS ${RTABMap_CMAKE_DIR}/../)

IF(RTABMap_UTILITE_DEBUG AND RTABMap_UTILITE_RELEASE)
   SET(RTABMap_UTILITE
      debug ${RTABMap_UTILITE_DEBUG}
      optimized ${RTABMap_UTILITE_RELEASE}
   )
ELSEIF(RTABMap_UTILITE_DEBUG)
   SET(RTABMap_UTILITE ${RTABMap_UTILITE_DEBUG})
ELSE()
   SET(RTABMap_UTILITE ${RTABMap_UTILITE_RELEASE})
ENDIF()

set(RTABMap_LIBRARIES ${RTABMap_CORE} ${RTABMap_UTILITE})

list(LENGTH RTABMap_FIND_COMPONENTS RTABMap_FIND_COMPONENTS_LENGTH)
set(WITH_GUI ON)
if(${RTABMap_FIND_COMPONENTS_LENGTH} GREATER 0)
   list (FIND RTABMap_FIND_COMPONENTS "gui" _index)
   if (${_index} EQUAL -1)
      set(WITH_GUI OFF)
   endif()
endif(${RTABMap_FIND_COMPONENTS_LENGTH} GREATER 0)


#gui lib (OFF if RTAB-Map is not built with Qt)
if(ON AND ${WITH_GUI})
   find_library(RTABMap_GUI_RELEASE NAMES rtabmap_gui NO_DEFAULT_PATH HINTS ${RTABMap_CMAKE_DIR}/../)
   find_library(RTABMap_GUI_DEBUG NAMES rtabmap_guid NO_DEFAULT_PATH HINTS ${RTABMap_CMAKE_DIR}/../)
   
   IF(RTABMap_GUI_DEBUG AND RTABMap_GUI_RELEASE)
      SET(RTABMap_GUI
         debug ${RTABMap_GUI_DEBUG}
         optimized ${RTABMap_GUI_RELEASE}
      )
   ELSEIF(RTABMap_GUI_RELEASE)
      SET(RTABMap_GUI ${RTABMap_GUI_RELEASE})
   ELSEIF(RTABMap_GUI_DEBUG)
      SET(RTABMap_GUI ${RTABMap_GUI_DEBUG})
   ENDIF()
   
   set(RTABMap_LIBRARIES ${RTABMap_LIBRARIES} ${RTABMap_GUI})
elseif(${WITH_GUI})
   MESSAGE(ERROR "Asked for \"gui\" module but RTABMap hasn't been built with gui support.")
endif()

# Dependencies
if(false AND ${WITH_GUI})
   find_package(VTK COMPONENTS vtkGUISupportQt NO_MODULE) # to define vtkGUISupportQt target
endif(false AND ${WITH_GUI})
SET(RTABMap_LIBRARIES ${RTABMap_LIBRARIES} "/usr/lib/arm-linux-gnueabihf/libz.so;/usr/local/lib/libg2o_core.so;/usr/local/lib/libg2o_types_slam2d.so;/usr/local/lib/libg2o_types_slam3d.so;/usr/local/lib/libg2o_types_sba.so;/usr/local/lib/libg2o_stuff.so;/usr/local/lib/libg2o_solver_csparse.so;/usr/local/lib/libg2o_csparse_extension.so;/usr/lib/arm-linux-gnueabihf/libcxsparse.so;/usr/local/lib/libg2o_solver_cholmod.so;/usr/lib/arm-linux-gnueabihf/libcholmod.so;/usr/lib/libOpenNI2.so;/opt/ros/kinetic/lib/liboctomap.so;/opt/ros/kinetic/lib/liboctomath.so")

#backward compatibilities
set(RTABMAP_CORE ${RTABMap_CORE})
set(RTABMAP_UTILITE ${RTABMap_UTILITE})
if(RTABMap_GUI)
   set(RTABMAP_GUI ${RTABMap_GUI})
   set(RTABMAP_QT_VERSION 5)
endif(RTABMap_GUI)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(RTABMap DEFAULT_MSG RTABMap_LIBRARIES RTABMap_INCLUDE_DIRS)
mark_as_advanced(RTABMap_LIBRARIES RTABMap_INCLUDE_DIRS RTABMap_LIBRARY_DIRS)
