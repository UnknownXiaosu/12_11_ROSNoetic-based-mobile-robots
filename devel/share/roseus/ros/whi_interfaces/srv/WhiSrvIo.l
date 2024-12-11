;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::WhiSrvIo)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'WhiSrvIo (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::WHISRVIO")
  (make-package "WHI_INTERFACES::WHISRVIO"))
(unless (find-package "WHI_INTERFACES::WHISRVIOREQUEST")
  (make-package "WHI_INTERFACES::WHISRVIOREQUEST"))
(unless (find-package "WHI_INTERFACES::WHISRVIORESPONSE")
  (make-package "WHI_INTERFACES::WHISRVIORESPONSE"))

(in-package "ROS")





(intern "*OPER_READ*" (find-package "WHI_INTERFACES::WHISRVIOREQUEST"))
(shadow '*OPER_READ* (find-package "WHI_INTERFACES::WHISRVIOREQUEST"))
(defconstant whi_interfaces::WhiSrvIoRequest::*OPER_READ* 0)
(intern "*OPER_WRITE*" (find-package "WHI_INTERFACES::WHISRVIOREQUEST"))
(shadow '*OPER_WRITE* (find-package "WHI_INTERFACES::WHISRVIOREQUEST"))
(defconstant whi_interfaces::WhiSrvIoRequest::*OPER_WRITE* 1)

(defun whi_interfaces::WhiSrvIoRequest-to-symbol (const)
  (cond
        ((= const 0) 'whi_interfaces::WhiSrvIoRequest::*OPER_READ*)
        ((= const 1) 'whi_interfaces::WhiSrvIoRequest::*OPER_WRITE*)
        (t nil)))

(defclass whi_interfaces::WhiSrvIoRequest
  :super ros::object
  :slots (_name _addr _level _operation ))

(defmethod whi_interfaces::WhiSrvIoRequest
  (:init
   (&key
    ((:name __name) "")
    ((:addr __addr) 0)
    ((:level __level) 0)
    ((:operation __operation) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _addr (round __addr))
   (setq _level (round __level))
   (setq _operation (round __operation))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:addr
   (&optional __addr)
   (if __addr (setq _addr __addr)) _addr)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:operation
   (&optional __operation)
   (if __operation (setq _operation __operation)) _operation)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _addr
    4
    ;; uint8 _level
    1
    ;; uint8 _operation
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _addr
       (write-long _addr s)
     ;; uint8 _level
       (write-byte _level s)
     ;; uint8 _operation
       (write-byte _operation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _addr
     (setq _addr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _operation
     (setq _operation (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass whi_interfaces::WhiSrvIoResponse
  :super ros::object
  :slots (_level _result ))

(defmethod whi_interfaces::WhiSrvIoResponse
  (:init
   (&key
    ((:level __level) 0)
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _level (round __level))
   (setq _result __result)
   self)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8 _level
    1
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _level
       (write-byte _level s)
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass whi_interfaces::WhiSrvIo
  :super ros::object
  :slots ())

(setf (get whi_interfaces::WhiSrvIo :md5sum-) "06304a0a11512b6f81b205a97a00fb19")
(setf (get whi_interfaces::WhiSrvIo :datatype-) "whi_interfaces/WhiSrvIo")
(setf (get whi_interfaces::WhiSrvIo :request) whi_interfaces::WhiSrvIoRequest)
(setf (get whi_interfaces::WhiSrvIo :response) whi_interfaces::WhiSrvIoResponse)

(defmethod whi_interfaces::WhiSrvIoRequest
  (:response () (instance whi_interfaces::WhiSrvIoResponse :init)))

(setf (get whi_interfaces::WhiSrvIoRequest :md5sum-) "06304a0a11512b6f81b205a97a00fb19")
(setf (get whi_interfaces::WhiSrvIoRequest :datatype-) "whi_interfaces/WhiSrvIoRequest")
(setf (get whi_interfaces::WhiSrvIoRequest :definition-)
      "uint8 OPER_READ=0
uint8 OPER_WRITE=1
string name
int32 addr
uint8 level
uint8 operation
---
uint8 level
bool result
")

(setf (get whi_interfaces::WhiSrvIoResponse :md5sum-) "06304a0a11512b6f81b205a97a00fb19")
(setf (get whi_interfaces::WhiSrvIoResponse :datatype-) "whi_interfaces/WhiSrvIoResponse")
(setf (get whi_interfaces::WhiSrvIoResponse :definition-)
      "uint8 OPER_READ=0
uint8 OPER_WRITE=1
string name
int32 addr
uint8 level
uint8 operation
---
uint8 level
bool result
")



(provide :whi_interfaces/WhiSrvIo "06304a0a11512b6f81b205a97a00fb19")


