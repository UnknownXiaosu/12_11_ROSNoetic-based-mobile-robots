# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "whi_interfaces: 20 messages, 8 services")

set(MSG_I_FLAGS "-Iwhi_interfaces:/home/xiaosu/catkin_ws/src/whi_interfaces/msg;-Iwhi_interfaces:/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Imoveit_msgs:/opt/ros/noetic/share/moveit_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/noetic/share/trajectory_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/noetic/share/shape_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/noetic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(whi_interfaces_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiEng.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiEng.msg" ""
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBattery.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBattery.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiMotionState.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiMotionState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg" "geometry_msgs/Quaternion:moveit_msgs/JointConstraint:geometry_msgs/Point:std_msgs/Header:geometry_msgs/Pose:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg" "moveit_msgs/JointConstraint:sensor_msgs/JointState:std_msgs/Header"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBoxes.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBoxes.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/Header:geometry_msgs/Pose:whi_interfaces/WhiBoundingBox"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg" ""
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiRcState.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiRcState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTaskState.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTaskState.msg" ""
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg" ""
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg" ""
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiLineChart2D.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiLineChart2D.msg" "whi_interfaces/WhiVectorFloat:std_msgs/Header"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationAction.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationAction.msg" "actionlib_msgs/GoalID:geometry_msgs/Quaternion:geometry_msgs/Point:whi_interfaces/PoseRegistrationActionResult:whi_interfaces/PoseRegistrationResult:std_msgs/Header:whi_interfaces/PoseRegistrationGoal:geometry_msgs/Pose:geometry_msgs/PoseStamped:whi_interfaces/PoseRegistrationActionFeedback:actionlib_msgs/GoalStatus:whi_interfaces/PoseRegistrationActionGoal:whi_interfaces/PoseRegistrationFeedback"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg" "actionlib_msgs/GoalID:geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/Header:whi_interfaces/PoseRegistrationGoal:geometry_msgs/Pose:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg" "actionlib_msgs/GoalID:whi_interfaces/PoseRegistrationResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg" "actionlib_msgs/GoalID:whi_interfaces/PoseRegistrationFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/Header:geometry_msgs/Pose:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg" ""
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg" ""
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvTcpPose.srv" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvTcpPose.srv" "geometry_msgs/Quaternion:moveit_msgs/JointConstraint:geometry_msgs/Point:std_msgs/Header:geometry_msgs/Pose:geometry_msgs/PoseStamped:whi_interfaces/WhiTcpPose"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointPose.srv" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointPose.srv" "std_msgs/Header:moveit_msgs/JointConstraint:sensor_msgs/JointState:whi_interfaces/WhiJointPose"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointNames.srv" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointNames.srv" ""
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIo.srv" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIo.srv" ""
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvQrcode.srv" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvQrcode.srv" "geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/Header:geometry_msgs/Pose:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIndicator.srv" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIndicator.srv" "whi_interfaces/WhiIndicator"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvPartialDischarge.srv" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvPartialDischarge.srv" "whi_interfaces/WhiPartialDischarge"
)

get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvMotionOffsets.srv" NAME_WE)
add_custom_target(_whi_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whi_interfaces" "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvMotionOffsets.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiEng.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBattery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiMotionState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiRcState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTaskState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiLineChart2D.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)

### Generating Services
_generate_srv_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvTcpPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_srv_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_srv_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointNames.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_srv_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_srv_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvQrcode.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_srv_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIndicator.srv"
  "${MSG_I_FLAGS}"
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_srv_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvPartialDischarge.srv"
  "${MSG_I_FLAGS}"
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)
_generate_srv_cpp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvMotionOffsets.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
)

