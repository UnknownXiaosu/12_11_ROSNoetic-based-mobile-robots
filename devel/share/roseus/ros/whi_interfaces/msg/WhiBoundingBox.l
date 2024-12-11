;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiBoundingBox)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiBoundingBox (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHIBOUNDINGBOX")
  (make-package "WHI_INTERFACES::WHIBOUNDINGBOX"))

(in-package "ROS")
;;//! \htmlinclude WhiBoundingBox.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass whi_interfaces::WhiBoundingBox
  :super ros::object
  :slots (_cls _acc_prob _state _state_prob _left_top _right_bottom _init_pose _target_pose ))

(defmethod whi_interfaces::WhiBoundingBox
  (:init
   (&key
    ((:cls __cls) "")
    ((:acc_prob __acc_prob) 0.0)
    ((:state __state) "")
    ((:state_prob __state_prob) 0.0)
    ((:left_top __left_top) (instance geometry_msgs::Pose :init))
    ((:right_bottom __right_bottom) (instance geometry_msgs::Pose :init))
    ((:init_pose __init_pose) (instance geometry_msgs::Pose :init))
    ((:target_pose __target_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _cls (string __cls))
   (setq _acc_prob (float __acc_prob))
   (setq _state (string __state))
   (setq _state_prob (float __state_prob))
   (setq _left_top __left_top)
   (setq _right_bottom __right_bottom)
   (setq _init_pose __init_pose)
   (setq _target_pose __target_pose)
   self)
  (:cls
   (&optional __cls)
   (if __cls (setq _cls __cls)) _cls)
  (:acc_prob
   (&optional __acc_prob)
   (if __acc_prob (setq _acc_prob __acc_prob)) _acc_prob)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:state_prob
   (&optional __state_prob)
   (if __state_prob (setq _state_prob __state_prob)) _state_prob)
  (:left_top
   (&rest __left_top)
   (if (keywordp (car __left_top))
       (send* _left_top __left_top)
     (progn
       (if __left_top (setq _left_top (car __left_top)))
       _left_top)))
  (:right_bottom
   (&rest __right_bottom)
   (if (keywordp (car __right_bottom))
       (send* _right_bottom __right_bottom)
     (progn
       (if __right_bottom (setq _right_bottom (car __right_bottom)))
       _right_bottom)))
  (:init_pose
   (&rest __init_pose)
   (if (keywordp (car __init_pose))
       (send* _init_pose __init_pose)
     (progn
       (if __init_pose (setq _init_pose (car __init_pose)))
       _init_pose)))
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:serialization-length
   ()
   (+
    ;; string _cls
    4 (length _cls)
    ;; float64 _acc_prob
    8
    ;; string _state
    4 (length _state)
    ;; float64 _state_prob
    8
    ;; geometry_msgs/Pose _left_top
    (send _left_top :serialization-length)
    ;; geometry_msgs/Pose _right_bottom
    (send _right_bottom :serialization-length)
    ;; geometry_msgs/Pose _init_pose
    (send _init_pose :serialization-length)
    ;; geometry_msgs/Pose _target_pose
    (send _target_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cls
       (write-long (length _cls) s) (princ _cls s)
     ;; float64 _acc_prob
       (sys::poke _acc_prob (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; float64 _state_prob
       (sys::poke _state_prob (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _left_top
       (send _left_top :serialize s)
     ;; geometry_msgs/Pose _right_bottom
       (send _right_bottom :serialize s)
     ;; geometry_msgs/Pose _init_pose
       (send _init_pose :serialize s)
     ;; geometry_msgs/Pose _target_pose
       (send _target_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cls
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cls (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _acc_prob
     (setq _acc_prob (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _state_prob
     (setq _state_prob (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _left_top
     (send _left_top :deserialize buf ptr-) (incf ptr- (send _left_top :serialization-length))
   ;; geometry_msgs/Pose _right_bottom
     (send _right_bottom :deserialize buf ptr-) (incf ptr- (send _right_bottom :serialization-length))
   ;; geometry_msgs/Pose _init_pose
     (send _init_pose :deserialize buf ptr-) (incf ptr- (send _init_pose :serialization-length))
   ;; geometry_msgs/Pose _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;;
   self)
  )

(setf (get whi_interfaces::WhiBoundingBox :md5sum-) "ecec343062f58885bb78dad9096cfd28")
(setf (get whi_interfaces::WhiBoundingBox :datatype-) "whi_interfaces/WhiBoundingBox")
(setf (get whi_interfaces::WhiBoundingBox :definition-)
      "string cls
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



(provide :whi_interfaces/WhiBoundingBox "ecec343062f58885bb78dad9096cfd28")


