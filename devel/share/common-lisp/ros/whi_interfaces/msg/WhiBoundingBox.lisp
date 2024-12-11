; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-msg)


;//! \htmlinclude WhiBoundingBox.msg.html

(cl:defclass <WhiBoundingBox> (roslisp-msg-protocol:ros-message)
  ((cls
    :reader cls
    :initarg :cls
    :type cl:string
    :initform "")
   (acc_prob
    :reader acc_prob
    :initarg :acc_prob
    :type cl:float
    :initform 0.0)
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (state_prob
    :reader state_prob
    :initarg :state_prob
    :type cl:float
    :initform 0.0)
   (left_top
    :reader left_top
    :initarg :left_top
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (right_bottom
    :reader right_bottom
    :initarg :right_bottom
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (init_pose
    :reader init_pose
    :initarg :init_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass WhiBoundingBox (<WhiBoundingBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiBoundingBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiBoundingBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-msg:<WhiBoundingBox> is deprecated: use whi_interfaces-msg:WhiBoundingBox instead.")))

(cl:ensure-generic-function 'cls-val :lambda-list '(m))
(cl:defmethod cls-val ((m <WhiBoundingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:cls-val is deprecated.  Use whi_interfaces-msg:cls instead.")
  (cls m))

(cl:ensure-generic-function 'acc_prob-val :lambda-list '(m))
(cl:defmethod acc_prob-val ((m <WhiBoundingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:acc_prob-val is deprecated.  Use whi_interfaces-msg:acc_prob instead.")
  (acc_prob m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <WhiBoundingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:state-val is deprecated.  Use whi_interfaces-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'state_prob-val :lambda-list '(m))
(cl:defmethod state_prob-val ((m <WhiBoundingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:state_prob-val is deprecated.  Use whi_interfaces-msg:state_prob instead.")
  (state_prob m))

(cl:ensure-generic-function 'left_top-val :lambda-list '(m))
(cl:defmethod left_top-val ((m <WhiBoundingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:left_top-val is deprecated.  Use whi_interfaces-msg:left_top instead.")
  (left_top m))

(cl:ensure-generic-function 'right_bottom-val :lambda-list '(m))
(cl:defmethod right_bottom-val ((m <WhiBoundingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:right_bottom-val is deprecated.  Use whi_interfaces-msg:right_bottom instead.")
  (right_bottom m))

(cl:ensure-generic-function 'init_pose-val :lambda-list '(m))
(cl:defmethod init_pose-val ((m <WhiBoundingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:init_pose-val is deprecated.  Use whi_interfaces-msg:init_pose instead.")
  (init_pose m))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <WhiBoundingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:target_pose-val is deprecated.  Use whi_interfaces-msg:target_pose instead.")
  (target_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiBoundingBox>) ostream)
  "Serializes a message object of type '<WhiBoundingBox>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cls))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'state_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_top) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_bottom) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'init_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiBoundingBox>) istream)
  "Deserializes a message object of type '<WhiBoundingBox>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cls) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cls) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_prob) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'state_prob) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_top) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_bottom) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'init_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiBoundingBox>)))
  "Returns string type for a message object of type '<WhiBoundingBox>"
  "whi_interfaces/WhiBoundingBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiBoundingBox)))
  "Returns string type for a message object of type 'WhiBoundingBox"
  "whi_interfaces/WhiBoundingBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiBoundingBox>)))
  "Returns md5sum for a message object of type '<WhiBoundingBox>"
  "ecec343062f58885bb78dad9096cfd28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiBoundingBox)))
  "Returns md5sum for a message object of type 'WhiBoundingBox"
  "ecec343062f58885bb78dad9096cfd28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiBoundingBox>)))
  "Returns full string definition for message of type '<WhiBoundingBox>"
  (cl:format cl:nil "string cls~%float64 acc_prob~%string state~%float64 state_prob~%geometry_msgs/Pose left_top~%geometry_msgs/Pose right_bottom~%geometry_msgs/Pose init_pose~%geometry_msgs/Pose target_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiBoundingBox)))
  "Returns full string definition for message of type 'WhiBoundingBox"
  (cl:format cl:nil "string cls~%float64 acc_prob~%string state~%float64 state_prob~%geometry_msgs/Pose left_top~%geometry_msgs/Pose right_bottom~%geometry_msgs/Pose init_pose~%geometry_msgs/Pose target_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiBoundingBox>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cls))
     8
     4 (cl:length (cl:slot-value msg 'state))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_top))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_bottom))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'init_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiBoundingBox>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiBoundingBox
    (cl:cons ':cls (cls msg))
    (cl:cons ':acc_prob (acc_prob msg))
    (cl:cons ':state (state msg))
    (cl:cons ':state_prob (state_prob msg))
    (cl:cons ':left_top (left_top msg))
    (cl:cons ':right_bottom (right_bottom msg))
    (cl:cons ':init_pose (init_pose msg))
    (cl:cons ':target_pose (target_pose msg))
))
