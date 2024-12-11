; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-msg)


;//! \htmlinclude WhiRcState.msg.html

(cl:defclass <WhiRcState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WhiRcState (<WhiRcState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiRcState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiRcState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-msg:<WhiRcState> is deprecated: use whi_interfaces-msg:WhiRcState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WhiRcState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:header-val is deprecated.  Use whi_interfaces-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <WhiRcState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:state-val is deprecated.  Use whi_interfaces-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WhiRcState>)))
    "Constants for message type '<WhiRcState>"
  '((:STA_REMOTE . 0)
    (:STA_AUTO . 1)
    (:STA_CLEAR_FAULT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WhiRcState)))
    "Constants for message type 'WhiRcState"
  '((:STA_REMOTE . 0)
    (:STA_AUTO . 1)
    (:STA_CLEAR_FAULT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiRcState>) ostream)
  "Serializes a message object of type '<WhiRcState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiRcState>) istream)
  "Deserializes a message object of type '<WhiRcState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiRcState>)))
  "Returns string type for a message object of type '<WhiRcState>"
  "whi_interfaces/WhiRcState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiRcState)))
  "Returns string type for a message object of type 'WhiRcState"
  "whi_interfaces/WhiRcState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiRcState>)))
  "Returns md5sum for a message object of type '<WhiRcState>"
  "077256083eac163c4a7899965f98951e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiRcState)))
  "Returns md5sum for a message object of type 'WhiRcState"
  "077256083eac163c4a7899965f98951e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiRcState>)))
  "Returns full string definition for message of type '<WhiRcState>"
  (cl:format cl:nil "std_msgs/Header header~%uint8 state~%uint8 STA_REMOTE=0~%uint8 STA_AUTO=1~%uint8 STA_CLEAR_FAULT=3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiRcState)))
  "Returns full string definition for message of type 'WhiRcState"
  (cl:format cl:nil "std_msgs/Header header~%uint8 state~%uint8 STA_REMOTE=0~%uint8 STA_AUTO=1~%uint8 STA_CLEAR_FAULT=3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiRcState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiRcState>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiRcState
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
