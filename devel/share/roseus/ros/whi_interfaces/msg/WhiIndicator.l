;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiIndicator)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiIndicator (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHIINDICATOR")
  (make-package "WHI_INTERFACES::WHIINDICATOR"))

(in-package "ROS")
;;//! \htmlinclude WhiIndicator.msg.html


(defclass whi_interfaces::WhiIndicator
  :super ros::object
  :slots (_name _param _value ))

(defmethod whi_interfaces::WhiIndicator
  (:init
   (&key
    ((:name __name) "")
    ((:param __param) "")
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _param (string __param))
   (setq _value (round __value))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:param
   (&optional __param)
   (if __param (setq _param __param)) _param)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _param
    4 (length _param)
    ;; uint32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _param
       (write-long (length _param) s) (princ _param s)
     ;; uint32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _param
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get whi_interfaces::WhiIndicator :md5sum-) "9cc7a2c8ca562fc53a783c3155712390")
(setf (get whi_interfaces::WhiIndicator :datatype-) "whi_interfaces/WhiIndicator")
(setf (get whi_interfaces::WhiIndicator :definition-)
      "string name
string param
uint32 value

")



(provide :whi_interfaces/WhiIndicator "9cc7a2c8ca562fc53a783c3155712390")


