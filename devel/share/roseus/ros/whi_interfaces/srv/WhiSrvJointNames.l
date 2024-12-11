;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiSrvJointNames)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiSrvJointNames (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHISRVJOINTNAMES")
  (make-package "WHI_INTERFACES::WHISRVJOINTNAMES"))
(unless (find-package "WHI_INTERFACES::WHISRVJOINTNAMESREQUEST")
  (make-package "WHI_INTERFACES::WHISRVJOINTNAMESREQUEST"))
(unless (find-package "WHI_INTERFACES::WHISRVJOINTNAMESRESPONSE")
  (make-package "WHI_INTERFACES::WHISRVJOINTNAMESRESPONSE"))

(in-package "ROS")





(defclass whi_interfaces::WhiSrvJointNamesRequest
  :super ros::object
  :slots ())

(defmethod whi_interfaces::WhiSrvJointNamesRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass whi_interfaces::WhiSrvJointNamesResponse
  :super ros::object
  :slots (_result _joint_names ))

(defmethod whi_interfaces::WhiSrvJointNamesResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _result __result)
   (setq _joint_names __joint_names)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass whi_interfaces::WhiSrvJointNames
  :super ros::object
  :slots ())

(setf (get whi_interfaces::WhiSrvJointNames :md5sum-) "9701ae99cbeecda2e4cd171db381bf43")
(setf (get whi_interfaces::WhiSrvJointNames :datatype-) "whi_interfaces/WhiSrvJointNames")
(setf (get whi_interfaces::WhiSrvJointNames :request) whi_interfaces::WhiSrvJointNamesRequest)
(setf (get whi_interfaces::WhiSrvJointNames :response) whi_interfaces::WhiSrvJointNamesResponse)

(defmethod whi_interfaces::WhiSrvJointNamesRequest
  (:response () (instance whi_interfaces::WhiSrvJointNamesResponse :init)))

(setf (get whi_interfaces::WhiSrvJointNamesRequest :md5sum-) "9701ae99cbeecda2e4cd171db381bf43")
(setf (get whi_interfaces::WhiSrvJointNamesRequest :datatype-) "whi_interfaces/WhiSrvJointNamesRequest")
(setf (get whi_interfaces::WhiSrvJointNamesRequest :definition-)
      "---
bool result
string[] joint_names

")

(setf (get whi_interfaces::WhiSrvJointNamesResponse :md5sum-) "9701ae99cbeecda2e4cd171db381bf43")
(setf (get whi_interfaces::WhiSrvJointNamesResponse :datatype-) "whi_interfaces/WhiSrvJointNamesResponse")
(setf (get whi_interfaces::WhiSrvJointNamesResponse :definition-)
      "---
bool result
string[] joint_names

")



(provide :whi_interfaces/WhiSrvJointNames "9701ae99cbeecda2e4cd171db381bf43")


