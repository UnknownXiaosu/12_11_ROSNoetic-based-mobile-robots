;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiBoundingBoxes)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiBoundingBoxes (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHIBOUNDINGBOXES")
  (make-package "WHI_INTERFACES::WHIBOUNDINGBOXES"))

(in-package "ROS")
;;//! \htmlinclude WhiBoundingBoxes.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass whi_interfaces::WhiBoundingBoxes
  :super ros::object
  :slots (_header _image_header _bounding_boxes ))

(defmethod whi_interfaces::WhiBoundingBoxes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:image_header __image_header) (instance std_msgs::Header :init))
    ((:bounding_boxes __bounding_boxes) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _image_header __image_header)
   (setq _bounding_boxes __bounding_boxes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:image_header
   (&rest __image_header)
   (if (keywordp (car __image_header))
       (send* _image_header __image_header)
     (progn
       (if __image_header (setq _image_header (car __image_header)))
       _image_header)))
  (:bounding_boxes
   (&rest __bounding_boxes)
   (if (keywordp (car __bounding_boxes))
       (send* _bounding_boxes __bounding_boxes)
     (progn
       (if __bounding_boxes (setq _bounding_boxes (car __bounding_boxes)))
       _bounding_boxes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Header _image_header
    (send _image_header :serialization-length)
    ;; whi_interfaces/WhiBoundingBox[] _bounding_boxes
    (apply #'+ (send-all _bounding_boxes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Header _image_header
       (send _image_header :serialize s)
     ;; whi_interfaces/WhiBoundingBox[] _bounding_boxes
     (write-long (length _bounding_boxes) s)
     (dolist (elem _bounding_boxes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Header _image_header
     (send _image_header :deserialize buf ptr-) (incf ptr- (send _image_header :serialization-length))
   ;; whi_interfaces/WhiBoundingBox[] _bounding_boxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bounding_boxes (let (r) (dotimes (i n) (push (instance whi_interfaces::WhiBoundingBox :init) r)) r))
     (dolist (elem- _bounding_boxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get whi_interfaces::WhiBoundingBoxes :md5sum-) "8911449558f3b056d38d5267f17d8949")
(setf (get whi_interfaces::WhiBoundingBoxes :datatype-) "whi_interfaces/WhiBoundingBoxes")
(setf (get whi_interfaces::WhiBoundingBoxes :definition-)
      "Header header
Header image_header
WhiBoundingBox[] bounding_boxes

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: whi_interfaces/WhiBoundingBox
string cls
float64 acc_prob
string state
float64 state_prob
geometry_msgs/Pose left_top
geometry_msgs/Pose right_bottom
geometry_msgs/Pose init_pose
geometry_msgs/Pose target_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :whi_interfaces/WhiBoundingBoxes "8911449558f3b056d38d5267f17d8949")


