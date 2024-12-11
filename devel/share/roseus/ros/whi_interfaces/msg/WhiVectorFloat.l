;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiVectorFloat)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiVectorFloat (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHIVECTORFLOAT")
  (make-package "WHI_INTERFACES::WHIVECTORFLOAT"))

(in-package "ROS")
;;//! \htmlinclude WhiVectorFloat.msg.html


(defclass whi_interfaces::WhiVectorFloat
  :super ros::object
  :slots (_name _data _items_name _items_unit ))

(defmethod whi_interfaces::WhiVectorFloat
  (:init
   (&key
    ((:name __name) "")
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:items_name __items_name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:items_unit __items_unit) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _data __data)
   (setq _items_name __items_name)
   (setq _items_unit __items_unit)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:items_name
   (&optional __items_name)
   (if __items_name (setq _items_name __items_name)) _items_name)
  (:items_unit
   (&optional __items_unit)
   (if __items_unit (setq _items_unit __items_unit)) _items_unit)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32[] _data
    (* 4    (length _data)) 4
    ;; string[] _items_name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _items_name)) 4
    ;; string[] _items_unit
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _items_unit)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string[] _items_name
     (write-long (length _items_name) s)
     (dolist (elem _items_name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _items_unit
     (write-long (length _items_unit) s)
     (dolist (elem _items_unit)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string[] _items_name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _items_name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _items_name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _items_unit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _items_unit (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _items_unit i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get whi_interfaces::WhiVectorFloat :md5sum-) "f3f1b319acd35125ad913749638f6185")
(setf (get whi_interfaces::WhiVectorFloat :datatype-) "whi_interfaces/WhiVectorFloat")
(setf (get whi_interfaces::WhiVectorFloat :definition-)
      "string name
float32[] data
string[] items_name
string[] items_unit

")



(provide :whi_interfaces/WhiVectorFloat "f3f1b319acd35125ad913749638f6185")


