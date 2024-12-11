// Generated by gencpp from file whi_interfaces/PoseRegistrationAction.msg
// DO NOT EDIT!


#ifndef WHI_INTERFACES_MESSAGE_POSEREGISTRATIONACTION_H
#define WHI_INTERFACES_MESSAGE_POSEREGISTRATIONACTION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <whi_interfaces/PoseRegistrationActionGoal.h>
#include <whi_interfaces/PoseRegistrationActionResult.h>
#include <whi_interfaces/PoseRegistrationActionFeedback.h>

namespace whi_interfaces
{
template <class ContainerAllocator>
struct PoseRegistrationAction_
{
  typedef PoseRegistrationAction_<ContainerAllocator> Type;

  PoseRegistrationAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  PoseRegistrationAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::whi_interfaces::PoseRegistrationActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::whi_interfaces::PoseRegistrationActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::whi_interfaces::PoseRegistrationActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator> const> ConstPtr;

}; // struct PoseRegistrationAction_

typedef ::whi_interfaces::PoseRegistrationAction_<std::allocator<void> > PoseRegistrationAction;

typedef boost::shared_ptr< ::whi_interfaces::PoseRegistrationAction > PoseRegistrationActionPtr;
typedef boost::shared_ptr< ::whi_interfaces::PoseRegistrationAction const> PoseRegistrationActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator1> & lhs, const ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator2> & rhs)
{
  return lhs.action_goal == rhs.action_goal &&
    lhs.action_result == rhs.action_result &&
    lhs.action_feedback == rhs.action_feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator1> & lhs, const ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace whi_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cf1a3fa23897bda75e0d0088e8d3b4c8";
  }

  static const char* value(const ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcf1a3fa23897bda7ULL;
  static const uint64_t static_value2 = 0x5e0d0088e8d3b4c8ULL;
};

template<class ContainerAllocator>
struct DataType< ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "whi_interfaces/PoseRegistrationAction";
  }

  static const char* value(const ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"PoseRegistrationActionGoal action_goal\n"
"PoseRegistrationActionResult action_result\n"
"PoseRegistrationActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: whi_interfaces/PoseRegistrationActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"PoseRegistrationGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: whi_interfaces/PoseRegistrationGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"geometry_msgs/PoseStamped target_pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: whi_interfaces/PoseRegistrationActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"PoseRegistrationResult result\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
"\n"
"================================================================================\n"
"MSG: whi_interfaces/PoseRegistrationResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"uint8 RES_SUCCEED=0\n"
"uint8 RES_FAILED=1\n"
"uint8 result\n"
"\n"
"================================================================================\n"
"MSG: whi_interfaces/PoseRegistrationActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"PoseRegistrationFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: whi_interfaces/PoseRegistrationFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#feedback\n"
"uint8 PROC_STANDBY=0\n"
"uint8 PROC_ACTING=1\n"
"uint8 feedback\n"
"\n"
;
  }

  static const char* value(const ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PoseRegistrationAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::whi_interfaces::PoseRegistrationAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::whi_interfaces::PoseRegistrationActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::whi_interfaces::PoseRegistrationActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::whi_interfaces::PoseRegistrationActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WHI_INTERFACES_MESSAGE_POSEREGISTRATIONACTION_H