;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiEng)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiEng (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHIENG")
  (make-package "WHI_INTERFACES::WHIENG"))

(in-package "ROS")
;;//! \htmlinclude WhiEng.msg.html


(defclass whi_interfaces::WhiEng
  :super ros::object
  :slots (_eng_flag ))

(defmethod whi_interfaces::WhiEng
  (:init
   (&key
    ((:eng_flag __eng_flag) 0)
    )
   (send-super :init)
   (setq _eng_flag (round __eng_flag))
   self)
  (:eng_flag
   (&optional __eng_flag)
   (if __eng_flag (setq _eng_flag __eng_flag)) _eng_flag)
  (:serialization-length
   ()
   (+
    ;; uint32 _eng_flag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _eng_flag
       (write-long _eng_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _eng_flag
     (setq _eng_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get whi_interfaces::WhiEng :md5sum-) "48e7e2fd83ff95e2f7e6c60dd652932f")
(setf (get whi_interfaces::WhiEng :datatype-) "whi_interfaces/WhiEng")
(setf (get whi_interfaces::WhiEng :definition-)
      "uint32 eng_flag

")



(provide :whi_interfaces/WhiEng "48e7e2fd83ff95e2f7e6c60dd652932f")


