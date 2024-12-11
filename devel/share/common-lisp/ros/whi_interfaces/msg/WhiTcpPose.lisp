; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-msg)


;//! \htmlinclude WhiTcpPose.msg.html

(cl:defclass <WhiTcpPose> (roslisp-msg-protocol:ros-message)
  ((pose_group
    :reader pose_group
    :initarg :pose_group
    :type cl:string
    :initform "")
   (tcp_pose
    :reader tcp_pose
    :initarg :tcp_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
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
   (is_cartesian
    :reader is_cartesian
    :initarg :is_cartesian
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WhiTcpPose (<WhiTcpPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiTcpPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiTcpPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-msg:<WhiTcpPose> is deprecated: use whi_interfaces-msg:WhiTcpPose instead.")))

(cl:ensure-generic-function 'pose_group-val :lambda-list '(m))
(cl:defmethod pose_group-val ((m <WhiTcpPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:pose_group-val is deprecated.  Use whi_interfaces-msg:pose_group instead.")
  (pose_group m))

(cl:ensure-generic-function 'tcp_pose-val :lambda-list '(m))
(cl:defmethod tcp_pose-val ((m <WhiTcpPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:tcp_pose-val is deprecated.  Use whi_interfaces-msg:tcp_pose instead.")
  (tcp_pose m))

(cl:ensure-generic-function 'joint_constraints-val :lambda-list '(m))
(cl:defmethod joint_constraints-val ((m <WhiTcpPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:joint_constraints-val is deprecated.  Use whi_interfaces-msg:joint_constraints instead.")
  (joint_constraints m))

(cl:ensure-generic-function 'velocity_scale-val :lambda-list '(m))
(cl:defmethod velocity_scale-val ((m <WhiTcpPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:velocity_scale-val is deprecated.  Use whi_interfaces-msg:velocity_scale instead.")
  (velocity_scale m))

(cl:ensure-generic-function 'acceleration_scale-val :lambda-list '(m))
(cl:defmethod acceleration_scale-val ((m <WhiTcpPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:acceleration_scale-val is deprecated.  Use whi_interfaces-msg:acceleration_scale instead.")
  (acceleration_scale m))

(cl:ensure-generic-function 'is_cartesian-val :lambda-list '(m))
(cl:defmethod is_cartesian-val ((m <WhiTcpPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:is_cartesian-val is deprecated.  Use whi_interfaces-msg:is_cartesian instead.")
  (is_cartesian m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiTcpPose>) ostream)
  "Serializes a message object of type '<WhiTcpPose>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pose_group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pose_group))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tcp_pose) ostream)
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_cartesian) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiTcpPose>) istream)
  "Deserializes a message object of type '<WhiTcpPose>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pose_group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pose_group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tcp_pose) istream)
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
    (cl:setf (cl:slot-value msg 'is_cartesian) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiTcpPose>)))
  "Returns string type for a message object of type '<WhiTcpPose>"
  "whi_interfaces/WhiTcpPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiTcpPose)))
  "Returns string type for a message object of type 'WhiTcpPose"
  "whi_interfaces/WhiTcpPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiTcpPose>)))
  "Returns md5sum for a message object of type '<WhiTcpPose>"
  "dda58110693227076bb879db634d52fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiTcpPose)))
  "Returns md5sum for a message object of type 'WhiTcpPose"
  "dda58110693227076bb879db634d52fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiTcpPose>)))
  "Returns full string definition for message of type '<WhiTcpPose>"
  (cl:format cl:nil "string pose_group~%geometry_msgs/PoseStamped tcp_pose~%moveit_msgs/JointConstraint[] joint_constraints~%float64 velocity_scale~%float64 acceleration_scale~%bool is_cartesian~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: moveit_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)~%float64 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiTcpPose)))
  "Returns full string definition for message of type 'WhiTcpPose"
  (cl:format cl:nil "string pose_group~%geometry_msgs/PoseStamped tcp_pose~%moveit_msgs/JointConstraint[] joint_constraints~%float64 velocity_scale~%float64 acceleration_scale~%bool is_cartesian~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: moveit_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)~%float64 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiTcpPose>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pose_group))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tcp_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_constraints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiTcpPose>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiTcpPose
    (cl:cons ':pose_group (pose_group msg))
    (cl:cons ':tcp_pose (tcp_pose msg))
    (cl:cons ':joint_constraints (joint_constraints msg))
    (cl:cons ':velocity_scale (velocity_scale msg))
    (cl:cons ':acceleration_scale (acceleration_scale msg))
    (cl:cons ':is_cartesian (is_cartesian msg))
))
