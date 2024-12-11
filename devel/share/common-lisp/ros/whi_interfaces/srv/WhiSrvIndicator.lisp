; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-srv)


;//! \htmlinclude WhiSrvIndicator-request.msg.html

(cl:defclass <WhiSrvIndicator-request> (roslisp-msg-protocol:ros-message)
  ((instance
    :reader instance
    :initarg :instance
    :type whi_interfaces-msg:WhiIndicator
    :initform (cl:make-instance 'whi_interfaces-msg:WhiIndicator)))
)

(cl:defclass WhiSrvIndicator-request (<WhiSrvIndicator-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvIndicator-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvIndicator-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvIndicator-request> is deprecated: use whi_interfaces-srv:WhiSrvIndicator-request instead.")))

(cl:ensure-generic-function 'instance-val :lambda-list '(m))
(cl:defmethod instance-val ((m <WhiSrvIndicator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:instance-val is deprecated.  Use whi_interfaces-srv:instance instead.")
  (instance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvIndicator-request>) ostream)
  "Serializes a message object of type '<WhiSrvIndicator-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'instance) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvIndicator-request>) istream)
  "Deserializes a message object of type '<WhiSrvIndicator-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'instance) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvIndicator-request>)))
  "Returns string type for a service object of type '<WhiSrvIndicator-request>"
  "whi_interfaces/WhiSrvIndicatorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvIndicator-request)))
  "Returns string type for a service object of type 'WhiSrvIndicator-request"
  "whi_interfaces/WhiSrvIndicatorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvIndicator-request>)))
  "Returns md5sum for a message object of type '<WhiSrvIndicator-request>"
  "ec1649436397c99428e3f4dff37492e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvIndicator-request)))
  "Returns md5sum for a message object of type 'WhiSrvIndicator-request"
  "ec1649436397c99428e3f4dff37492e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvIndicator-request>)))
  "Returns full string definition for message of type '<WhiSrvIndicator-request>"
  (cl:format cl:nil "whi_interfaces/WhiIndicator instance~%~%================================================================================~%MSG: whi_interfaces/WhiIndicator~%string name~%string param~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvIndicator-request)))
  "Returns full string definition for message of type 'WhiSrvIndicator-request"
  (cl:format cl:nil "whi_interfaces/WhiIndicator instance~%~%================================================================================~%MSG: whi_interfaces/WhiIndicator~%string name~%string param~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvIndicator-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'instance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvIndicator-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvIndicator-request
    (cl:cons ':instance (instance msg))
))
;//! \htmlinclude WhiSrvIndicator-response.msg.html

(cl:defclass <WhiSrvIndicator-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WhiSrvIndicator-response (<WhiSrvIndicator-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvIndicator-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvIndicator-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvIndicator-response> is deprecated: use whi_interfaces-srv:WhiSrvIndicator-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <WhiSrvIndicator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:status-val is deprecated.  Use whi_interfaces-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <WhiSrvIndicator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:result-val is deprecated.  Use whi_interfaces-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvIndicator-response>) ostream)
  "Serializes a message object of type '<WhiSrvIndicator-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvIndicator-response>) istream)
  "Deserializes a message object of type '<WhiSrvIndicator-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvIndicator-response>)))
  "Returns string type for a service object of type '<WhiSrvIndicator-response>"
  "whi_interfaces/WhiSrvIndicatorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvIndicator-response)))
  "Returns string type for a service object of type 'WhiSrvIndicator-response"
  "whi_interfaces/WhiSrvIndicatorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvIndicator-response>)))
  "Returns md5sum for a message object of type '<WhiSrvIndicator-response>"
  "ec1649436397c99428e3f4dff37492e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvIndicator-response)))
  "Returns md5sum for a message object of type 'WhiSrvIndicator-response"
  "ec1649436397c99428e3f4dff37492e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvIndicator-response>)))
  "Returns full string definition for message of type '<WhiSrvIndicator-response>"
  (cl:format cl:nil "uint32 status~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvIndicator-response)))
  "Returns full string definition for message of type 'WhiSrvIndicator-response"
  (cl:format cl:nil "uint32 status~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvIndicator-response>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvIndicator-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvIndicator-response
    (cl:cons ':status (status msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WhiSrvIndicator)))
  'WhiSrvIndicator-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WhiSrvIndicator)))
  'WhiSrvIndicator-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvIndicator)))
  "Returns string type for a service object of type '<WhiSrvIndicator>"
  "whi_interfaces/WhiSrvIndicator")