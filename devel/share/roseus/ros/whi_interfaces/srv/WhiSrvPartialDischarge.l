;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiSrvPartialDischarge)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiSrvPartialDischarge (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHISRVPARTIALDISCHARGE")
  (make-package "WHI_INTERFACES::WHISRVPARTIALDISCHARGE"))
(unless (find-package "WHI_INTERFACES::WHISRVPARTIALDISCHARGEREQUEST")
  (make-package "WHI_INTERFACES::WHISRVPARTIALDISCHARGEREQUEST"))
(unless (find-package "WHI_INTERFACES::WHISRVPARTIALDISCHARGERESPONSE")
  (make-package "WHI_INTERFACES::WHISRVPARTIALDISCHARGERESPONSE"))

(in-package "ROS")





(defclass whi_interfaces::WhiSrvPartialDischargeRequest
  :super ros::object
  :slots (_addr ))

(defmethod whi_interfaces::WhiSrvPartialDischargeRequest
  (:init
   (&key
    ((:addr __addr) 0)
    )
   (send-super :init)
   (setq _addr (round __addr))
   self)
  (:addr
   (&optional __addr)
   (if __addr (setq _addr __addr)) _addr)
  (:serialization-length
   ()
   (+
    ;; int32 _addr
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _addr
       (write-long _addr s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _addr
     (setq _addr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass whi_interfaces::WhiSrvPartialDischargeResponse
  :super ros::object
  :slots (_data ))

(defmethod whi_interfaces::WhiSrvPartialDischargeResponse
  (:init
   (&key
    ((:data __data) ())
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; whi_interfaces/WhiPartialDischarge[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; whi_interfaces/WhiPartialDischarge[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; whi_interfaces/WhiPartialDischarge[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance whi_interfaces::WhiPartialDischarge :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass whi_interfaces::WhiSrvPartialDischarge
  :super ros::object
  :slots ())

(setf (get whi_interfaces::WhiSrvPartialDischarge :md5sum-) "ecc8f660b258f268674c5e5e9427cd77")
(setf (get whi_interfaces::WhiSrvPartialDischarge :datatype-) "whi_interfaces/WhiSrvPartialDischarge")
(setf (get whi_interfaces::WhiSrvPartialDischarge :request) whi_interfaces::WhiSrvPartialDischargeRequest)
(setf (get whi_interfaces::WhiSrvPartialDischarge :response) whi_interfaces::WhiSrvPartialDischargeResponse)

(defmethod whi_interfaces::WhiSrvPartialDischargeRequest
  (:response () (instance whi_interfaces::WhiSrvPartialDischargeResponse :init)))

(setf (get whi_interfaces::WhiSrvPartialDischargeRequest :md5sum-) "ecc8f660b258f268674c5e5e9427cd77")
(setf (get whi_interfaces::WhiSrvPartialDischargeRequest :datatype-) "whi_interfaces/WhiSrvPartialDischargeRequest")
(setf (get whi_interfaces::WhiSrvPartialDischargeRequest :definition-)
      "int32 addr
---
whi_interfaces/WhiPartialDischarge[] data


================================================================================
MSG: whi_interfaces/WhiPartialDischarge
uint8 STA_SENSOR_ERROR=0
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

(setf (get whi_interfaces::WhiSrvPartialDischargeResponse :md5sum-) "ecc8f660b258f268674c5e5e9427cd77")
(setf (get whi_interfaces::WhiSrvPartialDischargeResponse :datatype-) "whi_interfaces/WhiSrvPartialDischargeResponse")
(setf (get whi_interfaces::WhiSrvPartialDischargeResponse :definition-)
      "int32 addr
---
whi_interfaces/WhiPartialDischarge[] data


================================================================================
MSG: whi_interfaces/WhiPartialDischarge
uint8 STA_SENSOR_ERROR=0
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



(provide :whi_interfaces/WhiSrvPartialDischarge "ecc8f660b258f268674c5e5e9427cd77")


