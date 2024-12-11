; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-msg)


;//! \htmlinclude WhiMotionState.msg.html

(cl:defclass <WhiMotionState> (roslisp-msg-protocol:ros-message)
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

(cl:defclass WhiMotionState (<WhiMotionState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiMotionState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiMotionState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-msg:<WhiMotionState> is deprecated: use whi_interfaces-msg:WhiMotionState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WhiMotionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:header-val is deprecated.  Use whi_interfaces-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <WhiMotionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:state-val is deprecated.  Use whi_interfaces-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WhiMotionState>)))
    "Constants for message type '<WhiMotionState>"
  '((:STA_STANDBY . 0)
    (:STA_BOOTING . 1)
    (:STA_RUNNING . 2)
    (:STA_TURNING_LEFT . 3)
    (:STA_TURNING_RIGHT . 4)
    (:STA_OPERATING . 5)
    (:STA_CRITICAL_COLLISION . 6)
    (:STA_CRITICAL_COLLISION_CLEAR . 7)
    (:STA_ESTOP . 8)
    (:STA_ESTOP_CLEAR . 9)
    (:STA_FAULT . 10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WhiMotionState)))
    "Constants for message type 'WhiMotionState"
  '((:STA_STANDBY . 0)
    (:STA_BOOTING . 1)
    (:STA_RUNNING . 2)
    (:STA_TURNING_LEFT . 3)
    (:STA_TURNING_RIGHT . 4)
    (:STA_OPERATING . 5)
    (:STA_CRITICAL_COLLISION . 6)
    (:STA_CRITICAL_COLLISION_CLEAR . 7)
    (:STA_ESTOP . 8)
    (:STA_ESTOP_CLEAR . 9)
    (:STA_FAULT . 10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiMotionState>) ostream)
  "Serializes a message object of type '<WhiMotionState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiMotionState>) istream)
  "Deserializes a message object of type '<WhiMotionState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiMotionState>)))
  "Returns string type for a message object of type '<WhiMotionState>"
  "whi_interfaces/WhiMotionState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiMotionState)))
  "Returns string type for a message object of type 'WhiMotionState"
  "whi_interfaces/WhiMotionState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiMotionState>)))
  "Returns md5sum for a message object of type '<WhiMotionState>"
  "91bce09ed9af109b0e85285fbbe8d1bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiMotionState)))
  "Returns md5sum for a message object of type 'WhiMotionState"
  "91bce09ed9af109b0e85285fbbe8d1bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiMotionState>)))
  "Returns full string definition for message of type '<WhiMotionState>"
  (cl:format cl:nil "std_msgs/Header header~%uint8 state~%uint8 STA_STANDBY=0~%uint8 STA_BOOTING=1~%uint8 STA_RUNNING=2~%uint8 STA_TURNING_LEFT=3~%uint8 STA_TURNING_RIGHT=4~%uint8 STA_OPERATING=5~%uint8 STA_CRITICAL_COLLISION=6~%uint8 STA_CRITICAL_COLLISION_CLEAR=7~%uint8 STA_ESTOP=8~%uint8 STA_ESTOP_CLEAR=9~%uint8 STA_FAULT=10~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiMotionState)))
  "Returns full string definition for message of type 'WhiMotionState"
  (cl:format cl:nil "std_msgs/Header header~%uint8 state~%uint8 STA_STANDBY=0~%uint8 STA_BOOTING=1~%uint8 STA_RUNNING=2~%uint8 STA_TURNING_LEFT=3~%uint8 STA_TURNING_RIGHT=4~%uint8 STA_OPERATING=5~%uint8 STA_CRITICAL_COLLISION=6~%uint8 STA_CRITICAL_COLLISION_CLEAR=7~%uint8 STA_ESTOP=8~%uint8 STA_ESTOP_CLEAR=9~%uint8 STA_FAULT=10~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiMotionState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiMotionState>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiMotionState
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
