; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-srv)


;//! \htmlinclude WhiSrvQrcode-request.msg.html

(cl:defclass <WhiSrvQrcode-request> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass WhiSrvQrcode-request (<WhiSrvQrcode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvQrcode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvQrcode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvQrcode-request> is deprecated: use whi_interfaces-srv:WhiSrvQrcode-request instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <WhiSrvQrcode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:count-val is deprecated.  Use whi_interfaces-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvQrcode-request>) ostream)
  "Serializes a message object of type '<WhiSrvQrcode-request>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvQrcode-request>) istream)
  "Deserializes a message object of type '<WhiSrvQrcode-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvQrcode-request>)))
  "Returns string type for a service object of type '<WhiSrvQrcode-request>"
  "whi_interfaces/WhiSrvQrcodeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvQrcode-request)))
  "Returns string type for a service object of type 'WhiSrvQrcode-request"
  "whi_interfaces/WhiSrvQrcodeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvQrcode-request>)))
  "Returns md5sum for a message object of type '<WhiSrvQrcode-request>"
  "7a9928f647b8395ed6c3faa691d3de34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvQrcode-request)))
  "Returns md5sum for a message object of type 'WhiSrvQrcode-request"
  "7a9928f647b8395ed6c3faa691d3de34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvQrcode-request>)))
  "Returns full string definition for message of type '<WhiSrvQrcode-request>"
  (cl:format cl:nil "int32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvQrcode-request)))
  "Returns full string definition for message of type 'WhiSrvQrcode-request"
  (cl:format cl:nil "int32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvQrcode-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvQrcode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvQrcode-request
    (cl:cons ':count (count msg))
))
;//! \htmlinclude WhiSrvQrcode-response.msg.html

(cl:defclass <WhiSrvQrcode-response> (roslisp-msg-protocol:ros-message)
  ((code
    :reader code
    :initarg :code
    :type cl:string
    :initform "")
   (offset_pose
    :reader offset_pose
    :initarg :offset_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (eulers
    :reader eulers
    :initarg :eulers
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (eulers_degree
    :reader eulers_degree
    :initarg :eulers_degree
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass WhiSrvQrcode-response (<WhiSrvQrcode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvQrcode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvQrcode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvQrcode-response> is deprecated: use whi_interfaces-srv:WhiSrvQrcode-response instead.")))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <WhiSrvQrcode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:code-val is deprecated.  Use whi_interfaces-srv:code instead.")
  (code m))

(cl:ensure-generic-function 'offset_pose-val :lambda-list '(m))
(cl:defmethod offset_pose-val ((m <WhiSrvQrcode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:offset_pose-val is deprecated.  Use whi_interfaces-srv:offset_pose instead.")
  (offset_pose m))

(cl:ensure-generic-function 'eulers-val :lambda-list '(m))
(cl:defmethod eulers-val ((m <WhiSrvQrcode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:eulers-val is deprecated.  Use whi_interfaces-srv:eulers instead.")
  (eulers m))

(cl:ensure-generic-function 'eulers_degree-val :lambda-list '(m))
(cl:defmethod eulers_degree-val ((m <WhiSrvQrcode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:eulers_degree-val is deprecated.  Use whi_interfaces-srv:eulers_degree instead.")
  (eulers_degree m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvQrcode-response>) ostream)
  "Serializes a message object of type '<WhiSrvQrcode-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'code))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offset_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'eulers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'eulers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'eulers_degree))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'eulers_degree))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvQrcode-response>) istream)
  "Deserializes a message object of type '<WhiSrvQrcode-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offset_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'eulers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'eulers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'eulers_degree) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'eulers_degree)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvQrcode-response>)))
  "Returns string type for a service object of type '<WhiSrvQrcode-response>"
  "whi_interfaces/WhiSrvQrcodeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvQrcode-response)))
  "Returns string type for a service object of type 'WhiSrvQrcode-response"
  "whi_interfaces/WhiSrvQrcodeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvQrcode-response>)))
  "Returns md5sum for a message object of type '<WhiSrvQrcode-response>"
  "7a9928f647b8395ed6c3faa691d3de34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvQrcode-response)))
  "Returns md5sum for a message object of type 'WhiSrvQrcode-response"
  "7a9928f647b8395ed6c3faa691d3de34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvQrcode-response>)))
  "Returns full string definition for message of type '<WhiSrvQrcode-response>"
  (cl:format cl:nil "string code~%geometry_msgs/PoseStamped offset_pose~%float64[] eulers~%float64[] eulers_degree~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvQrcode-response)))
  "Returns full string definition for message of type 'WhiSrvQrcode-response"
  (cl:format cl:nil "string code~%geometry_msgs/PoseStamped offset_pose~%float64[] eulers~%float64[] eulers_degree~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvQrcode-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'code))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offset_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'eulers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'eulers_degree) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvQrcode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvQrcode-response
    (cl:cons ':code (code msg))
    (cl:cons ':offset_pose (offset_pose msg))
    (cl:cons ':eulers (eulers msg))
    (cl:cons ':eulers_degree (eulers_degree msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WhiSrvQrcode)))
  'WhiSrvQrcode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WhiSrvQrcode)))
  'WhiSrvQrcode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvQrcode)))
  "Returns string type for a service object of type '<WhiSrvQrcode>"
  "whi_interfaces/WhiSrvQrcode")