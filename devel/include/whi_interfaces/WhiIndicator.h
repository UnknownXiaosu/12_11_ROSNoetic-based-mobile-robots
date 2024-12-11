// Generated by gencpp from file whi_interfaces/WhiIndicator.msg
// DO NOT EDIT!


#ifndef WHI_INTERFACES_MESSAGE_WHIINDICATOR_H
#define WHI_INTERFACES_MESSAGE_WHIINDICATOR_H


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
struct WhiIndicator_
{
  typedef WhiIndicator_<ContainerAllocator> Type;

  WhiIndicator_()
    : name()
    , param()
    , value(0)  {
    }
  WhiIndicator_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , param(_alloc)
    , value(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _param_type;
  _param_type param;

   typedef uint32_t _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::whi_interfaces::WhiIndicator_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::whi_interfaces::WhiIndicator_<ContainerAllocator> const> ConstPtr;

}; // struct WhiIndicator_

typedef ::whi_interfaces::WhiIndicator_<std::allocator<void> > WhiIndicator;

typedef boost::shared_ptr< ::whi_interfaces::WhiIndicator > WhiIndicatorPtr;
typedef boost::shared_ptr< ::whi_interfaces::WhiIndicator const> WhiIndicatorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::whi_interfaces::WhiIndicator_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::whi_interfaces::WhiIndicator_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::whi_interfaces::WhiIndicator_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiIndicator_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.param == rhs.param &&
    lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::whi_interfaces::WhiIndicator_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiIndicator_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace whi_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiIndicator_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiIndicator_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiIndicator_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiIndicator_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiIndicator_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiIndicator_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::whi_interfaces::WhiIndicator_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9cc7a2c8ca562fc53a783c3155712390";
  }

  static const char* value(const ::whi_interfaces::WhiIndicator_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9cc7a2c8ca562fc5ULL;
  static const uint64_t static_value2 = 0x3a783c3155712390ULL;
};

template<class ContainerAllocator>
struct DataType< ::whi_interfaces::WhiIndicator_<ContainerAllocator> >
{
  static const char* value()
  {
    return "whi_interfaces/WhiIndicator";
  }

  static const char* value(const ::whi_interfaces::WhiIndicator_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::whi_interfaces::WhiIndicator_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"string param\n"
"uint32 value\n"
;
  }

  static const char* value(const ::whi_interfaces::WhiIndicator_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::whi_interfaces::WhiIndicator_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.param);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WhiIndicator_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::whi_interfaces::WhiIndicator_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::whi_interfaces::WhiIndicator_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "param: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.param);
    s << indent << "value: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WHI_INTERFACES_MESSAGE_WHIINDICATOR_H