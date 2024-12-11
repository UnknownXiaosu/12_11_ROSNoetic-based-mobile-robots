;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiMotionState)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiMotionState (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHIMOTIONSTATE")
  (make-package "WHI_INTERFACES::WHIMOTIONSTATE"))

(in-package "ROS")
;;//! \htmlinclude WhiMotionState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STA_STANDBY*" (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(shadow '*STA_STANDBY* (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(defconstant whi_interfaces::WhiMotionState::*STA_STANDBY* 0)
(intern "*STA_BOOTING*" (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(shadow '*STA_BOOTING* (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(defconstant whi_interfaces::WhiMotionState::*STA_BOOTING* 1)
(intern "*STA_RUNNING*" (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(shadow '*STA_RUNNING* (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(defconstant whi_interfaces::WhiMotionState::*STA_RUNNING* 2)
(intern "*STA_TURNING_LEFT*" (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(shadow '*STA_TURNING_LEFT* (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(defconstant whi_interfaces::WhiMotionState::*STA_TURNING_LEFT* 3)
(intern "*STA_TURNING_RIGHT*" (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(shadow '*STA_TURNING_RIGHT* (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(defconstant whi_interfaces::WhiMotionState::*STA_TURNING_RIGHT* 4)
(intern "*STA_OPERATING*" (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(shadow '*STA_OPERATING* (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(defconstant whi_interfaces::WhiMotionState::*STA_OPERATING* 5)
(intern "*STA_CRITICAL_COLLISION*" (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(shadow '*STA_CRITICAL_COLLISION* (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(defconstant whi_interfaces::WhiMotionState::*STA_CRITICAL_COLLISION* 6)
(intern "*STA_CRITICAL_COLLISION_CLEAR*" (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(shadow '*STA_CRITICAL_COLLISION_CLEAR* (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(defconstant whi_interfaces::WhiMotionState::*STA_CRITICAL_COLLISION_CLEAR* 7)
(intern "*STA_ESTOP*" (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(shadow '*STA_ESTOP* (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(defconstant whi_interfaces::WhiMotionState::*STA_ESTOP* 8)
(intern "*STA_ESTOP_CLEAR*" (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(shadow '*STA_ESTOP_CLEAR* (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(defconstant whi_interfaces::WhiMotionState::*STA_ESTOP_CLEAR* 9)
(intern "*STA_FAULT*" (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(shadow '*STA_FAULT* (find-package "WHI_INTERFACES::WHIMOTIONSTATE"))
(defconstant whi_interfaces::WhiMotionState::*STA_FAULT* 10)

(defun whi_interfaces::WhiMotionState-to-symbol (const)
  (cond
        ((= const 0) 'whi_interfaces::WhiMotionState::*STA_STANDBY*)
        ((= const 1) 'whi_interfaces::WhiMotionState::*STA_BOOTING*)
        ((= const 2) 'whi_interfaces::WhiMotionState::*STA_RUNNING*)
        ((= const 3) 'whi_interfaces::WhiMotionState::*STA_TURNING_LEFT*)
        ((= const 4) 'whi_interfaces::WhiMotionState::*STA_TURNING_RIGHT*)
        ((= const 5) 'whi_interfaces::WhiMotionState::*STA_OPERATING*)
        ((= const 6) 'whi_interfaces::WhiMotionState::*STA_CRITICAL_COLLISION*)
        ((= const 7) 'whi_interfaces::WhiMotionState::*STA_CRITICAL_COLLISION_CLEAR*)
        ((= const 8) 'whi_interfaces::WhiMotionState::*STA_ESTOP*)
        ((= const 9) 'whi_interfaces::WhiMotionState::*STA_ESTOP_CLEAR*)
        ((= const 10) 'whi_interfaces::WhiMotionState::*STA_FAULT*)
        (t nil)))

(defclass whi_interfaces::WhiMotionState
  :super ros::object
  :slots (_header _state ))

(defmethod whi_interfaces::WhiMotionState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state (round __state))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get whi_interfaces::WhiMotionState :md5sum-) "91bce09ed9af109b0e85285fbbe8d1bc")
(setf (get whi_interfaces::WhiMotionState :datatype-) "whi_interfaces/WhiMotionState")
(setf (get whi_interfaces::WhiMotionState :definition-)
      "std_msgs/Header header
uint8 state
uint8 STA_STANDBY=0
uint8 STA_BOOTING=1
uint8 STA_RUNNING=2
uint8 STA_TURNING_LEFT=3
uint8 STA_TURNING_RIGHT=4
uint8 STA_OPERATING=5
uint8 STA_CRITICAL_COLLISION=6
uint8 STA_CRITICAL_COLLISION_CLEAR=7
uint8 STA_ESTOP=8
uint8 STA_ESTOP_CLEAR=9
uint8 STA_FAULT=10

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

")



(provide :whi_interfaces/WhiMotionState "91bce09ed9af109b0e85285fbbe8d1bc")


