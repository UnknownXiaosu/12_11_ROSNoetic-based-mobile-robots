// Generated by gencpp from file whi_interfaces/WhiSrvTcpPoseRequest.msg
// DO NOT EDIT!


#ifndef WHI_INTERFACES_MESSAGE_WHISRVTCPPOSEREQUEST_H
#define WHI_INTERFACES_MESSAGE_WHISRVTCPPOSEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <whi_interfaces/WhiTcpPose.h>

namespace whi_interfaces
{
template <class ContainerAllocator>
struct WhiSrvTcpPoseRequest_
{
  typedef WhiSrvTcpPoseRequest_<ContainerAllocator> Type;

  WhiSrvTcpPoseRequest_()
    : pose()  {
    }
  WhiSrvTcpPoseRequest_(const ContainerAllocator& _alloc)
    : pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::whi_interfaces::WhiTcpPose_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct WhiSrvTcpPoseRequest_

typedef ::whi_interfaces::WhiSrvTcpPoseRequest_<std::allocator<void> > WhiSrvTcpPoseRequest;

typedef boost::shared_ptr< ::whi_interfaces::WhiSrvTcpPoseRequest > WhiSrvTcpPoseRequestPtr;
typedef boost::shared_ptr< ::whi_interfaces::WhiSrvTcpPoseRequest const> WhiSrvTcpPoseRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator2> & rhs)
{
  return lhs.pose == rhs.pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace whi_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "09e47bda1e897903bff8df702332cedf";
  }

  static const char* value(const ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x09e47bda1e897903ULL;
  static const uint64_t static_value2 = 0xbff8df702332cedfULL;
};

template<class ContainerAllocator>
struct DataType< ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "whi_interfaces/WhiSrvTcpPoseRequest";
  }

  static const char* value(const ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "whi_interfaces/WhiTcpPose pose\n"
"\n"
"================================================================================\n"
"MSG: whi_interfaces/WhiTcpPose\n"
"string pose_group\n"
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

  static const char* value(const ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WhiSrvTcpPoseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::whi_interfaces::WhiSrvTcpPoseRequest_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::whi_interfaces::WhiTcpPose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WHI_INTERFACES_MESSAGE_WHISRVTCPPOSEREQUEST_H
