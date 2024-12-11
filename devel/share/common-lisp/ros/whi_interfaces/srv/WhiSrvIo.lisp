; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-srv)


;//! \htmlinclude WhiSrvIo-request.msg.html

(cl:defclass <WhiSrvIo-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (addr
    :reader addr
    :initarg :addr
    :type cl:integer
    :initform 0)
   (level
    :reader level
    :initarg :level
    :type cl:fixnum
    :initform 0)
   (operation
    :reader operation
    :initarg :operation
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WhiSrvIo-request (<WhiSrvIo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvIo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvIo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvIo-request> is deprecated: use whi_interfaces-srv:WhiSrvIo-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <WhiSrvIo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:name-val is deprecated.  Use whi_interfaces-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'addr-val :lambda-list '(m))
(cl:defmethod addr-val ((m <WhiSrvIo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:addr-val is deprecated.  Use whi_interfaces-srv:addr instead.")
  (addr m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <WhiSrvIo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:level-val is deprecated.  Use whi_interfaces-srv:level instead.")
  (level m))

(cl:ensure-generic-function 'operation-val :lambda-list '(m))
(cl:defmethod operation-val ((m <WhiSrvIo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:operation-val is deprecated.  Use whi_interfaces-srv:operation instead.")
  (operation m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WhiSrvIo-request>)))
    "Constants for message type '<WhiSrvIo-request>"
  '((:OPER_READ . 0)
    (:OPER_WRITE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WhiSrvIo-request)))
    "Constants for message type 'WhiSrvIo-request"
  '((:OPER_READ . 0)
    (:OPER_WRITE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvIo-request>) ostream)
  "Serializes a message object of type '<WhiSrvIo-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'addr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operation)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvIo-request>) istream)
  "Deserializes a message object of type '<WhiSrvIo-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'addr) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operation)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvIo-request>)))
  "Returns string type for a service object of type '<WhiSrvIo-request>"
  "whi_interfaces/WhiSrvIoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvIo-request)))
  "Returns string type for a service object of type 'WhiSrvIo-request"
  "whi_interfaces/WhiSrvIoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvIo-request>)))
  "Returns md5sum for a message object of type '<WhiSrvIo-request>"
  "06304a0a11512b6f81b205a97a00fb19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvIo-request)))
  "Returns md5sum for a message object of type 'WhiSrvIo-request"
  "06304a0a11512b6f81b205a97a00fb19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvIo-request>)))
  "Returns full string definition for message of type '<WhiSrvIo-request>"
  (cl:format cl:nil "uint8 OPER_READ=0~%uint8 OPER_WRITE=1~%string name~%int32 addr~%uint8 level~%uint8 operation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvIo-request)))
  "Returns full string definition for message of type 'WhiSrvIo-request"
  (cl:format cl:nil "uint8 OPER_READ=0~%uint8 OPER_WRITE=1~%string name~%int32 addr~%uint8 level~%uint8 operation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvIo-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvIo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvIo-request
    (cl:cons ':name (name msg))
    (cl:cons ':addr (addr msg))
    (cl:cons ':level (level msg))
    (cl:cons ':operation (operation msg))
))
;//! \htmlinclude WhiSrvIo-response.msg.html

(cl:defclass <WhiSrvIo-response> (roslisp-msg-protocol:ros-message)
  ((level
    :reader level
    :initarg :level
    :type cl:fixnum
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WhiSrvIo-response (<WhiSrvIo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvIo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvIo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvIo-response> is deprecated: use whi_interfaces-srv:WhiSrvIo-response instead.")))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <WhiSrvIo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:level-val is deprecated.  Use whi_interfaces-srv:level instead.")
  (level m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <WhiSrvIo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:result-val is deprecated.  Use whi_interfaces-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvIo-response>) ostream)
  "Serializes a message object of type '<WhiSrvIo-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvIo-response>) istream)
  "Deserializes a message object of type '<WhiSrvIo-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvIo-response>)))
  "Returns string type for a service object of type '<WhiSrvIo-response>"
  "whi_interfaces/WhiSrvIoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvIo-response)))
  "Returns string type for a service object of type 'WhiSrvIo-response"
  "whi_interfaces/WhiSrvIoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvIo-response>)))
  "Returns md5sum for a message object of type '<WhiSrvIo-response>"
  "06304a0a11512b6f81b205a97a00fb19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvIo-response)))
  "Returns md5sum for a message object of type 'WhiSrvIo-response"
  "06304a0a11512b6f81b205a97a00fb19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvIo-response>)))
  "Returns full string definition for message of type '<WhiSrvIo-response>"
  (cl:format cl:nil "uint8 level~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvIo-response)))
  "Returns full string definition for message of type 'WhiSrvIo-response"
  (cl:format cl:nil "uint8 level~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvIo-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvIo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvIo-response
    (cl:cons ':level (level msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WhiSrvIo)))
  'WhiSrvIo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WhiSrvIo)))
  'WhiSrvIo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvIo)))
  "Returns string type for a service object of type '<WhiSrvIo>"
  "whi_interfaces/WhiSrvIo")