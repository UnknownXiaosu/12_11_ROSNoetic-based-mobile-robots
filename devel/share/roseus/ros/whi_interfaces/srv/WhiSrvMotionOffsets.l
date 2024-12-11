;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiSrvMotionOffsets)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiSrvMotionOffsets (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHISRVMOTIONOFFSETS")
  (make-package "WHI_INTERFACES::WHISRVMOTIONOFFSETS"))
(unless (find-package "WHI_INTERFACES::WHISRVMOTIONOFFSETSREQUEST")
  (make-package "WHI_INTERFACES::WHISRVMOTIONOFFSETSREQUEST"))
(unless (find-package "WHI_INTERFACES::WHISRVMOTIONOFFSETSRESPONSE")
  (make-package "WHI_INTERFACES::WHISRVMOTIONOFFSETSRESPONSE"))

(in-package "ROS")





(defclass whi_interfaces::WhiSrvMotionOffsetsRequest
  :super ros::object
  :slots (_offsets ))

(defmethod whi_interfaces::WhiSrvMotionOffsetsRequest
  (:init
   (&key
    ((:offsets __offsets) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _offsets __offsets)
   self)
  (:offsets
   (&optional __offsets)
   (if __offsets (setq _offsets __offsets)) _offsets)
  (:serialization-length
   ()
   (+
    ;; float64[] _offsets
    (* 8    (length _offsets)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _offsets
     (write-long (length _offsets) s)
     (dotimes (i (length _offsets))
       (sys::poke (elt _offsets i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _offsets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _offsets (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _offsets i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass whi_interfaces::WhiSrvMotionOffsetsResponse
  :super ros::object
  :slots (_result ))

(defmethod whi_interfaces::WhiSrvMotionOffsetsResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass whi_interfaces::WhiSrvMotionOffsets
  :super ros::object
  :slots ())

(setf (get whi_interfaces::WhiSrvMotionOffsets :md5sum-) "4c6fb4cf42eea618330dd37f243af28e")
(setf (get whi_interfaces::WhiSrvMotionOffsets :datatype-) "whi_interfaces/WhiSrvMotionOffsets")
(setf (get whi_interfaces::WhiSrvMotionOffsets :request) whi_interfaces::WhiSrvMotionOffsetsRequest)
(setf (get whi_interfaces::WhiSrvMotionOffsets :response) whi_interfaces::WhiSrvMotionOffsetsResponse)

(defmethod whi_interfaces::WhiSrvMotionOffsetsRequest
  (:response () (instance whi_interfaces::WhiSrvMotionOffsetsResponse :init)))

(setf (get whi_interfaces::WhiSrvMotionOffsetsRequest :md5sum-) "4c6fb4cf42eea618330dd37f243af28e")
(setf (get whi_interfaces::WhiSrvMotionOffsetsRequest :datatype-) "whi_interfaces/WhiSrvMotionOffsetsRequest")
(setf (get whi_interfaces::WhiSrvMotionOffsetsRequest :definition-)
      "float64[] offsets
---
bool result

")

(setf (get whi_interfaces::WhiSrvMotionOffsetsResponse :md5sum-) "4c6fb4cf42eea618330dd37f243af28e")
(setf (get whi_interfaces::WhiSrvMotionOffsetsResponse :datatype-) "whi_interfaces/WhiSrvMotionOffsetsResponse")
(setf (get whi_interfaces::WhiSrvMotionOffsetsResponse :definition-)
      "float64[] offsets
---
bool result

")



(provide :whi_interfaces/WhiSrvMotionOffsets "4c6fb4cf42eea618330dd37f243af28e")


