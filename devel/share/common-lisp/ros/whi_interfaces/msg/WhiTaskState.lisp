; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-msg)


;//! \htmlinclude WhiTaskState.msg.html

(cl:defclass <WhiTaskState> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (parent_name
    :reader parent_name
    :initarg :parent_name
    :type cl:string
    :initform "")
   (info
    :reader info
    :initarg :info
    :type cl:string
    :initform ""))
)

(cl:defclass WhiTaskState (<WhiTaskState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiTaskState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiTaskState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-msg:<WhiTaskState> is deprecated: use whi_interfaces-msg:WhiTaskState instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <WhiTaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:name-val is deprecated.  Use whi_interfaces-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'parent_name-val :lambda-list '(m))
(cl:defmethod parent_name-val ((m <WhiTaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:parent_name-val is deprecated.  Use whi_interfaces-msg:parent_name instead.")
  (parent_name m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <WhiTaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:info-val is deprecated.  Use whi_interfaces-msg:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiTaskState>) ostream)
  "Serializes a message object of type '<WhiTaskState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parent_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parent_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiTaskState>) istream)
  "Deserializes a message object of type '<WhiTaskState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parent_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parent_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiTaskState>)))
  "Returns string type for a message object of type '<WhiTaskState>"
  "whi_interfaces/WhiTaskState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiTaskState)))
  "Returns string type for a message object of type 'WhiTaskState"
  "whi_interfaces/WhiTaskState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiTaskState>)))
  "Returns md5sum for a message object of type '<WhiTaskState>"
  "01ad27c42669fbf38fd676c85f58b3a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiTaskState)))
  "Returns md5sum for a message object of type 'WhiTaskState"
  "01ad27c42669fbf38fd676c85f58b3a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiTaskState>)))
  "Returns full string definition for message of type '<WhiTaskState>"
  (cl:format cl:nil "string name~%string parent_name~%string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiTaskState)))
  "Returns full string definition for message of type 'WhiTaskState"
  (cl:format cl:nil "string name~%string parent_name~%string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiTaskState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'parent_name))
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiTaskState>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiTaskState
    (cl:cons ':name (name msg))
    (cl:cons ':parent_name (parent_name msg))
    (cl:cons ':info (info msg))
))
