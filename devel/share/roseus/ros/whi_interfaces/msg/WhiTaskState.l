;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiTaskState)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiTaskState (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHITASKSTATE")
  (make-package "WHI_INTERFACES::WHITASKSTATE"))

(in-package "ROS")
;;//! \htmlinclude WhiTaskState.msg.html


(defclass whi_interfaces::WhiTaskState
  :super ros::object
  :slots (_name _parent_name _info ))

(defmethod whi_interfaces::WhiTaskState
  (:init
   (&key
    ((:name __name) "")
    ((:parent_name __parent_name) "")
    ((:info __info) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _parent_name (string __parent_name))
   (setq _info (string __info))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:parent_name
   (&optional __parent_name)
   (if __parent_name (setq _parent_name __parent_name)) _parent_name)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _parent_name
    4 (length _parent_name)
    ;; string _info
    4 (length _info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _parent_name
       (write-long (length _parent_name) s) (princ _parent_name s)
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _parent_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parent_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get whi_interfaces::WhiTaskState :md5sum-) "01ad27c42669fbf38fd676c85f58b3a1")
(setf (get whi_interfaces::WhiTaskState :datatype-) "whi_interfaces/WhiTaskState")
(setf (get whi_interfaces::WhiTaskState :definition-)
      "string name
string parent_name
string info

")



(provide :whi_interfaces/WhiTaskState "01ad27c42669fbf38fd676c85f58b3a1")


