;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiSrvJointPose)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiSrvJointPose (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHISRVJOINTPOSE")
  (make-package "WHI_INTERFACES::WHISRVJOINTPOSE"))
(unless (find-package "WHI_INTERFACES::WHISRVJOINTPOSEREQUEST")
  (make-package "WHI_INTERFACES::WHISRVJOINTPOSEREQUEST"))
(unless (find-package "WHI_INTERFACES::WHISRVJOINTPOSERESPONSE")
  (make-package "WHI_INTERFACES::WHISRVJOINTPOSERESPONSE"))

(in-package "ROS")





(defclass whi_interfaces::WhiSrvJointPoseRequest
  :super ros::object
  :slots (_pose ))

(defmethod whi_interfaces::WhiSrvJointPoseRequest
  (:init
   (&key
    ((:pose __pose) (instance whi_interfaces::WhiJointPose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; whi_interfaces/WhiJointPose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; whi_interfaces/WhiJointPose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; whi_interfaces/WhiJointPose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass whi_interfaces::WhiSrvJointPoseResponse
  :super ros::object
  :slots (_result ))

(defmethod whi_interfaces::WhiSrvJointPoseResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass whi_interfaces::WhiSrvJointPose
  :super ros::object
  :slots ())

(setf (get whi_interfaces::WhiSrvJointPose :md5sum-) "7171209ddb400c1d7e51ff842e42bd1f")
(setf (get whi_interfaces::WhiSrvJointPose :datatype-) "whi_interfaces/WhiSrvJointPose")
(setf (get whi_interfaces::WhiSrvJointPose :request) whi_interfaces::WhiSrvJointPoseRequest)
(setf (get whi_interfaces::WhiSrvJointPose :response) whi_interfaces::WhiSrvJointPoseResponse)

(defmethod whi_interfaces::WhiSrvJointPoseRequest
  (:response () (instance whi_interfaces::WhiSrvJointPoseResponse :init)))

(setf (get whi_interfaces::WhiSrvJointPoseRequest :md5sum-) "7171209ddb400c1d7e51ff842e42bd1f")
(setf (get whi_interfaces::WhiSrvJointPoseRequest :datatype-) "whi_interfaces/WhiSrvJointPoseRequest")
(setf (get whi_interfaces::WhiSrvJointPoseRequest :definition-)
      "whi_interfaces/WhiJointPose pose

================================================================================
MSG: whi_interfaces/WhiJointPose
sensor_msgs/JointState joint_pose
moveit_msgs/JointConstraint[] joint_constraints
float64 velocity_scale
float64 acceleration_scale
bool is_relative

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: moveit_msgs/JointConstraint
# Constrain the position of a joint to be within a certain bound
string joint_name

# the bound to be achieved is [position - tolerance_below, position + tolerance_above]
float64 position
float64 tolerance_above
float64 tolerance_below

# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
float64 weight
---
bool result

")

(setf (get whi_interfaces::WhiSrvJointPoseResponse :md5sum-) "7171209ddb400c1d7e51ff842e42bd1f")
(setf (get whi_interfaces::WhiSrvJointPoseResponse :datatype-) "whi_interfaces/WhiSrvJointPoseResponse")
(setf (get whi_interfaces::WhiSrvJointPoseResponse :definition-)
      "whi_interfaces/WhiJointPose pose

================================================================================
MSG: whi_interfaces/WhiJointPose
sensor_msgs/JointState joint_pose
moveit_msgs/JointConstraint[] joint_constraints
float64 velocity_scale
float64 acceleration_scale
bool is_relative

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: moveit_msgs/JointConstraint
# Constrain the position of a joint to be within a certain bound
string joint_name

# the bound to be achieved is [position - tolerance_below, position + tolerance_above]
float64 position
float64 tolerance_above
float64 tolerance_below

# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
float64 weight
---
bool result

")



(provide :whi_interfaces/WhiSrvJointPose "7171209ddb400c1d7e51ff842e42bd1f")


