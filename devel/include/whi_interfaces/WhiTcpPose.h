// Generated by gencpp from file whi_interfaces/WhiTcpPose.msg
// DO NOT EDIT!


#ifndef WHI_INTERFACES_MESSAGE_WHITCPPOSE_H
#define WHI_INTERFACES_MESSAGE_WHITCPPOSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <moveit_msgs/JointConstraint.h>

namespace whi_interfaces
{
template <class ContainerAllocator>
struct WhiTcpPose_
{
  typedef WhiTcpPose_<ContainerAllocator> Type;

  WhiTcpPose_()
    : pose_group()
    , tcp_pose()
    , joint_constraints()
    , velocity_scale(0.0)
    , acceleration_scale(0.0)
    , is_cartesian(false)  {
    }
  WhiTcpPose_(const ContainerAllocator& _alloc)
    : pose_group(_alloc)
    , tcp_pose(_alloc)
    , joint_constraints(_alloc)
    , velocity_scale(0.0)
    , acceleration_scale(0.0)
    , is_cartesian(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _pose_group_type;
  _pose_group_type pose_group;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _tcp_pose_type;
  _tcp_pose_type tcp_pose;

   typedef std::vector< ::moveit_msgs::JointConstraint_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::moveit_msgs::JointConstraint_<ContainerAllocator> >> _joint_constraints_type;
  _joint_constraints_type joint_constraints;

   typedef double _velocity_scale_type;
  _velocity_scale_type velocity_scale;

   typedef double _acceleration_scale_type;
  _acceleration_scale_type acceleration_scale;

   typedef uint8_t _is_cartesian_type;
  _is_cartesian_type is_cartesian;





  typedef boost::shared_ptr< ::whi_interfaces::WhiTcpPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::whi_interfaces::WhiTcpPose_<ContainerAllocator> const> ConstPtr;

}; // struct WhiTcpPose_

typedef ::whi_interfaces::WhiTcpPose_<std::allocator<void> > WhiTcpPose;

typedef boost::shared_ptr< ::whi_interfaces::WhiTcpPose > WhiTcpPosePtr;
typedef boost::shared_ptr< ::whi_interfaces::WhiTcpPose const> WhiTcpPoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::whi_interfaces::WhiTcpPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::whi_interfaces::WhiTcpPose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::whi_interfaces::WhiTcpPose_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiTcpPose_<ContainerAllocator2> & rhs)
{
  return lhs.pose_group == rhs.pose_group &&
    lhs.tcp_pose == rhs.tcp_pose &&
    lhs.joint_constraints == rhs.joint_constraints &&
    lhs.velocity_scale == rhs.velocity_scale &&
    lhs.acceleration_scale == rhs.acceleration_scale &&
    lhs.is_cartesian == rhs.is_cartesian;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::whi_interfaces::WhiTcpPose_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiTcpPose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace whi_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiTcpPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiTcpPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiTcpPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiTcpPose_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiTcpPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiTcpPose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::whi_interfaces::WhiTcpPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dda58110693227076bb879db634d52fb";
  }

  static const char* value(const ::whi_interfaces::WhiTcpPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdda5811069322707ULL;
  static const uint64_t static_value2 = 0x6bb879db634d52fbULL;
};

template<class ContainerAllocator>
struct DataType< ::whi_interfaces::WhiTcpPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "whi_interfaces/WhiTcpPose";
  }

  static const char* value(const ::whi_interfaces::WhiTcpPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::whi_interfaces::WhiTcpPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string pose_group\n"
"geometry_msgs/PoseStamped tcp_pose\n"
"moveit_msgs/JointConstraint[] joint_constraints\n"
"float64 velocity_scale\n"
"float64 acceleration_scale\n"
"bool is_cartesian\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
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
"MSG: moveit_msgs/JointConstraint\n"
"# Constrain the position of a joint to be within a certain bound\n"
"string joint_name\n"
"\n"
"# the bound to be achieved is [position - tolerance_below, position + tolerance_above]\n"
"float64 position\n"
"float64 tolerance_above\n"
"float64 tolerance_below\n"
"\n"
"# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)\n"
"float64 weight\n"
;
  }

  static const char* value(const ::whi_interfaces::WhiTcpPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::whi_interfaces::WhiTcpPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose_group);
      stream.next(m.tcp_pose);
      stream.next(m.joint_constraints);
      stream.next(m.velocity_scale);
      stream.next(m.acceleration_scale);
      stream.next(m.is_cartesian);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WhiTcpPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::whi_interfaces::WhiTcpPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::whi_interfaces::WhiTcpPose_<ContainerAllocator>& v)
  {
    s << indent << "pose_group: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.pose_group);
    s << indent << "tcp_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.tcp_pose);
    s << indent << "joint_constraints[]" << std::endl;
    for (size_t i = 0; i < v.joint_constraints.size(); ++i)
    {
      s << indent << "  joint_constraints[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::moveit_msgs::JointConstraint_<ContainerAllocator> >::stream(s, indent + "    ", v.joint_constraints[i]);
    }
    s << indent << "velocity_scale: ";
    Printer<double>::stream(s, indent + "  ", v.velocity_scale);
    s << indent << "acceleration_scale: ";
    Printer<double>::stream(s, indent + "  ", v.acceleration_scale);
    s << indent << "is_cartesian: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_cartesian);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WHI_INTERFACES_MESSAGE_WHITCPPOSE_H