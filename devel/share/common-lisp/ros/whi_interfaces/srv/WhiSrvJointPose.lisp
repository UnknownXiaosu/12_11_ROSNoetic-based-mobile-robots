; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-srv)


;//! \htmlinclude WhiSrvJointPose-request.msg.html

(cl:defclass <WhiSrvJointPose-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type whi_interfaces-msg:WhiJointPose
    :initform (cl:make-instance 'whi_interfaces-msg:WhiJointPose)))
)

(cl:defclass WhiSrvJointPose-request (<WhiSrvJointPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvJointPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvJointPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvJointPose-request> is deprecated: use whi_interfaces-srv:WhiSrvJointPose-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <WhiSrvJointPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:pose-val is deprecated.  Use whi_interfaces-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvJointPose-request>) ostream)
  "Serializes a message object of type '<WhiSrvJointPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvJointPose-request>) istream)
  "Deserializes a message object of type '<WhiSrvJointPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvJointPose-request>)))
  "Returns string type for a service object of type '<WhiSrvJointPose-request>"
  "whi_interfaces/WhiSrvJointPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvJointPose-request)))
  "Returns string type for a service object of type 'WhiSrvJointPose-request"
  "whi_interfaces/WhiSrvJointPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvJointPose-request>)))
  "Returns md5sum for a message object of type '<WhiSrvJointPose-request>"
  "7171209ddb400c1d7e51ff842e42bd1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvJointPose-request)))
  "Returns md5sum for a message object of type 'WhiSrvJointPose-request"
  "7171209ddb400c1d7e51ff842e42bd1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvJointPose-request>)))
  "Returns full string definition for message of type '<WhiSrvJointPose-request>"
  (cl:format cl:nil "whi_interfaces/WhiJointPose pose~%~%================================================================================~%MSG: whi_interfaces/WhiJointPose~%sensor_msgs/JointState joint_pose~%moveit_msgs/JointConstraint[] joint_constraints~%float64 velocity_scale~%float64 acceleration_scale~%bool is_relative~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: moveit_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)~%float64 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvJointPose-request)))
  "Returns full string definition for message of type 'WhiSrvJointPose-request"
  (cl:format cl:nil "whi_interfaces/WhiJointPose pose~%~%================================================================================~%MSG: whi_interfaces/WhiJointPose~%sensor_msgs/JointState joint_pose~%moveit_msgs/JointConstraint[] joint_constraints~%float64 velocity_scale~%float64 acceleration_scale~%bool is_relative~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: moveit_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)~%float64 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvJointPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvJointPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvJointPose-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude WhiSrvJointPose-response.msg.html

(cl:defclass <WhiSrvJointPose-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WhiSrvJointPose-response (<WhiSrvJointPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvJointPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvJointPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvJointPose-response> is deprecated: use whi_interfaces-srv:WhiSrvJointPose-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <WhiSrvJointPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:result-val is deprecated.  Use whi_interfaces-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvJointPose-response>) ostream)
  "Serializes a message object of type '<WhiSrvJointPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvJointPose-response>) istream)
  "Deserializes a message object of type '<WhiSrvJointPose-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvJointPose-response>)))
  "Returns string type for a service object of type '<WhiSrvJointPose-response>"
  "whi_interfaces/WhiSrvJointPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvJointPose-response)))
  "Returns string type for a service object of type 'WhiSrvJointPose-response"
  "whi_interfaces/WhiSrvJointPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvJointPose-response>)))
  "Returns md5sum for a message object of type '<WhiSrvJointPose-response>"
  "7171209ddb400c1d7e51ff842e42bd1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvJointPose-response)))
  "Returns md5sum for a message object of type 'WhiSrvJointPose-response"
  "7171209ddb400c1d7e51ff842e42bd1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvJointPose-response>)))
  "Returns full string definition for message of type '<WhiSrvJointPose-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvJointPose-response)))
  "Returns full string definition for message of type 'WhiSrvJointPose-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvJointPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvJointPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvJointPose-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WhiSrvJointPose)))
  'WhiSrvJointPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WhiSrvJointPose)))
  'WhiSrvJointPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvJointPose)))
  "Returns string type for a service object of type '<WhiSrvJointPose>"
  "whi_interfaces/WhiSrvJointPose")