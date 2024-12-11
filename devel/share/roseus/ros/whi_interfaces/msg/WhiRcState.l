;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiRcState)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiRcState (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHIRCSTATE")
  (make-package "WHI_INTERFACES::WHIRCSTATE"))

(in-package "ROS")
;;//! \htmlinclude WhiRcState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STA_REMOTE*" (find-package "WHI_INTERFACES::WHIRCSTATE"))
(shadow '*STA_REMOTE* (find-package "WHI_INTERFACES::WHIRCSTATE"))
(defconstant whi_interfaces::WhiRcState::*STA_REMOTE* 0)
(intern "*STA_AUTO*" (find-package "WHI_INTERFACES::WHIRCSTATE"))
(shadow '*STA_AUTO* (find-package "WHI_INTERFACES::WHIRCSTATE"))
(defconstant whi_interfaces::WhiRcState::*STA_AUTO* 1)
(intern "*STA_CLEAR_FAULT*" (find-package "WHI_INTERFACES::WHIRCSTATE"))
(shadow '*STA_CLEAR_FAULT* (find-package "WHI_INTERFACES::WHIRCSTATE"))
(defconstant whi_interfaces::WhiRcState::*STA_CLEAR_FAULT* 3)

(defun whi_interfaces::WhiRcState-to-symbol (const)
  (cond
        ((= const 0) 'whi_interfaces::WhiRcState::*STA_REMOTE*)
        ((= const 1) 'whi_interfaces::WhiRcState::*STA_AUTO*)
        ((= const 3) 'whi_interfaces::WhiRcState::*STA_CLEAR_FAULT*)
        (t nil)))

(defclass whi_interfaces::WhiRcState
  :super ros::object
  :slots (_header _state ))

(defmethod whi_interfaces::WhiRcState
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

(setf (get whi_interfaces::WhiRcState :md5sum-) "077256083eac163c4a7899965f98951e")
(setf (get whi_interfaces::WhiRcState :datatype-) "whi_interfaces/WhiRcState")
(setf (get whi_interfaces::WhiRcState :definition-)
      "std_msgs/Header header
uint8 state
uint8 STA_REMOTE=0
uint8 STA_AUTO=1
uint8 STA_CLEAR_FAULT=3

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



(provide :whi_interfaces/WhiRcState "077256083eac163c4a7899965f98951e")


