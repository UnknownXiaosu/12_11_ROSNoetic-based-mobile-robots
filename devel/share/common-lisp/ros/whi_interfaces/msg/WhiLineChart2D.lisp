; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-msg)


;//! \htmlinclude WhiLineChart2D.msg.html

(cl:defclass <WhiLineChart2D> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (array
    :reader array
    :initarg :array
    :type (cl:vector whi_interfaces-msg:WhiVectorFloat)
   :initform (cl:make-array 0 :element-type 'whi_interfaces-msg:WhiVectorFloat :initial-element (cl:make-instance 'whi_interfaces-msg:WhiVectorFloat))))
)

(cl:defclass WhiLineChart2D (<WhiLineChart2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiLineChart2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiLineChart2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-msg:<WhiLineChart2D> is deprecated: use whi_interfaces-msg:WhiLineChart2D instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WhiLineChart2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:header-val is deprecated.  Use whi_interfaces-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'array-val :lambda-list '(m))
(cl:defmethod array-val ((m <WhiLineChart2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:array-val is deprecated.  Use whi_interfaces-msg:array instead.")
  (array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiLineChart2D>) ostream)
  "Serializes a message object of type '<WhiLineChart2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiLineChart2D>) istream)
  "Deserializes a message object of type '<WhiLineChart2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'whi_interfaces-msg:WhiVectorFloat))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiLineChart2D>)))
  "Returns string type for a message object of type '<WhiLineChart2D>"
  "whi_interfaces/WhiLineChart2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiLineChart2D)))
  "Returns string type for a message object of type 'WhiLineChart2D"
  "whi_interfaces/WhiLineChart2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiLineChart2D>)))
  "Returns md5sum for a message object of type '<WhiLineChart2D>"
  "cb475f588b905accb37a4b48f499ac78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiLineChart2D)))
  "Returns md5sum for a message object of type 'WhiLineChart2D"
  "cb475f588b905accb37a4b48f499ac78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiLineChart2D>)))
  "Returns full string definition for message of type '<WhiLineChart2D>"
  (cl:format cl:nil "std_msgs/Header header~%WhiVectorFloat[] array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: whi_interfaces/WhiVectorFloat~%string name~%float32[] data~%string[] items_name~%string[] items_unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiLineChart2D)))
  "Returns full string definition for message of type 'WhiLineChart2D"
  (cl:format cl:nil "std_msgs/Header header~%WhiVectorFloat[] array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: whi_interfaces/WhiVectorFloat~%string name~%float32[] data~%string[] items_name~%string[] items_unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiLineChart2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiLineChart2D>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiLineChart2D
    (cl:cons ':header (header msg))
    (cl:cons ':array (array msg))
))
