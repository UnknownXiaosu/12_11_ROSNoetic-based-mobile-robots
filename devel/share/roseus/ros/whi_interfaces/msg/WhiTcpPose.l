;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiTcpPose)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiTcpPose (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHITCPPOSE")
  (make-package "WHI_INTERFACES::WHITCPPOSE"))

(in-package "ROS")
;;//! \htmlinclude WhiTcpPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "MOVEIT_MSGS"))
  (ros::roseus-add-msgs "moveit_msgs"))


(defclass whi_interfaces::WhiTcpPose
  :super ros::object
  :slots (_pose_group _tcp_pose _joint_constraints _velocity_scale _acceleration_scale _is_cartesian ))

(defmethod whi_interfaces::WhiTcpPose
  (:init
   (&key
    ((:pose_group __pose_group) "")
    ((:tcp_pose __tcp_pose) (instance geometry_msgs::PoseStamped :init))
    ((:joint_constraints __joint_constraints) ())
    ((:velocity_scale __velocity_scale) 0.0)
    ((:acceleration_scale __acceleration_scale) 0.0)
    ((:is_cartesian __is_cartesian) nil)
    )
   (send-super :init)
   (setq _pose_group (string __pose_group))
   (setq _tcp_pose __tcp_pose)
   (setq _joint_constraints __joint_constraints)
   (setq _velocity_scale (float __velocity_scale))
   (setq _acceleration_scale (float __acceleration_scale))
   (setq _is_cartesian __is_cartesian)
   self)
  (:pose_group
   (&optional __pose_group)
   (if __pose_group (setq _pose_group __pose_group)) _pose_group)
  (:tcp_pose
   (&rest __tcp_pose)
   (if (keywordp (car __tcp_pose))
       (send* _tcp_pose __tcp_pose)
     (progn
       (if __tcp_pose (setq _tcp_pose (car __tcp_pose)))
       _tcp_pose)))
  (:joint_constraints
   (&rest __joint_constraints)
   (if (keywordp (car __joint_constraints))
       (send* _joint_constraints __joint_constraints)
     (progn
       (if __joint_constraints (setq _joint_constraints (car __joint_constraints)))
       _joint_constraints)))
  (:velocity_scale
   (&optional __velocity_scale)
   (if __velocity_scale (setq _velocity_scale __velocity_scale)) _velocity_scale)
  (:acceleration_scale
   (&optional __acceleration_scale)
   (if __acceleration_scale (setq _acceleration_scale __acceleration_scale)) _acceleration_scale)
  (:is_cartesian
   (&optional (__is_cartesian :null))
   (if (not (eq __is_cartesian :null)) (setq _is_cartesian __is_cartesian)) _is_cartesian)
  (:serialization-length
   ()
   (+
    ;; string _pose_group
    4 (length _pose_group)
    ;; geometry_msgs/PoseStamped _tcp_pose
    (send _tcp_pose :serialization-length)
    ;; moveit_msgs/JointConstraint[] _joint_constraints
    (apply #'+ (send-all _joint_constraints :serialization-length)) 4
    ;; float64 _velocity_scale
    8
    ;; float64 _acceleration_scale
    8
    ;; bool _is_cartesian
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pose_group
       (write-long (length _pose_group) s) (princ _pose_group s)
     ;; geometry_msgs/PoseStamped _tcp_pose
       (send _tcp_pose :serialize s)
     ;; moveit_msgs/JointConstraint[] _joint_constraints
     (write-long (length _joint_constraints) s)
     (dolist (elem _joint_constraints)
       (send elem :serialize s)
       )
     ;; float64 _velocity_scale
       (sys::poke _velocity_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration_scale
       (sys::poke _acceleration_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_cartesian
       (if _is_cartesian (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pose_group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pose_group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _tcp_pose
     (send _tcp_pose :deserialize buf ptr-) (incf ptr- (send _tcp_pose :serialization-length))
   ;; moveit_msgs/JointConstraint[] _joint_constraints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_constraints (let (r) (dotimes (i n) (push (instance moveit_msgs::JointConstraint :init) r)) r))
     (dolist (elem- _joint_constraints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _velocity_scale
     (setq _velocity_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration_scale
     (setq _acceleration_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_cartesian
     (setq _is_cartesian (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get whi_interfaces::WhiTcpPose :md5sum-) "dda58110693227076bb879db634d52fb")
(setf (get whi_interfaces::WhiTcpPose :datatype-) "whi_interfaces/WhiTcpPose")
(setf (get whi_interfaces::WhiTcpPose :definition-)
      "string pose_group
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

")



(provide :whi_interfaces/WhiTcpPose "dda58110693227076bb879db634d52fb")


