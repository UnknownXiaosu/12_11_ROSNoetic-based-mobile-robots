// Generated by gencpp from file whi_interfaces/WhiPartialDischarge.msg
// DO NOT EDIT!


#ifndef WHI_INTERFACES_MESSAGE_WHIPARTIALDISCHARGE_H
#define WHI_INTERFACES_MESSAGE_WHIPARTIALDISCHARGE_H


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
struct WhiPartialDischarge_
{
  typedef WhiPartialDischarge_<ContainerAllocator> Type;

  WhiPartialDischarge_()
    : peak(0.0)
    , average(0.0)
    , noise(0.0)
    , phase(0.0)
    , count(0)
    , cycle_count(0)
    , state(0)
    , channel()  {
    }
  WhiPartialDischarge_(const ContainerAllocator& _alloc)
    : peak(0.0)
    , average(0.0)
    , noise(0.0)
    , phase(0.0)
    , count(0)
    , cycle_count(0)
    , state(0)
    , channel(_alloc)  {
  (void)_alloc;
    }



   typedef float _peak_type;
  _peak_type peak;

   typedef float _average_type;
  _average_type average;

   typedef float _noise_type;
  _noise_type noise;

   typedef float _phase_type;
  _phase_type phase;

   typedef int32_t _count_type;
  _count_type count;

   typedef int32_t _cycle_count_type;
  _cycle_count_type cycle_count;

   typedef uint8_t _state_type;
  _state_type state;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _channel_type;
  _channel_type channel;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(STA_SENSOR_ERROR)
  #undef STA_SENSOR_ERROR
#endif
#if defined(_WIN32) && defined(STA_NORMAL)
  #undef STA_NORMAL
#endif
#if defined(_WIN32) && defined(STA_CHANNEL_1_ALERT)
  #undef STA_CHANNEL_1_ALERT
#endif
#if defined(_WIN32) && defined(STA_DISCHARGE_HIGH)
  #undef STA_DISCHARGE_HIGH
#endif
#if defined(_WIN32) && defined(STA_DISCHARGE_ALERT)
  #undef STA_DISCHARGE_ALERT
#endif

  enum {
    STA_SENSOR_ERROR = 0u,
    STA_NORMAL = 1u,
    STA_CHANNEL_1_ALERT = 2u,
    STA_DISCHARGE_HIGH = 3u,
    STA_DISCHARGE_ALERT = 4u,
  };


  typedef boost::shared_ptr< ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator> const> ConstPtr;

}; // struct WhiPartialDischarge_

typedef ::whi_interfaces::WhiPartialDischarge_<std::allocator<void> > WhiPartialDischarge;

typedef boost::shared_ptr< ::whi_interfaces::WhiPartialDischarge > WhiPartialDischargePtr;
typedef boost::shared_ptr< ::whi_interfaces::WhiPartialDischarge const> WhiPartialDischargeConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator2> & rhs)
{
  return lhs.peak == rhs.peak &&
    lhs.average == rhs.average &&
    lhs.noise == rhs.noise &&
    lhs.phase == rhs.phase &&
    lhs.count == rhs.count &&
    lhs.cycle_count == rhs.cycle_count &&
    lhs.state == rhs.state &&
    lhs.channel == rhs.channel;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace whi_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "55e97ba29b0bc0c839a3411f235ee2dd";
  }

  static const char* value(const ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x55e97ba29b0bc0c8ULL;
  static const uint64_t static_value2 = 0x39a3411f235ee2ddULL;
};

template<class ContainerAllocator>
struct DataType< ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "whi_interfaces/WhiPartialDischarge";
  }

  static const char* value(const ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 STA_SENSOR_ERROR=0\n"
"uint8 STA_NORMAL=1\n"
"uint8 STA_CHANNEL_1_ALERT=2\n"
"uint8 STA_DISCHARGE_HIGH=3\n"
"uint8 STA_DISCHARGE_ALERT=4\n"
"float32 peak\n"
"float32 average\n"
"float32 noise\n"
"float32 phase\n"
"int32 count\n"
"int32 cycle_count\n"
"uint8 state\n"
"string channel\n"
;
  }

  static const char* value(const ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.peak);
      stream.next(m.average);
      stream.next(m.noise);
      stream.next(m.phase);
      stream.next(m.count);
      stream.next(m.cycle_count);
      stream.next(m.state);
      stream.next(m.channel);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WhiPartialDischarge_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::whi_interfaces::WhiPartialDischarge_<ContainerAllocator>& v)
  {
    s << indent << "peak: ";
    Printer<float>::stream(s, indent + "  ", v.peak);
    s << indent << "average: ";
    Printer<float>::stream(s, indent + "  ", v.average);
    s << indent << "noise: ";
    Printer<float>::stream(s, indent + "  ", v.noise);
    s << indent << "phase: ";
    Printer<float>::stream(s, indent + "  ", v.phase);
    s << indent << "count: ";
    Printer<int32_t>::stream(s, indent + "  ", v.count);
    s << indent << "cycle_count: ";
    Printer<int32_t>::stream(s, indent + "  ", v.cycle_count);
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
    s << indent << "channel: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.channel);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WHI_INTERFACES_MESSAGE_WHIPARTIALDISCHARGE_H