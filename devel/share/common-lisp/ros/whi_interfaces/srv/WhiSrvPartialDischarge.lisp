; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-srv)


;//! \htmlinclude WhiSrvPartialDischarge-request.msg.html

(cl:defclass <WhiSrvPartialDischarge-request> (roslisp-msg-protocol:ros-message)
  ((addr
    :reader addr
    :initarg :addr
    :type cl:integer
    :initform 0))
)

(cl:defclass WhiSrvPartialDischarge-request (<WhiSrvPartialDischarge-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvPartialDischarge-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvPartialDischarge-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvPartialDischarge-request> is deprecated: use whi_interfaces-srv:WhiSrvPartialDischarge-request instead.")))

(cl:ensure-generic-function 'addr-val :lambda-list '(m))
(cl:defmethod addr-val ((m <WhiSrvPartialDischarge-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:addr-val is deprecated.  Use whi_interfaces-srv:addr instead.")
  (addr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvPartialDischarge-request>) ostream)
  "Serializes a message object of type '<WhiSrvPartialDischarge-request>"
  (cl:let* ((signed (cl:slot-value msg 'addr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvPartialDischarge-request>) istream)
  "Deserializes a message object of type '<WhiSrvPartialDischarge-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'addr) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvPartialDischarge-request>)))
  "Returns string type for a service object of type '<WhiSrvPartialDischarge-request>"
  "whi_interfaces/WhiSrvPartialDischargeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvPartialDischarge-request)))
  "Returns string type for a service object of type 'WhiSrvPartialDischarge-request"
  "whi_interfaces/WhiSrvPartialDischargeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvPartialDischarge-request>)))
  "Returns md5sum for a message object of type '<WhiSrvPartialDischarge-request>"
  "ecc8f660b258f268674c5e5e9427cd77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvPartialDischarge-request)))
  "Returns md5sum for a message object of type 'WhiSrvPartialDischarge-request"
  "ecc8f660b258f268674c5e5e9427cd77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvPartialDischarge-request>)))
  "Returns full string definition for message of type '<WhiSrvPartialDischarge-request>"
  (cl:format cl:nil "int32 addr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvPartialDischarge-request)))
  "Returns full string definition for message of type 'WhiSrvPartialDischarge-request"
  (cl:format cl:nil "int32 addr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvPartialDischarge-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvPartialDischarge-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvPartialDischarge-request
    (cl:cons ':addr (addr msg))
))
;//! \htmlinclude WhiSrvPartialDischarge-response.msg.html

(cl:defclass <WhiSrvPartialDischarge-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector whi_interfaces-msg:WhiPartialDischarge)
   :initform (cl:make-array 0 :element-type 'whi_interfaces-msg:WhiPartialDischarge :initial-element (cl:make-instance 'whi_interfaces-msg:WhiPartialDischarge))))
)

(cl:defclass WhiSrvPartialDischarge-response (<WhiSrvPartialDischarge-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvPartialDischarge-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvPartialDischarge-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvPartialDischarge-response> is deprecated: use whi_interfaces-srv:WhiSrvPartialDischarge-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <WhiSrvPartialDischarge-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:data-val is deprecated.  Use whi_interfaces-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvPartialDischarge-response>) ostream)
  "Serializes a message object of type '<WhiSrvPartialDischarge-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvPartialDischarge-response>) istream)
  "Deserializes a message object of type '<WhiSrvPartialDischarge-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'whi_interfaces-msg:WhiPartialDischarge))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvPartialDischarge-response>)))
  "Returns string type for a service object of type '<WhiSrvPartialDischarge-response>"
  "whi_interfaces/WhiSrvPartialDischargeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvPartialDischarge-response)))
  "Returns string type for a service object of type 'WhiSrvPartialDischarge-response"
  "whi_interfaces/WhiSrvPartialDischargeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvPartialDischarge-response>)))
  "Returns md5sum for a message object of type '<WhiSrvPartialDischarge-response>"
  "ecc8f660b258f268674c5e5e9427cd77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvPartialDischarge-response)))
  "Returns md5sum for a message object of type 'WhiSrvPartialDischarge-response"
  "ecc8f660b258f268674c5e5e9427cd77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvPartialDischarge-response>)))
  "Returns full string definition for message of type '<WhiSrvPartialDischarge-response>"
  (cl:format cl:nil "whi_interfaces/WhiPartialDischarge[] data~%~%~%================================================================================~%MSG: whi_interfaces/WhiPartialDischarge~%uint8 STA_SENSOR_ERROR=0~%uint8 STA_NORMAL=1~%uint8 STA_CHANNEL_1_ALERT=2~%uint8 STA_DISCHARGE_HIGH=3~%uint8 STA_DISCHARGE_ALERT=4~%float32 peak~%float32 average~%float32 noise~%float32 phase~%int32 count~%int32 cycle_count~%uint8 state~%string channel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvPartialDischarge-response)))
  "Returns full string definition for message of type 'WhiSrvPartialDischarge-response"
  (cl:format cl:nil "whi_interfaces/WhiPartialDischarge[] data~%~%~%================================================================================~%MSG: whi_interfaces/WhiPartialDischarge~%uint8 STA_SENSOR_ERROR=0~%uint8 STA_NORMAL=1~%uint8 STA_CHANNEL_1_ALERT=2~%uint8 STA_DISCHARGE_HIGH=3~%uint8 STA_DISCHARGE_ALERT=4~%float32 peak~%float32 average~%float32 noise~%float32 phase~%int32 count~%int32 cycle_count~%uint8 state~%string channel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvPartialDischarge-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvPartialDischarge-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvPartialDischarge-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WhiSrvPartialDischarge)))
  'WhiSrvPartialDischarge-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WhiSrvPartialDischarge)))
  'WhiSrvPartialDischarge-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvPartialDischarge)))
  "Returns string type for a service object of type '<WhiSrvPartialDischarge>"
  "whi_interfaces/WhiSrvPartialDischarge")