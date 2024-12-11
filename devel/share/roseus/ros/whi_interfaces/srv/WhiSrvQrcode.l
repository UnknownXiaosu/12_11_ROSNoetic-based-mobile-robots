;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiSrvQrcode)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiSrvQrcode (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHISRVQRCODE")
  (make-package "WHI_INTERFACES::WHISRVQRCODE"))
(unless (find-package "WHI_INTERFACES::WHISRVQRCODEREQUEST")
  (make-package "WHI_INTERFACES::WHISRVQRCODEREQUEST"))
(unless (find-package "WHI_INTERFACES::WHISRVQRCODERESPONSE")
  (make-package "WHI_INTERFACES::WHISRVQRCODERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass whi_interfaces::WhiSrvQrcodeRequest
  :super ros::object
  :slots (_count ))

(defmethod whi_interfaces::WhiSrvQrcodeRequest
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass whi_interfaces::WhiSrvQrcodeResponse
  :super ros::object
  :slots (_code _offset_pose _eulers _eulers_degree ))

(defmethod whi_interfaces::WhiSrvQrcodeResponse
  (:init
   (&key
    ((:code __code) "")
    ((:offset_pose __offset_pose) (instance geometry_msgs::PoseStamped :init))
    ((:eulers __eulers) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:eulers_degree __eulers_degree) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _code (string __code))
   (setq _offset_pose __offset_pose)
   (setq _eulers __eulers)
   (setq _eulers_degree __eulers_degree)
   self)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:offset_pose
   (&rest __offset_pose)
   (if (keywordp (car __offset_pose))
       (send* _offset_pose __offset_pose)
     (progn
       (if __offset_pose (setq _offset_pose (car __offset_pose)))
       _offset_pose)))
  (:eulers
   (&optional __eulers)
   (if __eulers (setq _eulers __eulers)) _eulers)
  (:eulers_degree
   (&optional __eulers_degree)
   (if __eulers_degree (setq _eulers_degree __eulers_degree)) _eulers_degree)
  (:serialization-length
   ()
   (+
    ;; string _code
    4 (length _code)
    ;; geometry_msgs/PoseStamped _offset_pose
    (send _offset_pose :serialization-length)
    ;; float64[] _eulers
    (* 8    (length _eulers)) 4
    ;; float64[] _eulers_degree
    (* 8    (length _eulers_degree)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _code
       (write-long (length _code) s) (princ _code s)
     ;; geometry_msgs/PoseStamped _offset_pose
       (send _offset_pose :serialize s)
     ;; float64[] _eulers
     (write-long (length _eulers) s)
     (dotimes (i (length _eulers))
       (sys::poke (elt _eulers i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _eulers_degree
     (write-long (length _eulers_degree) s)
     (dotimes (i (length _eulers_degree))
       (sys::poke (elt _eulers_degree i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _offset_pose
     (send _offset_pose :deserialize buf ptr-) (incf ptr- (send _offset_pose :serialization-length))
   ;; float64[] _eulers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _eulers (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _eulers i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _eulers_degree
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _eulers_degree (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _eulers_degree i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass whi_interfaces::WhiSrvQrcode
  :super ros::object
  :slots ())

(setf (get whi_interfaces::WhiSrvQrcode :md5sum-) "7a9928f647b8395ed6c3faa691d3de34")
(setf (get whi_interfaces::WhiSrvQrcode :datatype-) "whi_interfaces/WhiSrvQrcode")
(setf (get whi_interfaces::WhiSrvQrcode :request) whi_interfaces::WhiSrvQrcodeRequest)
(setf (get whi_interfaces::WhiSrvQrcode :response) whi_interfaces::WhiSrvQrcodeResponse)

(defmethod whi_interfaces::WhiSrvQrcodeRequest
  (:response () (instance whi_interfaces::WhiSrvQrcodeResponse :init)))

(setf (get whi_interfaces::WhiSrvQrcodeRequest :md5sum-) "7a9928f647b8395ed6c3faa691d3de34")
(setf (get whi_interfaces::WhiSrvQrcodeRequest :datatype-) "whi_interfaces/WhiSrvQrcodeRequest")
(setf (get whi_interfaces::WhiSrvQrcodeRequest :definition-)
      "int32 count
---
string code
geometry_msgs/PoseStamped offset_pose
float64[] eulers
float64[] eulers_degree


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

(setf (get whi_interfaces::WhiSrvQrcodeResponse :md5sum-) "7a9928f647b8395ed6c3faa691d3de34")
(setf (get whi_interfaces::WhiSrvQrcodeResponse :datatype-) "whi_interfaces/WhiSrvQrcodeResponse")
(setf (get whi_interfaces::WhiSrvQrcodeResponse :definition-)
      "int32 count
---
string code
geometry_msgs/PoseStamped offset_pose
float64[] eulers
float64[] eulers_degree


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :whi_interfaces/WhiSrvQrcode "7a9928f647b8395ed6c3faa691d3de34")


