; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-msg)


;//! \htmlinclude WhiJointPose.msg.html

(cl:defclass <WhiJointPose> (roslisp-msg-protocol:ros-message)
  ((joint_pose
    :reader joint_pose
    :initarg :joint_pose
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState))
   (joint_constraints
    :reader joint_constraints
    :initarg :joint_constraints
    :type (cl:vector moveit_msgs-msg:JointConstraint)
   :initform (cl:make-array 0 :element-type 'moveit_msgs-msg:JointConstraint :initial-element (cl:make-instance 'moveit_msgs-msg:JointConstraint)))
   (velocity_scale
    :reader velocity_scale
    :initarg :velocity_scale
    :type cl:float
    :initform 0.0)
   (acceleration_scale
    :reader acceleration_scale
    :initarg :acceleration_scale
    :type cl:float
    :initform 0.0)
   (is_relative
    :reader is_relative
    :initarg :is_relative
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WhiJointPose (<WhiJointPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiJointPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiJointPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-msg:<WhiJointPose> is deprecated: use whi_interfaces-msg:WhiJointPose instead.")))

(cl:ensure-generic-function 'joint_pose-val :lambda-list '(m))
(cl:defmethod joint_pose-val ((m <WhiJointPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:joint_pose-val is deprecated.  Use whi_interfaces-msg:joint_pose instead.")
  (joint_pose m))

(cl:ensure-generic-function 'joint_constraints-val :lambda-list '(m))
(cl:defmethod joint_constraints-val ((m <WhiJointPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:joint_constraints-val is deprecated.  Use whi_interfaces-msg:joint_constraints instead.")
  (joint_constraints m))

(cl:ensure-generic-function 'velocity_scale-val :lambda-list '(m))
(cl:defmethod velocity_scale-val ((m <WhiJointPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:velocity_scale-val is deprecated.  Use whi_interfaces-msg:velocity_scale instead.")
  (velocity_scale m))

(cl:ensure-generic-function 'acceleration_scale-val :lambda-list '(m))
(cl:defmethod acceleration_scale-val ((m <WhiJointPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:acceleration_scale-val is deprecated.  Use whi_interfaces-msg:acceleration_scale instead.")
  (acceleration_scale m))

(cl:ensure-generic-function 'is_relative-val :lambda-list '(m))
(cl:defmethod is_relative-val ((m <WhiJointPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:is_relative-val is deprecated.  Use whi_interfaces-msg:is_relative instead.")
  (is_relative m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiJointPose>) ostream)
  "Serializes a message object of type '<WhiJointPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_constraints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joint_constraints))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acceleration_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_relative) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiJointPose>) istream)
  "Deserializes a message object of type '<WhiJointPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_constraints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_constraints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'moveit_msgs-msg:JointConstraint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_scale) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration_scale) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_relative) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiJointPose>)))
  "Returns string type for a message object of type '<WhiJointPose>"
  "whi_interfaces/WhiJointPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiJointPose)))
  "Returns string type for a message object of type 'WhiJointPose"
  "whi_interfaces/WhiJointPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiJointPose>)))
  "Returns md5sum for a message object of type '<WhiJointPose>"
  "4d4b7c6e8d1edf04f19e65b1ff509b38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiJointPose)))
  "Returns md5sum for a message object of type 'WhiJointPose"
  "4d4b7c6e8d1edf04f19e65b1ff509b38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiJointPose>)))
  "Returns full string definition for message of type '<WhiJointPose>"
  (cl:format cl:nil "sensor_msgs/JointState joint_pose~%moveit_msgs/JointConstraint[] joint_constraints~%float64 velocity_scale~%float64 acceleration_scale~%bool is_relative~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: moveit_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)~%float64 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiJointPose)))
  "Returns full string definition for message of type 'WhiJointPose"
  (cl:format cl:nil "sensor_msgs/JointState joint_pose~%moveit_msgs/JointConstraint[] joint_constraints~%float64 velocity_scale~%float64 acceleration_scale~%bool is_relative~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: moveit_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)~%float64 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiJointPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_constraints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiJointPose>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiJointPose
    (cl:cons ':joint_pose (joint_pose msg))
    (cl:cons ':joint_constraints (joint_constraints msg))
    (cl:cons ':velocity_scale (velocity_scale msg))
    (cl:cons ':acceleration_scale (acceleration_scale msg))
    (cl:cons ':is_relative (is_relative msg))
))
