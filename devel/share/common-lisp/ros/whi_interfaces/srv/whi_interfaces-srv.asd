
(cl:in-package :asdf)

(defsystem "whi_interfaces-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :whi_interfaces-msg
)
  :components ((:file "_package")
    (:file "WhiSrvIndicator" :depends-on ("_package_WhiSrvIndicator"))
    (:file "_package_WhiSrvIndicator" :depends-on ("_package"))
    (:file "WhiSrvIo" :depends-on ("_package_WhiSrvIo"))
    (:file "_package_WhiSrvIo" :depends-on ("_package"))
    (:file "WhiSrvJointNames" :depends-on ("_package_WhiSrvJointNames"))
    (:file "_package_WhiSrvJointNames" :depends-on ("_package"))
    (:file "WhiSrvJointPose" :depends-on ("_package_WhiSrvJointPose"))
    (:file "_package_WhiSrvJointPose" :depends-on ("_package"))
    (:file "WhiSrvMotionOffsets" :depends-on ("_package_WhiSrvMotionOffsets"))
    (:file "_package_WhiSrvMotionOffsets" :depends-on ("_package"))
    (:file "WhiSrvPartialDischarge" :depends-on ("_package_WhiSrvPartialDischarge"))
    (:file "_package_WhiSrvPartialDischarge" :depends-on ("_package"))
    (:file "WhiSrvQrcode" :depends-on ("_package_WhiSrvQrcode"))
    (:file "_package_WhiSrvQrcode" :depends-on ("_package"))
    (:file "WhiSrvTcpPose" :depends-on ("_package_WhiSrvTcpPose"))
    (:file "_package_WhiSrvTcpPose" :depends-on ("_package"))
  ))