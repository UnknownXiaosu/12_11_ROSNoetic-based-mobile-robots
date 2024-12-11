# Install script for directory: /home/xiaosu/catkin_ws/src/whi_interfaces

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/xiaosu/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/whi_interfaces/msg" TYPE FILE FILES
    "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiEng.msg"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBattery.msg"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiMotionState.msg"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBoxes.msg"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiRcState.msg"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTaskState.msg"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiLineChart2D.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/whi_interfaces/srv" TYPE FILE FILES
    "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvTcpPose.srv"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointPose.srv"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointNames.srv"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIo.srv"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvQrcode.srv"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIndicator.srv"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvPartialDischarge.srv"
    "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvMotionOffsets.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/whi_interfaces/action" TYPE FILE FILES "/home/xiaosu/catkin_ws/src/whi_interfaces/action/PoseRegistration.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/whi_interfaces/msg" TYPE FILE FILES
    "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationAction.msg"
    "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg"
    "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg"
    "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg"
    "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg"
    "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg"
    "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/whi_interfaces/cmake" TYPE FILE FILES "/home/xiaosu/catkin_ws/build/whi_interfaces/catkin_generated/installspace/whi_interfaces-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/xiaosu/catkin_ws/devel/include/whi_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/xiaosu/catkin_ws/devel/share/roseus/ros/whi_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/xiaosu/catkin_ws/devel/share/common-lisp/ros/whi_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/xiaosu/catkin_ws/devel/share/gennodejs/ros/whi_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/xiaosu/catkin_ws/devel/lib/python3/dist-packages/whi_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/xiaosu/catkin_ws/devel/lib/python3/dist-packages/whi_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/xiaosu/catkin_ws/build/whi_interfaces/catkin_generated/installspace/whi_interfaces.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/whi_interfaces/cmake" TYPE FILE FILES "/home/xiaosu/catkin_ws/build/whi_interfaces/catkin_generated/installspace/whi_interfaces-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/whi_interfaces/cmake" TYPE FILE FILES
    "/home/xiaosu/catkin_ws/build/whi_interfaces/catkin_generated/installspace/whi_interfacesConfig.cmake"
    "/home/xiaosu/catkin_ws/build/whi_interfaces/catkin_generated/installspace/whi_interfacesConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/whi_interfaces" TYPE FILE FILES "/home/xiaosu/catkin_ws/src/whi_interfaces/package.xml")
endif()

