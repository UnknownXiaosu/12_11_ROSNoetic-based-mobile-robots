;; Auto-generated. Do not edit!


(when (boundp 'whi_interfaces::PoseRegistrationAction)
  (if (not (find-package "WHI_INTERFACES"))
    (make-package "WHI_INTERFACES"))
  (shadow 'PoseRegistrationAction (find-package "WHI_INTERFACES")))
(unless (find-package "WHI_INTERFACES::POSEREGISTRATIONACTION")
  (make-package "WHI_INTERFACES::POSEREGISTRATIONACTION"))

(in-package "ROS")
;;//! \htmlinclude PoseRegistrationAction.msg.html


(defclass whi_interfaces::PoseRegistrationAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod whi_interfaces::PoseRegistrationAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance whi_interfaces::PoseRegistrationActionGoal :init))
    ((:action_result __action_result) (instance whi_interfaces::PoseRegistrationActionResult :init))
    ((:action_feedback __action_feedback) (instance whi_interfaces::PoseRegistrationActionFeedback :init))
    )
   (send-super :init)
   (setq _action_goal __action_goal)
   (setq _action_result __action_result)
   (setq _action_feedback __action_feedback)
   self)
  (:action_goal
   (&rest __action_goal)
   (if (keywordp (car __action_goal))
       (send* _action_goal __action_goal)
     (progn
       (if __action_goal (setq _action_goal (car __action_goal)))
       _action_goal)))
  (:action_result
   (&rest __action_result)
   (if (keywordp (car __action_result))
       (send* _action_result __action_result)
     (progn
       (if __action_result (setq _action_result (car __action_result)))
       _action_result)))
  (:action_feedback
   (&rest __action_feedback)
   (if (keywordp (car __action_feedback))
       (send* _action_feedback __action_feedback)
     (progn
       (if __action_feedback (setq _action_feedback (car __action_feedback)))
       _action_feedback)))
  (:serialization-length
   ()
   (+
    ;; whi_interfaces/PoseRegistrationActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; whi_interfaces/PoseRegistrationActionResult _action_result
    (send _action_result :serialization-length)
    ;; whi_interfaces/PoseRegistrationActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; whi_interfaces/PoseRegistrationActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; whi_interfaces/PoseRegistrationActionResult _action_result
       (send _action_result :serialize s)
     ;; whi_interfaces/PoseRegistrationActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; whi_interfaces/PoseRegistrationActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; whi_interfaces/PoseRegistrationActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; whi_interfaces/PoseRegistrationActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get whi_interfaces::PoseRegistrationAction :md5sum-) "cf1a3fa23897bda75e0d0088e8d3b4c8")
(setf (get whi_interfaces::PoseRegistrationAction :datatype-) "whi_interfaces/PoseRegistrationAction")
(setf (get whi_interfaces::PoseRegistrationAction :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

PoseRegistrationActionGoal action_goal
PoseRegistrationActionResult action_result
PoseRegistrationActionFeedback action_feedback

================================================================================
MSG: whi_interfaces/PoseRegistrationActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
PoseRegistrationGoal goal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: whi_interfaces/PoseRegistrationGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
geometry_msgs/PoseStamped target_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: whi_interfaces/PoseRegistrationActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
PoseRegistrationResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: whi_interfaces/PoseRegistrationResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
uint8 RES_SUCCEED=0
uint8 RES_FAILED=1
uint8 result

================================================================================
MSG: whi_interfaces/PoseRegistrationActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
PoseRegistrationFeedback feedback

================================================================================
MSG: whi_interfaces/PoseRegistrationFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
uint8 PROC_STANDBY=0
uint8 PROC_ACTING=1
uint8 feedback


")



(provide :whi_interfaces/PoseRegistrationAction "cf1a3fa23897bda75e0d0088e8d3b4c8")

