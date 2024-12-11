;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiJointPose)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiJointPose (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHIJOINTPOSE")
  (make-package "WHI_INTERFACES::WHIJOINTPOSE"))

(in-package "ROS")
;;//! \htmlinclude WhiJointPose.msg.html
(if (not (find-package "MOVEIT_MSGS"))
  (ros::roseus-add-msgs "moveit_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass whi_interfaces::WhiJointPose
  :super ros::object
  :slots (_joint_pose _joint_constraints _velocity_scale _acceleration_scale _is_relative ))

(defmethod whi_interfaces::WhiJointPose
  (:init
   (&key
    ((:joint_pose __joint_pose) (instance sensor_msgs::JointState :init))
    ((:joint_constraints __joint_constraints) ())
    ((:velocity_scale __velocity_scale) 0.0)
    ((:acceleration_scale __acceleration_scale) 0.0)
    ((:is_relative __is_relative) nil)
    )
   (send-super :init)
   (setq _joint_pose __joint_pose)
   (setq _joint_constraints __joint_constraints)
   (setq _velocity_scale (float __velocity_scale))
   (setq _acceleration_scale (float __acceleration_scale))
   (setq _is_relative __is_relative)
   self)
  (:joint_pose
   (&rest __joint_pose)
   (if (keywordp (car __joint_pose))
       (send* _joint_pose __joint_pose)
     (progn
       (if __joint_pose (setq _joint_pose (car __joint_pose)))
       _joint_pose)))
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
  (:is_relative
   (&optional (__is_relative :null))
   (if (not (eq __is_relative :null)) (setq _is_relative __is_relative)) _is_relative)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/JointState _joint_pose
    (send _joint_pose :serialization-length)
    ;; moveit_msgs/JointConstraint[] _joint_constraints
    (apply #'+ (send-all _joint_constraints :serialization-length)) 4
    ;; float64 _velocity_scale
    8
    ;; float64 _acceleration_scale
    8
    ;; bool _is_relative
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/JointState _joint_pose
       (send _joint_pose :serialize s)
     ;; moveit_msgs/JointConstraint[] _joint_constraints
     (write-long (length _joint_constraints) s)
     (dolist (elem _joint_constraints)
       (send elem :serialize s)
       )
     ;; float64 _velocity_scale
       (sys::poke _velocity_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration_scale
       (sys::poke _acceleration_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_relative
       (if _is_relative (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/JointState _joint_pose
     (send _joint_pose :deserialize buf ptr-) (incf ptr- (send _joint_pose :serialization-length))
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
   ;; bool _is_relative
     (setq _is_relative (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get whi_interfaces::WhiJointPose :md5sum-) "4d4b7c6e8d1edf04f19e65b1ff509b38")
(setf (get whi_interfaces::WhiJointPose :datatype-) "whi_interfaces/WhiJointPose")
(setf (get whi_interfaces::WhiJointPose :definition-)
      "sensor_msgs/JointState joint_pose
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

")



(provide :whi_interfaces/WhiJointPose "4d4b7c6e8d1edf04f19e65b1ff509b38")


