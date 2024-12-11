;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiBattery)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiBattery (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHIBATTERY")
  (make-package "WHI_INTERFACES::WHIBATTERY"))

(in-package "ROS")
;;//! \htmlinclude WhiBattery.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STA_NORMAL*" (find-package "WHI_INTERFACES::WHIBATTERY"))
(shadow '*STA_NORMAL* (find-package "WHI_INTERFACES::WHIBATTERY"))
(defconstant whi_interfaces::WhiBattery::*STA_NORMAL* 0)
(intern "*STA_CHARGING*" (find-package "WHI_INTERFACES::WHIBATTERY"))
(shadow '*STA_CHARGING* (find-package "WHI_INTERFACES::WHIBATTERY"))
(defconstant whi_interfaces::WhiBattery::*STA_CHARGING* 1)
(intern "*STA_NEED_CHARGING*" (find-package "WHI_INTERFACES::WHIBATTERY"))
(shadow '*STA_NEED_CHARGING* (find-package "WHI_INTERFACES::WHIBATTERY"))
(defconstant whi_interfaces::WhiBattery::*STA_NEED_CHARGING* 2)
(intern "*STA_GOOD_FOR_TASK*" (find-package "WHI_INTERFACES::WHIBATTERY"))
(shadow '*STA_GOOD_FOR_TASK* (find-package "WHI_INTERFACES::WHIBATTERY"))
(defconstant whi_interfaces::WhiBattery::*STA_GOOD_FOR_TASK* 3)
(intern "*STA_FULL*" (find-package "WHI_INTERFACES::WHIBATTERY"))
(shadow '*STA_FULL* (find-package "WHI_INTERFACES::WHIBATTERY"))
(defconstant whi_interfaces::WhiBattery::*STA_FULL* 4)
(intern "*STA_FAILURE_RECOVERING*" (find-package "WHI_INTERFACES::WHIBATTERY"))
(shadow '*STA_FAILURE_RECOVERING* (find-package "WHI_INTERFACES::WHIBATTERY"))
(defconstant whi_interfaces::WhiBattery::*STA_FAILURE_RECOVERING* 5)

(defun whi_interfaces::WhiBattery-to-symbol (const)
  (cond
        ((= const 0) 'whi_interfaces::WhiBattery::*STA_NORMAL*)
        ((= const 1) 'whi_interfaces::WhiBattery::*STA_CHARGING*)
        ((= const 2) 'whi_interfaces::WhiBattery::*STA_NEED_CHARGING*)
        ((= const 3) 'whi_interfaces::WhiBattery::*STA_GOOD_FOR_TASK*)
        ((= const 4) 'whi_interfaces::WhiBattery::*STA_FULL*)
        ((= const 5) 'whi_interfaces::WhiBattery::*STA_FAILURE_RECOVERING*)
        (t nil)))

(defclass whi_interfaces::WhiBattery
  :super ros::object
  :slots (_header _soc _soh _state ))

(defmethod whi_interfaces::WhiBattery
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:soc __soc) 0)
    ((:soh __soh) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _soc (round __soc))
   (setq _soh (round __soh))
   (setq _state (round __state))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:soc
   (&optional __soc)
   (if __soc (setq _soc __soc)) _soc)
  (:soh
   (&optional __soh)
   (if __soh (setq _soh __soh)) _soh)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _soc
    2
    ;; uint16 _soh
    2
    ;; int8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _soc
       (write-word _soc s)
     ;; uint16 _soh
       (write-word _soh s)
     ;; int8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _soc
     (setq _soc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _soh
     (setq _soh (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;;
   self)
  )

(setf (get whi_interfaces::WhiBattery :md5sum-) "3459eabd6dc37def1aa304bda6a545b4")
(setf (get whi_interfaces::WhiBattery :datatype-) "whi_interfaces/WhiBattery")
(setf (get whi_interfaces::WhiBattery :definition-)
      "std_msgs/Header header
uint16 soc
uint16 soh
uint8 STA_NORMAL=0
uint8 STA_CHARGING=1
uint8 STA_NEED_CHARGING=2
uint8 STA_GOOD_FOR_TASK=3
uint8 STA_FULL=4
uint8 STA_FAILURE_RECOVERING=5
int8 state

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



(provide :whi_interfaces/WhiBattery "3459eabd6dc37def1aa304bda6a545b4")


