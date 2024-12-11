// Generated by gencpp from file whi_interfaces/WhiEng.msg
// DO NOT EDIT!


#ifndef WHI_INTERFACES_MESSAGE_WHIENG_H
#define WHI_INTERFACES_MESSAGE_WHIENG_H


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
struct WhiEng_
{
  typedef WhiEng_<ContainerAllocator> Type;

  WhiEng_()
    : eng_flag(0)  {
    }
  WhiEng_(const ContainerAllocator& _alloc)
    : eng_flag(0)  {
  (void)_alloc;
    }



   typedef uint32_t _eng_flag_type;
  _eng_flag_type eng_flag;





  typedef boost::shared_ptr< ::whi_interfaces::WhiEng_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::whi_interfaces::WhiEng_<ContainerAllocator> const> ConstPtr;

}; // struct WhiEng_

typedef ::whi_interfaces::WhiEng_<std::allocator<void> > WhiEng;

typedef boost::shared_ptr< ::whi_interfaces::WhiEng > WhiEngPtr;
typedef boost::shared_ptr< ::whi_interfaces::WhiEng const> WhiEngConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::whi_interfaces::WhiEng_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::whi_interfaces::WhiEng_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::whi_interfaces::WhiEng_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiEng_<ContainerAllocator2> & rhs)
{
  return lhs.eng_flag == rhs.eng_flag;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::whi_interfaces::WhiEng_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiEng_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace whi_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiEng_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiEng_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiEng_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiEng_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiEng_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiEng_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::whi_interfaces::WhiEng_<ContainerAllocator> >
{
  static const char* value()
  {
    return "48e7e2fd83ff95e2f7e6c60dd652932f";
  }

  static const char* value(const ::whi_interfaces::WhiEng_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x48e7e2fd83ff95e2ULL;
  static const uint64_t static_value2 = 0xf7e6c60dd652932fULL;
};

template<class ContainerAllocator>
struct DataType< ::whi_interfaces::WhiEng_<ContainerAllocator> >
{
  static const char* value()
  {
    return "whi_interfaces/WhiEng";
  }

  static const char* value(const ::whi_interfaces::WhiEng_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::whi_interfaces::WhiEng_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 eng_flag\n"
;
  }

  static const char* value(const ::whi_interfaces::WhiEng_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::whi_interfaces::WhiEng_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.eng_flag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WhiEng_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::whi_interfaces::WhiEng_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::whi_interfaces::WhiEng_<ContainerAllocator>& v)
  {
    s << indent << "eng_flag: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.eng_flag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WHI_INTERFACES_MESSAGE_WHIENG_H