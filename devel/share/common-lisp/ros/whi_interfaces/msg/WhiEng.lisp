; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-msg)


;//! \htmlinclude WhiEng.msg.html

(cl:defclass <WhiEng> (roslisp-msg-protocol:ros-message)
  ((eng_flag
    :reader eng_flag
    :initarg :eng_flag
    :type cl:integer
    :initform 0))
)

(cl:defclass WhiEng (<WhiEng>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiEng>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiEng)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-msg:<WhiEng> is deprecated: use whi_interfaces-msg:WhiEng instead.")))

(cl:ensure-generic-function 'eng_flag-val :lambda-list '(m))
(cl:defmethod eng_flag-val ((m <WhiEng>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:eng_flag-val is deprecated.  Use whi_interfaces-msg:eng_flag instead.")
  (eng_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiEng>) ostream)
  "Serializes a message object of type '<WhiEng>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'eng_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'eng_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'eng_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'eng_flag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiEng>) istream)
  "Deserializes a message object of type '<WhiEng>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'eng_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'eng_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'eng_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'eng_flag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiEng>)))
  "Returns string type for a message object of type '<WhiEng>"
  "whi_interfaces/WhiEng")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiEng)))
  "Returns string type for a message object of type 'WhiEng"
  "whi_interfaces/WhiEng")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiEng>)))
  "Returns md5sum for a message object of type '<WhiEng>"
  "48e7e2fd83ff95e2f7e6c60dd652932f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiEng)))
  "Returns md5sum for a message object of type 'WhiEng"
  "48e7e2fd83ff95e2f7e6c60dd652932f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiEng>)))
  "Returns full string definition for message of type '<WhiEng>"
  (cl:format cl:nil "uint32 eng_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiEng)))
  "Returns full string definition for message of type 'WhiEng"
  (cl:format cl:nil "uint32 eng_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiEng>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiEng>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiEng
    (cl:cons ':eng_flag (eng_flag msg))
))
