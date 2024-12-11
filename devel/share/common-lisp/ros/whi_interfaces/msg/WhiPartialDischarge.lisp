; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-msg)


;//! \htmlinclude WhiPartialDischarge.msg.html

(cl:defclass <WhiPartialDischarge> (roslisp-msg-protocol:ros-message)
  ((peak
    :reader peak
    :initarg :peak
    :type cl:float
    :initform 0.0)
   (average
    :reader average
    :initarg :average
    :type cl:float
    :initform 0.0)
   (noise
    :reader noise
    :initarg :noise
    :type cl:float
    :initform 0.0)
   (phase
    :reader phase
    :initarg :phase
    :type cl:float
    :initform 0.0)
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (cycle_count
    :reader cycle_count
    :initarg :cycle_count
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (channel
    :reader channel
    :initarg :channel
    :type cl:string
    :initform ""))
)

(cl:defclass WhiPartialDischarge (<WhiPartialDischarge>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiPartialDischarge>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiPartialDischarge)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-msg:<WhiPartialDischarge> is deprecated: use whi_interfaces-msg:WhiPartialDischarge instead.")))

(cl:ensure-generic-function 'peak-val :lambda-list '(m))
(cl:defmethod peak-val ((m <WhiPartialDischarge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:peak-val is deprecated.  Use whi_interfaces-msg:peak instead.")
  (peak m))

(cl:ensure-generic-function 'average-val :lambda-list '(m))
(cl:defmethod average-val ((m <WhiPartialDischarge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:average-val is deprecated.  Use whi_interfaces-msg:average instead.")
  (average m))

(cl:ensure-generic-function 'noise-val :lambda-list '(m))
(cl:defmethod noise-val ((m <WhiPartialDischarge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:noise-val is deprecated.  Use whi_interfaces-msg:noise instead.")
  (noise m))

(cl:ensure-generic-function 'phase-val :lambda-list '(m))
(cl:defmethod phase-val ((m <WhiPartialDischarge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:phase-val is deprecated.  Use whi_interfaces-msg:phase instead.")
  (phase m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <WhiPartialDischarge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:count-val is deprecated.  Use whi_interfaces-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'cycle_count-val :lambda-list '(m))
(cl:defmethod cycle_count-val ((m <WhiPartialDischarge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:cycle_count-val is deprecated.  Use whi_interfaces-msg:cycle_count instead.")
  (cycle_count m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <WhiPartialDischarge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:state-val is deprecated.  Use whi_interfaces-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <WhiPartialDischarge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:channel-val is deprecated.  Use whi_interfaces-msg:channel instead.")
  (channel m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WhiPartialDischarge>)))
    "Constants for message type '<WhiPartialDischarge>"
  '((:STA_SENSOR_ERROR . 0)
    (:STA_NORMAL . 1)
    (:STA_CHANNEL_1_ALERT . 2)
    (:STA_DISCHARGE_HIGH . 3)
    (:STA_DISCHARGE_ALERT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WhiPartialDischarge)))
    "Constants for message type 'WhiPartialDischarge"
  '((:STA_SENSOR_ERROR . 0)
    (:STA_NORMAL . 1)
    (:STA_CHANNEL_1_ALERT . 2)
    (:STA_DISCHARGE_HIGH . 3)
    (:STA_DISCHARGE_ALERT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiPartialDischarge>) ostream)
  "Serializes a message object of type '<WhiPartialDischarge>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'peak))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'average))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'noise))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'phase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cycle_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'channel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'channel))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiPartialDischarge>) istream)
  "Deserializes a message object of type '<WhiPartialDischarge>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'peak) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'average) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'noise) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phase) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cycle_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'channel) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'channel) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiPartialDischarge>)))
  "Returns string type for a message object of type '<WhiPartialDischarge>"
  "whi_interfaces/WhiPartialDischarge")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiPartialDischarge)))
  "Returns string type for a message object of type 'WhiPartialDischarge"
  "whi_interfaces/WhiPartialDischarge")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiPartialDischarge>)))
  "Returns md5sum for a message object of type '<WhiPartialDischarge>"
  "55e97ba29b0bc0c839a3411f235ee2dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiPartialDischarge)))
  "Returns md5sum for a message object of type 'WhiPartialDischarge"
  "55e97ba29b0bc0c839a3411f235ee2dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiPartialDischarge>)))
  "Returns full string definition for message of type '<WhiPartialDischarge>"
  (cl:format cl:nil "uint8 STA_SENSOR_ERROR=0~%uint8 STA_NORMAL=1~%uint8 STA_CHANNEL_1_ALERT=2~%uint8 STA_DISCHARGE_HIGH=3~%uint8 STA_DISCHARGE_ALERT=4~%float32 peak~%float32 average~%float32 noise~%float32 phase~%int32 count~%int32 cycle_count~%uint8 state~%string channel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiPartialDischarge)))
  "Returns full string definition for message of type 'WhiPartialDischarge"
  (cl:format cl:nil "uint8 STA_SENSOR_ERROR=0~%uint8 STA_NORMAL=1~%uint8 STA_CHANNEL_1_ALERT=2~%uint8 STA_DISCHARGE_HIGH=3~%uint8 STA_DISCHARGE_ALERT=4~%float32 peak~%float32 average~%float32 noise~%float32 phase~%int32 count~%int32 cycle_count~%uint8 state~%string channel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiPartialDischarge>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     1
     4 (cl:length (cl:slot-value msg 'channel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiPartialDischarge>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiPartialDischarge
    (cl:cons ':peak (peak msg))
    (cl:cons ':average (average msg))
    (cl:cons ':noise (noise msg))
    (cl:cons ':phase (phase msg))
    (cl:cons ':count (count msg))
    (cl:cons ':cycle_count (cycle_count msg))
    (cl:cons ':state (state msg))
    (cl:cons ':channel (channel msg))
))
