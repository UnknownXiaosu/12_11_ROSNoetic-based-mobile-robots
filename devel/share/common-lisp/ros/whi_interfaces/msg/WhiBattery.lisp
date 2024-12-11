; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-msg)


;//! \htmlinclude WhiBattery.msg.html

(cl:defclass <WhiBattery> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (soc
    :reader soc
    :initarg :soc
    :type cl:fixnum
    :initform 0)
   (soh
    :reader soh
    :initarg :soh
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WhiBattery (<WhiBattery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiBattery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiBattery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-msg:<WhiBattery> is deprecated: use whi_interfaces-msg:WhiBattery instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WhiBattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:header-val is deprecated.  Use whi_interfaces-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'soc-val :lambda-list '(m))
(cl:defmethod soc-val ((m <WhiBattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:soc-val is deprecated.  Use whi_interfaces-msg:soc instead.")
  (soc m))

(cl:ensure-generic-function 'soh-val :lambda-list '(m))
(cl:defmethod soh-val ((m <WhiBattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:soh-val is deprecated.  Use whi_interfaces-msg:soh instead.")
  (soh m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <WhiBattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:state-val is deprecated.  Use whi_interfaces-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WhiBattery>)))
    "Constants for message type '<WhiBattery>"
  '((:STA_NORMAL . 0)
    (:STA_CHARGING . 1)
    (:STA_NEED_CHARGING . 2)
    (:STA_GOOD_FOR_TASK . 3)
    (:STA_FULL . 4)
    (:STA_FAILURE_RECOVERING . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WhiBattery)))
    "Constants for message type 'WhiBattery"
  '((:STA_NORMAL . 0)
    (:STA_CHARGING . 1)
    (:STA_NEED_CHARGING . 2)
    (:STA_GOOD_FOR_TASK . 3)
    (:STA_FULL . 4)
    (:STA_FAILURE_RECOVERING . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiBattery>) ostream)
  "Serializes a message object of type '<WhiBattery>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'soc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'soc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'soh)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'soh)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiBattery>) istream)
  "Deserializes a message object of type '<WhiBattery>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'soc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'soc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'soh)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'soh)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiBattery>)))
  "Returns string type for a message object of type '<WhiBattery>"
  "whi_interfaces/WhiBattery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiBattery)))
  "Returns string type for a message object of type 'WhiBattery"
  "whi_interfaces/WhiBattery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiBattery>)))
  "Returns md5sum for a message object of type '<WhiBattery>"
  "3459eabd6dc37def1aa304bda6a545b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiBattery)))
  "Returns md5sum for a message object of type 'WhiBattery"
  "3459eabd6dc37def1aa304bda6a545b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiBattery>)))
  "Returns full string definition for message of type '<WhiBattery>"
  (cl:format cl:nil "std_msgs/Header header~%uint16 soc~%uint16 soh~%uint8 STA_NORMAL=0~%uint8 STA_CHARGING=1~%uint8 STA_NEED_CHARGING=2~%uint8 STA_GOOD_FOR_TASK=3~%uint8 STA_FULL=4~%uint8 STA_FAILURE_RECOVERING=5~%int8 state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiBattery)))
  "Returns full string definition for message of type 'WhiBattery"
  (cl:format cl:nil "std_msgs/Header header~%uint16 soc~%uint16 soh~%uint8 STA_NORMAL=0~%uint8 STA_CHARGING=1~%uint8 STA_NEED_CHARGING=2~%uint8 STA_GOOD_FOR_TASK=3~%uint8 STA_FULL=4~%uint8 STA_FAILURE_RECOVERING=5~%int8 state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiBattery>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiBattery>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiBattery
    (cl:cons ':header (header msg))
    (cl:cons ':soc (soc msg))
    (cl:cons ':soh (soh msg))
    (cl:cons ':state (state msg))
))
