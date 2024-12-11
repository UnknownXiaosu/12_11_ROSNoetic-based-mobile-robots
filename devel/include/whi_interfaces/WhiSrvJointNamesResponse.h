// Generated by gencpp from file whi_interfaces/WhiSrvJointNamesResponse.msg
// DO NOT EDIT!


#ifndef WHI_INTERFACES_MESSAGE_WHISRVJOINTNAMESRESPONSE_H
#define WHI_INTERFACES_MESSAGE_WHISRVJOINTNAMESRESPONSE_H


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
struct WhiSrvJointNamesResponse_
{
  typedef WhiSrvJointNamesResponse_<ContainerAllocator> Type;

  WhiSrvJointNamesResponse_()
    : result(false)
    , joint_names()  {
    }
  WhiSrvJointNamesResponse_(const ContainerAllocator& _alloc)
    : result(false)
    , joint_names(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _joint_names_type;
  _joint_names_type joint_names;





  typedef boost::shared_ptr< ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct WhiSrvJointNamesResponse_

typedef ::whi_interfaces::WhiSrvJointNamesResponse_<std::allocator<void> > WhiSrvJointNamesResponse;

typedef boost::shared_ptr< ::whi_interfaces::WhiSrvJointNamesResponse > WhiSrvJointNamesResponsePtr;
typedef boost::shared_ptr< ::whi_interfaces::WhiSrvJointNamesResponse const> WhiSrvJointNamesResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result &&
    lhs.joint_names == rhs.joint_names;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace whi_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9701ae99cbeecda2e4cd171db381bf43";
  }

  static const char* value(const ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9701ae99cbeecda2ULL;
  static const uint64_t static_value2 = 0xe4cd171db381bf43ULL;
};

template<class ContainerAllocator>
struct DataType< ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "whi_interfaces/WhiSrvJointNamesResponse";
  }

  static const char* value(const ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n"
"string[] joint_names\n"
"\n"
;
  }

  static const char* value(const ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.joint_names);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WhiSrvJointNamesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::whi_interfaces::WhiSrvJointNamesResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
    s << indent << "joint_names[]" << std::endl;
    for (size_t i = 0; i < v.joint_names.size(); ++i)
    {
      s << indent << "  joint_names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.joint_names[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // WHI_INTERFACES_MESSAGE_WHISRVJOINTNAMESRESPONSE_H
