;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiLineChart2D)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiLineChart2D (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHILINECHART2D")
  (make-package "WHI_INTERFACES::WHILINECHART2D"))

(in-package "ROS")
;;//! \htmlinclude WhiLineChart2D.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass whi_interfaces::WhiLineChart2D
  :super ros::object
  :slots (_header _array ))

(defmethod whi_interfaces::WhiLineChart2D
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:array __array) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _array __array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:array
   (&rest __array)
   (if (keywordp (car __array))
       (send* _array __array)
     (progn
       (if __array (setq _array (car __array)))
       _array)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; whi_interfaces/WhiVectorFloat[] _array
    (apply #'+ (send-all _array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; whi_interfaces/WhiVectorFloat[] _array
     (write-long (length _array) s)
     (dolist (elem _array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; whi_interfaces/WhiVectorFloat[] _array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _array (let (r) (dotimes (i n) (push (instance whi_interfaces::WhiVectorFloat :init) r)) r))
     (dolist (elem- _array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get whi_interfaces::WhiLineChart2D :md5sum-) "cb475f588b905accb37a4b48f499ac78")
(setf (get whi_interfaces::WhiLineChart2D :datatype-) "whi_interfaces/WhiLineChart2D")
(setf (get whi_interfaces::WhiLineChart2D :definition-)
      "std_msgs/Header header
WhiVectorFloat[] array

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
MSG: whi_interfaces/WhiVectorFloat
string name
float32[] data
string[] items_name
string[] items_unit

")



(provide :whi_interfaces/WhiLineChart2D "cb475f588b905accb37a4b48f499ac78")


