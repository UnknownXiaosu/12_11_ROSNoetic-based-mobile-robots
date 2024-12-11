; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-srv)


;//! \htmlinclude WhiSrvTcpPose-request.msg.html

(cl:defclass <WhiSrvTcpPose-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type whi_interfaces-msg:WhiTcpPose
    :initform (cl:make-instance 'whi_interfaces-msg:WhiTcpPose)))
)

(cl:defclass WhiSrvTcpPose-request (<WhiSrvTcpPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvTcpPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvTcpPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvTcpPose-request> is deprecated: use whi_interfaces-srv:WhiSrvTcpPose-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <WhiSrvTcpPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:pose-val is deprecated.  Use whi_interfaces-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvTcpPose-request>) ostream)
  "Serializes a message object of type '<WhiSrvTcpPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvTcpPose-request>) istream)
  "Deserializes a message object of type '<WhiSrvTcpPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvTcpPose-request>)))
  "Returns string type for a service object of type '<WhiSrvTcpPose-request>"
  "whi_interfaces/WhiSrvTcpPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvTcpPose-request)))
  "Returns string type for a service object of type 'WhiSrvTcpPose-request"
  "whi_interfaces/WhiSrvTcpPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvTcpPose-request>)))
  "Returns md5sum for a message object of type '<WhiSrvTcpPose-request>"
  "02c8b6908754e6d9bbc689bc093a0d87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvTcpPose-request)))
  "Returns md5sum for a message object of type 'WhiSrvTcpPose-request"
  "02c8b6908754e6d9bbc689bc093a0d87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvTcpPose-request>)))
  "Returns full string definition for message of type '<WhiSrvTcpPose-request>"
  (cl:format cl:nil "whi_interfaces/WhiTcpPose pose~%~%================================================================================~%MSG: whi_interfaces/WhiTcpPose~%string pose_group~%geometry_msgs/PoseStamped tcp_pose~%moveit_msgs/JointConstraint[] joint_constraints~%float64 velocity_scale~%float64 acceleration_scale~%bool is_cartesian~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: moveit_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)~%float64 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvTcpPose-request)))
  "Returns full string definition for message of type 'WhiSrvTcpPose-request"
  (cl:format cl:nil "whi_interfaces/WhiTcpPose pose~%~%================================================================================~%MSG: whi_interfaces/WhiTcpPose~%string pose_group~%geometry_msgs/PoseStamped tcp_pose~%moveit_msgs/JointConstraint[] joint_constraints~%float64 velocity_scale~%float64 acceleration_scale~%bool is_cartesian~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: moveit_msgs/JointConstraint~%# Constrain the position of a joint to be within a certain bound~%string joint_name~%~%# the bound to be achieved is [position - tolerance_below, position + tolerance_above]~%float64 position~%float64 tolerance_above~%float64 tolerance_below~%~%# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)~%float64 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvTcpPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvTcpPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvTcpPose-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude WhiSrvTcpPose-response.msg.html

(cl:defclass <WhiSrvTcpPose-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WhiSrvTcpPose-response (<WhiSrvTcpPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvTcpPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvTcpPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvTcpPose-response> is deprecated: use whi_interfaces-srv:WhiSrvTcpPose-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <WhiSrvTcpPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:result-val is deprecated.  Use whi_interfaces-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvTcpPose-response>) ostream)
  "Serializes a message object of type '<WhiSrvTcpPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvTcpPose-response>) istream)
  "Deserializes a message object of type '<WhiSrvTcpPose-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvTcpPose-response>)))
  "Returns string type for a service object of type '<WhiSrvTcpPose-response>"
  "whi_interfaces/WhiSrvTcpPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvTcpPose-response)))
  "Returns string type for a service object of type 'WhiSrvTcpPose-response"
  "whi_interfaces/WhiSrvTcpPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvTcpPose-response>)))
  "Returns md5sum for a message object of type '<WhiSrvTcpPose-response>"
  "02c8b6908754e6d9bbc689bc093a0d87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvTcpPose-response)))
  "Returns md5sum for a message object of type 'WhiSrvTcpPose-response"
  "02c8b6908754e6d9bbc689bc093a0d87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvTcpPose-response>)))
  "Returns full string definition for message of type '<WhiSrvTcpPose-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvTcpPose-response)))
  "Returns full string definition for message of type 'WhiSrvTcpPose-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvTcpPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvTcpPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvTcpPose-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WhiSrvTcpPose)))
  'WhiSrvTcpPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WhiSrvTcpPose)))
  'WhiSrvTcpPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvTcpPose)))
  "Returns string type for a service object of type '<WhiSrvTcpPose>"
  "whi_interfaces/WhiSrvTcpPose")