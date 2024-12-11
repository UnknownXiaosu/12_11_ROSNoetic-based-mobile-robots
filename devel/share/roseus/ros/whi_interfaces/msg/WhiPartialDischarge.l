;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiPartialDischarge)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiPartialDischarge (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHIPARTIALDISCHARGE")
  (make-package "WHI_INTERFACES::WHIPARTIALDISCHARGE"))

(in-package "ROS")
;;//! \htmlinclude WhiPartialDischarge.msg.html


(intern "*STA_SENSOR_ERROR*" (find-package "WHI_INTERFACES::WHIPARTIALDISCHARGE"))
(shadow '*STA_SENSOR_ERROR* (find-package "WHI_INTERFACES::WHIPARTIALDISCHARGE"))
(defconstant whi_interfaces::WhiPartialDischarge::*STA_SENSOR_ERROR* 0)
(intern "*STA_NORMAL*" (find-package "WHI_INTERFACES::WHIPARTIALDISCHARGE"))
(shadow '*STA_NORMAL* (find-package "WHI_INTERFACES::WHIPARTIALDISCHARGE"))
(defconstant whi_interfaces::WhiPartialDischarge::*STA_NORMAL* 1)
(intern "*STA_CHANNEL_1_ALERT*" (find-package "WHI_INTERFACES::WHIPARTIALDISCHARGE"))
(shadow '*STA_CHANNEL_1_ALERT* (find-package "WHI_INTERFACES::WHIPARTIALDISCHARGE"))
(defconstant whi_interfaces::WhiPartialDischarge::*STA_CHANNEL_1_ALERT* 2)
(intern "*STA_DISCHARGE_HIGH*" (find-package "WHI_INTERFACES::WHIPARTIALDISCHARGE"))
(shadow '*STA_DISCHARGE_HIGH* (find-package "WHI_INTERFACES::WHIPARTIALDISCHARGE"))
(defconstant whi_interfaces::WhiPartialDischarge::*STA_DISCHARGE_HIGH* 3)
(intern "*STA_DISCHARGE_ALERT*" (find-package "WHI_INTERFACES::WHIPARTIALDISCHARGE"))
(shadow '*STA_DISCHARGE_ALERT* (find-package "WHI_INTERFACES::WHIPARTIALDISCHARGE"))
(defconstant whi_interfaces::WhiPartialDischarge::*STA_DISCHARGE_ALERT* 4)

(defun whi_interfaces::WhiPartialDischarge-to-symbol (const)
  (cond
        ((= const 0) 'whi_interfaces::WhiPartialDischarge::*STA_SENSOR_ERROR*)
        ((= const 1) 'whi_interfaces::WhiPartialDischarge::*STA_NORMAL*)
        ((= const 2) 'whi_interfaces::WhiPartialDischarge::*STA_CHANNEL_1_ALERT*)
        ((= const 3) 'whi_interfaces::WhiPartialDischarge::*STA_DISCHARGE_HIGH*)
        ((= const 4) 'whi_interfaces::WhiPartialDischarge::*STA_DISCHARGE_ALERT*)
        (t nil)))

(defclass whi_interfaces::WhiPartialDischarge
  :super ros::object
  :slots (_peak _average _noise _phase _count _cycle_count _state _channel ))

(defmethod whi_interfaces::WhiPartialDischarge
  (:init
   (&key
    ((:peak __peak) 0.0)
    ((:average __average) 0.0)
    ((:noise __noise) 0.0)
    ((:phase __phase) 0.0)
    ((:count __count) 0)
    ((:cycle_count __cycle_count) 0)
    ((:state __state) 0)
    ((:channel __channel) "")
    )
   (send-super :init)
   (setq _peak (float __peak))
   (setq _average (float __average))
   (setq _noise (float __noise))
   (setq _phase (float __phase))
   (setq _count (round __count))
   (setq _cycle_count (round __cycle_count))
   (setq _state (round __state))
   (setq _channel (string __channel))
   self)
  (:peak
   (&optional __peak)
   (if __peak (setq _peak __peak)) _peak)
  (:average
   (&optional __average)
   (if __average (setq _average __average)) _average)
  (:noise
   (&optional __noise)
   (if __noise (setq _noise __noise)) _noise)
  (:phase
   (&optional __phase)
   (if __phase (setq _phase __phase)) _phase)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:cycle_count
   (&optional __cycle_count)
   (if __cycle_count (setq _cycle_count __cycle_count)) _cycle_count)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:serialization-length
   ()
   (+
    ;; float32 _peak
    4
    ;; float32 _average
    4
    ;; float32 _noise
    4
    ;; float32 _phase
    4
    ;; int32 _count
    4
    ;; int32 _cycle_count
    4
    ;; uint8 _state
    1
    ;; string _channel
    4 (length _channel)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _peak
       (sys::poke _peak (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _average
       (sys::poke _average (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _noise
       (sys::poke _noise (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _phase
       (sys::poke _phase (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _count
       (write-long _count s)
     ;; int32 _cycle_count
       (write-long _cycle_count s)
     ;; uint8 _state
       (write-byte _state s)
     ;; string _channel
       (write-long (length _channel) s) (princ _channel s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _peak
     (setq _peak (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _average
     (setq _average (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _noise
     (setq _noise (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _phase
     (setq _phase (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cycle_count
     (setq _cycle_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _channel
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _channel (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get whi_interfaces::WhiPartialDischarge :md5sum-) "55e97ba29b0bc0c839a3411f235ee2dd")
(setf (get whi_interfaces::WhiPartialDischarge :datatype-) "whi_interfaces/WhiPartialDischarge")
(setf (get whi_interfaces::WhiPartialDischarge :definition-)
      "uint8 STA_SENSOR_ERROR=0
uint8 STA_NORMAL=1
uint8 STA_CHANNEL_1_ALERT=2
uint8 STA_DISCHARGE_HIGH=3
uint8 STA_DISCHARGE_ALERT=4
float32 peak
float32 average
float32 noise
float32 phase
int32 count
int32 cycle_count
uint8 state
string channel

")



(provide :whi_interfaces/WhiPartialDischarge "55e97ba29b0bc0c839a3411f235ee2dd")


