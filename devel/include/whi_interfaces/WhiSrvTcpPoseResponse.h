// Generated by gencpp from file whi_interfaces/WhiSrvTcpPoseResponse.msg
// DO NOT EDIT!


#ifndef WHI_INTERFACES_MESSAGE_WHISRVTCPPOSERESPONSE_H
#define WHI_INTERFACES_MESSAGE_WHISRVTCPPOSERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace whi_interfaces
{
template <class ContainerAllocator>
struct WhiSrvTcpPoseResponse_
{
  typedef WhiSrvTcpPoseResponse_<ContainerAllocator> Type;

  WhiSrvTcpPoseResponse_()
    : result(false)  {
    }
  WhiSrvTcpPoseResponse_(const ContainerAllocator& _alloc)
    : result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator> const> ConstPtr;

}; // struct WhiSrvTcpPoseResponse_

typedef ::whi_interfaces::WhiSrvTcpPoseResponse_<std::allocator<void> > WhiSrvTcpPoseResponse;

typedef boost::shared_ptr< ::whi_interfaces::WhiSrvTcpPoseResponse > WhiSrvTcpPoseResponsePtr;
typedef boost::shared_ptr< ::whi_interfaces::WhiSrvTcpPoseResponse const> WhiSrvTcpPoseResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace whi_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb13ac1f1354ccecULL;
  static const uint64_t static_value2 = 0xb7941ee8fa2192e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "whi_interfaces/WhiSrvTcpPoseResponse";
  }

  static const char* value(const ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n"
"\n"
;
  }

  static const char* value(const ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WhiSrvTcpPoseResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::whi_interfaces::WhiSrvTcpPoseResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WHI_INTERFACES_MESSAGE_WHISRVTCPPOSERESPONSE_H