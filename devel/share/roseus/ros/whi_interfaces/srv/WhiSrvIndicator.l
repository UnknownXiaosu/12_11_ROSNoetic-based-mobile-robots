;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiSrvIndicator)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiSrvIndicator (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHISRVINDICATOR")
  (make-package "WHI_INTERFACES::WHISRVINDICATOR"))
(unless (find-package "WHI_INTERFACES::WHISRVINDICATORREQUEST")
  (make-package "WHI_INTERFACES::WHISRVINDICATORREQUEST"))
(unless (find-package "WHI_INTERFACES::WHISRVINDICATORRESPONSE")
  (make-package "WHI_INTERFACES::WHISRVINDICATORRESPONSE"))

(in-package "ROS")





(defclass whi_interfaces::WhiSrvIndicatorRequest
  :super ros::object
  :slots (_instance ))

(defmethod whi_interfaces::WhiSrvIndicatorRequest
  (:init
   (&key
    ((:instance __instance) (instance whi_interfaces::WhiIndicator :init))
    )
   (send-super :init)
   (setq _instance __instance)
   self)
  (:instance
   (&rest __instance)
   (if (keywordp (car __instance))
       (send* _instance __instance)
     (progn
       (if __instance (setq _instance (car __instance)))
       _instance)))
  (:serialization-length
   ()
   (+
    ;; whi_interfaces/WhiIndicator _instance
    (send _instance :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; whi_interfaces/WhiIndicator _instance
       (send _instance :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; whi_interfaces/WhiIndicator _instance
     (send _instance :deserialize buf ptr-) (incf ptr- (send _instance :serialization-length))
   ;;
   self)
  )

(defclass whi_interfaces::WhiSrvIndicatorResponse
  :super ros::object
  :slots (_status _result ))

(defmethod whi_interfaces::WhiSrvIndicatorResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _result __result)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint32 _status
    4
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _status
       (write-long _status s)
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass whi_interfaces::WhiSrvIndicator
  :super ros::object
  :slots ())

(setf (get whi_interfaces::WhiSrvIndicator :md5sum-) "ec1649436397c99428e3f4dff37492e6")
(setf (get whi_interfaces::WhiSrvIndicator :datatype-) "whi_interfaces/WhiSrvIndicator")
(setf (get whi_interfaces::WhiSrvIndicator :request) whi_interfaces::WhiSrvIndicatorRequest)
(setf (get whi_interfaces::WhiSrvIndicator :response) whi_interfaces::WhiSrvIndicatorResponse)

(defmethod whi_interfaces::WhiSrvIndicatorRequest
  (:response () (instance whi_interfaces::WhiSrvIndicatorResponse :init)))

(setf (get whi_interfaces::WhiSrvIndicatorRequest :md5sum-) "ec1649436397c99428e3f4dff37492e6")
(setf (get whi_interfaces::WhiSrvIndicatorRequest :datatype-) "whi_interfaces/WhiSrvIndicatorRequest")
(setf (get whi_interfaces::WhiSrvIndicatorRequest :definition-)
      "whi_interfaces/WhiIndicator instance

================================================================================
MSG: whi_interfaces/WhiIndicator
string name
string param
uint32 value
---
uint32 status
bool result
")

(setf (get whi_interfaces::WhiSrvIndicatorResponse :md5sum-) "ec1649436397c99428e3f4dff37492e6")
(setf (get whi_interfaces::WhiSrvIndicatorResponse :datatype-) "whi_interfaces/WhiSrvIndicatorResponse")
(setf (get whi_interfaces::WhiSrvIndicatorResponse :definition-)
      "whi_interfaces/WhiIndicator instance

================================================================================
MSG: whi_interfaces/WhiIndicator
string name
string param
uint32 value
---
uint32 status
bool result
")



(provide :whi_interfaces/WhiSrvIndicator "ec1649436397c99428e3f4dff37492e6")


