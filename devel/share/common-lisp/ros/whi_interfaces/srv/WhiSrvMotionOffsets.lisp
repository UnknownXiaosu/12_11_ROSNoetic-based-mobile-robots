; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-srv)


;//! \htmlinclude WhiSrvMotionOffsets-request.msg.html

(cl:defclass <WhiSrvMotionOffsets-request> (roslisp-msg-protocol:ros-message)
  ((offsets
    :reader offsets
    :initarg :offsets
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass WhiSrvMotionOffsets-request (<WhiSrvMotionOffsets-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvMotionOffsets-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvMotionOffsets-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvMotionOffsets-request> is deprecated: use whi_interfaces-srv:WhiSrvMotionOffsets-request instead.")))

(cl:ensure-generic-function 'offsets-val :lambda-list '(m))
(cl:defmethod offsets-val ((m <WhiSrvMotionOffsets-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:offsets-val is deprecated.  Use whi_interfaces-srv:offsets instead.")
  (offsets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvMotionOffsets-request>) ostream)
  "Serializes a message object of type '<WhiSrvMotionOffsets-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'offsets))))
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
   (cl:slot-value msg 'offsets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvMotionOffsets-request>) istream)
  "Deserializes a message object of type '<WhiSrvMotionOffsets-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'offsets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'offsets)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvMotionOffsets-request>)))
  "Returns string type for a service object of type '<WhiSrvMotionOffsets-request>"
  "whi_interfaces/WhiSrvMotionOffsetsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvMotionOffsets-request)))
  "Returns string type for a service object of type 'WhiSrvMotionOffsets-request"
  "whi_interfaces/WhiSrvMotionOffsetsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvMotionOffsets-request>)))
  "Returns md5sum for a message object of type '<WhiSrvMotionOffsets-request>"
  "4c6fb4cf42eea618330dd37f243af28e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvMotionOffsets-request)))
  "Returns md5sum for a message object of type 'WhiSrvMotionOffsets-request"
  "4c6fb4cf42eea618330dd37f243af28e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvMotionOffsets-request>)))
  "Returns full string definition for message of type '<WhiSrvMotionOffsets-request>"
  (cl:format cl:nil "float64[] offsets~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvMotionOffsets-request)))
  "Returns full string definition for message of type 'WhiSrvMotionOffsets-request"
  (cl:format cl:nil "float64[] offsets~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvMotionOffsets-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'offsets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvMotionOffsets-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvMotionOffsets-request
    (cl:cons ':offsets (offsets msg))
))
;//! \htmlinclude WhiSrvMotionOffsets-response.msg.html

(cl:defclass <WhiSrvMotionOffsets-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WhiSrvMotionOffsets-response (<WhiSrvMotionOffsets-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvMotionOffsets-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvMotionOffsets-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvMotionOffsets-response> is deprecated: use whi_interfaces-srv:WhiSrvMotionOffsets-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <WhiSrvMotionOffsets-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:result-val is deprecated.  Use whi_interfaces-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvMotionOffsets-response>) ostream)
  "Serializes a message object of type '<WhiSrvMotionOffsets-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvMotionOffsets-response>) istream)
  "Deserializes a message object of type '<WhiSrvMotionOffsets-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvMotionOffsets-response>)))
  "Returns string type for a service object of type '<WhiSrvMotionOffsets-response>"
  "whi_interfaces/WhiSrvMotionOffsetsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvMotionOffsets-response)))
  "Returns string type for a service object of type 'WhiSrvMotionOffsets-response"
  "whi_interfaces/WhiSrvMotionOffsetsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvMotionOffsets-response>)))
  "Returns md5sum for a message object of type '<WhiSrvMotionOffsets-response>"
  "4c6fb4cf42eea618330dd37f243af28e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvMotionOffsets-response)))
  "Returns md5sum for a message object of type 'WhiSrvMotionOffsets-response"
  "4c6fb4cf42eea618330dd37f243af28e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvMotionOffsets-response>)))
  "Returns full string definition for message of type '<WhiSrvMotionOffsets-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvMotionOffsets-response)))
  "Returns full string definition for message of type 'WhiSrvMotionOffsets-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvMotionOffsets-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvMotionOffsets-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvMotionOffsets-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WhiSrvMotionOffsets)))
  'WhiSrvMotionOffsets-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WhiSrvMotionOffsets)))
  'WhiSrvMotionOffsets-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvMotionOffsets)))
  "Returns string type for a service object of type '<WhiSrvMotionOffsets>"
  "whi_interfaces/WhiSrvMotionOffsets")