### Generating Module File
_generate_module_cpp(whi_interfaces
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(whi_interfaces_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(whi_interfaces_generate_messages whi_interfaces_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiEng.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBattery.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiMotionState.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBoxes.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiRcState.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTaskState.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiLineChart2D.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationAction.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvTcpPose.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointPose.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointNames.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIo.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvQrcode.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIndicator.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvPartialDischarge.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvMotionOffsets.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_cpp _whi_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whi_interfaces_gencpp)
add_dependencies(whi_interfaces_gencpp whi_interfaces_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whi_interfaces_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiEng.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBattery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiMotionState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiRcState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTaskState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiLineChart2D.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_msg_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)

### Generating Services
_generate_srv_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvTcpPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_srv_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_srv_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointNames.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_srv_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_srv_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvQrcode.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_srv_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIndicator.srv"
  "${MSG_I_FLAGS}"
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_srv_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvPartialDischarge.srv"
  "${MSG_I_FLAGS}"
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)
_generate_srv_eus(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvMotionOffsets.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
)

### Generating Module File
_generate_module_eus(whi_interfaces
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(whi_interfaces_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(whi_interfaces_generate_messages whi_interfaces_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiEng.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBattery.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiMotionState.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBoxes.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiRcState.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTaskState.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiLineChart2D.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationAction.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvTcpPose.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointPose.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointNames.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIo.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvQrcode.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIndicator.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvPartialDischarge.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvMotionOffsets.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_eus _whi_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whi_interfaces_geneus)
add_dependencies(whi_interfaces_geneus whi_interfaces_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whi_interfaces_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiEng.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBattery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiMotionState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiRcState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTaskState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiLineChart2D.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_msg_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)

### Generating Services
_generate_srv_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvTcpPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_srv_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_srv_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointNames.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_srv_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_srv_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvQrcode.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_srv_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIndicator.srv"
  "${MSG_I_FLAGS}"
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_srv_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvPartialDischarge.srv"
  "${MSG_I_FLAGS}"
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)
_generate_srv_lisp(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvMotionOffsets.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
)

### Generating Module File
_generate_module_lisp(whi_interfaces
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(whi_interfaces_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(whi_interfaces_generate_messages whi_interfaces_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiEng.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBattery.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiMotionState.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBoxes.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiRcState.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTaskState.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiLineChart2D.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationAction.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvTcpPose.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointPose.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointNames.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIo.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvQrcode.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIndicator.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvPartialDischarge.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvMotionOffsets.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_lisp _whi_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whi_interfaces_genlisp)
add_dependencies(whi_interfaces_genlisp whi_interfaces_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whi_interfaces_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiEng.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBattery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiMotionState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiRcState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTaskState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiLineChart2D.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_msg_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)

### Generating Services
_generate_srv_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvTcpPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_srv_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_srv_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointNames.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_srv_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_srv_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvQrcode.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_srv_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIndicator.srv"
  "${MSG_I_FLAGS}"
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_srv_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvPartialDischarge.srv"
  "${MSG_I_FLAGS}"
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)
_generate_srv_nodejs(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvMotionOffsets.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
)

### Generating Module File
_generate_module_nodejs(whi_interfaces
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(whi_interfaces_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(whi_interfaces_generate_messages whi_interfaces_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiEng.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBattery.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiMotionState.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBoxes.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiRcState.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTaskState.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiLineChart2D.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationAction.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvTcpPose.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointPose.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointNames.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIo.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvQrcode.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIndicator.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvPartialDischarge.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvMotionOffsets.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_nodejs _whi_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whi_interfaces_gennodejs)
add_dependencies(whi_interfaces_gennodejs whi_interfaces_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whi_interfaces_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiEng.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBattery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiMotionState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiRcState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTaskState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiLineChart2D.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_msg_py(whi_interfaces
  "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)

### Generating Services
_generate_srv_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvTcpPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_srv_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_srv_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointNames.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_srv_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_srv_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvQrcode.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_srv_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIndicator.srv"
  "${MSG_I_FLAGS}"
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_srv_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvPartialDischarge.srv"
  "${MSG_I_FLAGS}"
  "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)
_generate_srv_py(whi_interfaces
  "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvMotionOffsets.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
)

### Generating Module File
_generate_module_py(whi_interfaces
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(whi_interfaces_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(whi_interfaces_generate_messages whi_interfaces_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiEng.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBattery.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiMotionState.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTcpPose.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiJointPose.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBox.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiBoundingBoxes.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiIndicator.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiRcState.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiTaskState.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiPartialDischarge.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiVectorFloat.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/msg/WhiLineChart2D.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationAction.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionGoal.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionResult.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationActionFeedback.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationGoal.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationResult.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/devel/share/whi_interfaces/msg/PoseRegistrationFeedback.msg" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvTcpPose.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointPose.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvJointNames.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIo.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvQrcode.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvIndicator.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvPartialDischarge.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaosu/catkin_ws/src/whi_interfaces/srv/WhiSrvMotionOffsets.srv" NAME_WE)
add_dependencies(whi_interfaces_generate_messages_py _whi_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whi_interfaces_genpy)
add_dependencies(whi_interfaces_genpy whi_interfaces_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whi_interfaces_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whi_interfaces
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(whi_interfaces_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(whi_interfaces_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(whi_interfaces_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET moveit_msgs_generate_messages_cpp)
  add_dependencies(whi_interfaces_generate_messages_cpp moveit_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whi_interfaces
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(whi_interfaces_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(whi_interfaces_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(whi_interfaces_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET moveit_msgs_generate_messages_eus)
  add_dependencies(whi_interfaces_generate_messages_eus moveit_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whi_interfaces
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(whi_interfaces_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(whi_interfaces_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(whi_interfaces_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET moveit_msgs_generate_messages_lisp)
  add_dependencies(whi_interfaces_generate_messages_lisp moveit_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whi_interfaces
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(whi_interfaces_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(whi_interfaces_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(whi_interfaces_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET moveit_msgs_generate_messages_nodejs)
  add_dependencies(whi_interfaces_generate_messages_nodejs moveit_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whi_interfaces
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(whi_interfaces_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(whi_interfaces_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(whi_interfaces_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET moveit_msgs_generate_messages_py)
  add_dependencies(whi_interfaces_generate_messages_py moveit_msgs_generate_messages_py)
endif()
