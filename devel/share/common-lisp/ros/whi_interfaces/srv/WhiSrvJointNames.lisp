; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-srv)


;//! \htmlinclude WhiSrvJointNames-request.msg.html

(cl:defclass <WhiSrvJointNames-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass WhiSrvJointNames-request (<WhiSrvJointNames-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvJointNames-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvJointNames-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvJointNames-request> is deprecated: use whi_interfaces-srv:WhiSrvJointNames-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvJointNames-request>) ostream)
  "Serializes a message object of type '<WhiSrvJointNames-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvJointNames-request>) istream)
  "Deserializes a message object of type '<WhiSrvJointNames-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvJointNames-request>)))
  "Returns string type for a service object of type '<WhiSrvJointNames-request>"
  "whi_interfaces/WhiSrvJointNamesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvJointNames-request)))
  "Returns string type for a service object of type 'WhiSrvJointNames-request"
  "whi_interfaces/WhiSrvJointNamesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvJointNames-request>)))
  "Returns md5sum for a message object of type '<WhiSrvJointNames-request>"
  "9701ae99cbeecda2e4cd171db381bf43")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvJointNames-request)))
  "Returns md5sum for a message object of type 'WhiSrvJointNames-request"
  "9701ae99cbeecda2e4cd171db381bf43")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvJointNames-request>)))
  "Returns full string definition for message of type '<WhiSrvJointNames-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvJointNames-request)))
  "Returns full string definition for message of type 'WhiSrvJointNames-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvJointNames-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvJointNames-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvJointNames-request
))
;//! \htmlinclude WhiSrvJointNames-response.msg.html

(cl:defclass <WhiSrvJointNames-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass WhiSrvJointNames-response (<WhiSrvJointNames-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiSrvJointNames-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiSrvJointNames-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-srv:<WhiSrvJointNames-response> is deprecated: use whi_interfaces-srv:WhiSrvJointNames-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <WhiSrvJointNames-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:result-val is deprecated.  Use whi_interfaces-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <WhiSrvJointNames-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-srv:joint_names-val is deprecated.  Use whi_interfaces-srv:joint_names instead.")
  (joint_names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiSrvJointNames-response>) ostream)
  "Serializes a message object of type '<WhiSrvJointNames-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'joint_names))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiSrvJointNames-response>) istream)
  "Deserializes a message object of type '<WhiSrvJointNames-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiSrvJointNames-response>)))
  "Returns string type for a service object of type '<WhiSrvJointNames-response>"
  "whi_interfaces/WhiSrvJointNamesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvJointNames-response)))
  "Returns string type for a service object of type 'WhiSrvJointNames-response"
  "whi_interfaces/WhiSrvJointNamesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiSrvJointNames-response>)))
  "Returns md5sum for a message object of type '<WhiSrvJointNames-response>"
  "9701ae99cbeecda2e4cd171db381bf43")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiSrvJointNames-response)))
  "Returns md5sum for a message object of type 'WhiSrvJointNames-response"
  "9701ae99cbeecda2e4cd171db381bf43")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiSrvJointNames-response>)))
  "Returns full string definition for message of type '<WhiSrvJointNames-response>"
  (cl:format cl:nil "bool result~%string[] joint_names~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiSrvJointNames-response)))
  "Returns full string definition for message of type 'WhiSrvJointNames-response"
  (cl:format cl:nil "bool result~%string[] joint_names~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiSrvJointNames-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiSrvJointNames-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiSrvJointNames-response
    (cl:cons ':result (result msg))
    (cl:cons ':joint_names (joint_names msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WhiSrvJointNames)))
  'WhiSrvJointNames-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WhiSrvJointNames)))
  'WhiSrvJointNames-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiSrvJointNames)))
  "Returns string type for a service object of type '<WhiSrvJointNames>"
  "whi_interfaces/WhiSrvJointNames")