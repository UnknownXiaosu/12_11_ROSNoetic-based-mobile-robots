; Auto-generated. Do not edit!


(cl:in-package whi_interfaces-msg)


;//! \htmlinclude WhiBoundingBoxes.msg.html

(cl:defclass <WhiBoundingBoxes> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (image_header
    :reader image_header
    :initarg :image_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bounding_boxes
    :reader bounding_boxes
    :initarg :bounding_boxes
    :type (cl:vector whi_interfaces-msg:WhiBoundingBox)
   :initform (cl:make-array 0 :element-type 'whi_interfaces-msg:WhiBoundingBox :initial-element (cl:make-instance 'whi_interfaces-msg:WhiBoundingBox))))
)

(cl:defclass WhiBoundingBoxes (<WhiBoundingBoxes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WhiBoundingBoxes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WhiBoundingBoxes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whi_interfaces-msg:<WhiBoundingBoxes> is deprecated: use whi_interfaces-msg:WhiBoundingBoxes instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WhiBoundingBoxes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:header-val is deprecated.  Use whi_interfaces-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'image_header-val :lambda-list '(m))
(cl:defmethod image_header-val ((m <WhiBoundingBoxes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:image_header-val is deprecated.  Use whi_interfaces-msg:image_header instead.")
  (image_header m))

(cl:ensure-generic-function 'bounding_boxes-val :lambda-list '(m))
(cl:defmethod bounding_boxes-val ((m <WhiBoundingBoxes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whi_interfaces-msg:bounding_boxes-val is deprecated.  Use whi_interfaces-msg:bounding_boxes instead.")
  (bounding_boxes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WhiBoundingBoxes>) ostream)
  "Serializes a message object of type '<WhiBoundingBoxes>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bounding_boxes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bounding_boxes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WhiBoundingBoxes>) istream)
  "Deserializes a message object of type '<WhiBoundingBoxes>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bounding_boxes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bounding_boxes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'whi_interfaces-msg:WhiBoundingBox))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WhiBoundingBoxes>)))
  "Returns string type for a message object of type '<WhiBoundingBoxes>"
  "whi_interfaces/WhiBoundingBoxes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WhiBoundingBoxes)))
  "Returns string type for a message object of type 'WhiBoundingBoxes"
  "whi_interfaces/WhiBoundingBoxes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WhiBoundingBoxes>)))
  "Returns md5sum for a message object of type '<WhiBoundingBoxes>"
  "8911449558f3b056d38d5267f17d8949")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WhiBoundingBoxes)))
  "Returns md5sum for a message object of type 'WhiBoundingBoxes"
  "8911449558f3b056d38d5267f17d8949")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WhiBoundingBoxes>)))
  "Returns full string definition for message of type '<WhiBoundingBoxes>"
  (cl:format cl:nil "Header header~%Header image_header~%WhiBoundingBox[] bounding_boxes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: whi_interfaces/WhiBoundingBox~%string cls~%float64 acc_prob~%string state~%float64 state_prob~%geometry_msgs/Pose left_top~%geometry_msgs/Pose right_bottom~%geometry_msgs/Pose init_pose~%geometry_msgs/Pose target_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WhiBoundingBoxes)))
  "Returns full string definition for message of type 'WhiBoundingBoxes"
  (cl:format cl:nil "Header header~%Header image_header~%WhiBoundingBox[] bounding_boxes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: whi_interfaces/WhiBoundingBox~%string cls~%float64 acc_prob~%string state~%float64 state_prob~%geometry_msgs/Pose left_top~%geometry_msgs/Pose right_bottom~%geometry_msgs/Pose init_pose~%geometry_msgs/Pose target_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WhiBoundingBoxes>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bounding_boxes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WhiBoundingBoxes>))
  "Converts a ROS message object to a list"
  (cl:list 'WhiBoundingBoxes
    (cl:cons ':header (header msg))
    (cl:cons ':image_header (image_header msg))
    (cl:cons ':bounding_boxes (bounding_boxes msg))
))
