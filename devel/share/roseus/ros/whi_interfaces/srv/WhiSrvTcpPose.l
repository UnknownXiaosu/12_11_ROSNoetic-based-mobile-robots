;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiSrvTcpPose)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiSrvTcpPose (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHISRVTCPPOSE")
  (make-package "WHI_INTERFACES::WHISRVTCPPOSE"))
(unless (find-package "WHI_INTERFACES::WHISRVTCPPOSEREQUEST")
  (make-package "WHI_INTERFACES::WHISRVTCPPOSEREQUEST"))
(unless (find-package "WHI_INTERFACES::WHISRVTCPPOSERESPONSE")
  (make-package "WHI_INTERFACES::WHISRVTCPPOSERESPONSE"))

(in-package "ROS")





(defclass whi_interfaces::WhiSrvTcpPoseRequest
  :super ros::object
  :slots (_pose ))

(defmethod whi_interfaces::WhiSrvTcpPoseRequest
  (:init
   (&key
    ((:pose __pose) (instance whi_interfaces::WhiTcpPose :init))
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
    ;; whi_interfaces/WhiTcpPose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; whi_interfaces/WhiTcpPose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; whi_interfaces/WhiTcpPose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass whi_interfaces::WhiSrvTcpPoseResponse
  :super ros::object
  :slots (_result ))

(defmethod whi_interfaces::WhiSrvTcpPoseResponse
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

(defclass whi_interfaces::WhiSrvTcpPose
  :super ros::object
  :slots ())

(setf (get whi_interfaces::WhiSrvTcpPose :md5sum-) "02c8b6908754e6d9bbc689bc093a0d87")
(setf (get whi_interfaces::WhiSrvTcpPose :datatype-) "whi_interfaces/WhiSrvTcpPose")
(setf (get whi_interfaces::WhiSrvTcpPose :request) whi_interfaces::WhiSrvTcpPoseRequest)
(setf (get whi_interfaces::WhiSrvTcpPose :response) whi_interfaces::WhiSrvTcpPoseResponse)

(defmethod whi_interfaces::WhiSrvTcpPoseRequest
  (:response () (instance whi_interfaces::WhiSrvTcpPoseResponse :init)))

(setf (get whi_interfaces::WhiSrvTcpPoseRequest :md5sum-) "02c8b6908754e6d9bbc689bc093a0d87")
(setf (get whi_interfaces::WhiSrvTcpPoseRequest :datatype-) "whi_interfaces/WhiSrvTcpPoseRequest")
(setf (get whi_interfaces::WhiSrvTcpPoseRequest :definition-)
      "whi_interfaces/WhiTcpPose pose

================================================================================
MSG: whi_interfaces/WhiTcpPose
string pose_group
geometry_msgs/PoseStamped tcp_pose
moveit_msgs/JointConstraint[] joint_constraints
float64 velocity_scale
float64 acceleration_scale
bool is_cartesian

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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

(setf (get whi_interfaces::WhiSrvTcpPoseResponse :md5sum-) "02c8b6908754e6d9bbc689bc093a0d87")
(setf (get whi_interfaces::WhiSrvTcpPoseResponse :datatype-) "whi_interfaces/WhiSrvTcpPoseResponse")
(setf (get whi_interfaces::WhiSrvTcpPoseResponse :definition-)
      "whi_interfaces/WhiTcpPose pose

================================================================================
MSG: whi_interfaces/WhiTcpPose
string pose_group
geometry_msgs/PoseStamped tcp_pose
moveit_msgs/JointConstraint[] joint_constraints
float64 velocity_scale
float64 acceleration_scale
bool is_cartesian

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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



(provide :whi_interfaces/WhiSrvTcpPose "02c8b6908754e6d9bbc689bc093a0d87")


