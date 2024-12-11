// Generated by gencpp from file whi_interfaces/WhiSrvMotionOffsets.msg
// DO NOT EDIT!


#ifndef WHI_INTERFACES_MESSAGE_WHISRVMOTIONOFFSETS_H
#define WHI_INTERFACES_MESSAGE_WHISRVMOTIONOFFSETS_H

#include <ros/service_traits.h>


#include <whi_interfaces/WhiSrvMotionOffsetsRequest.h>
#include <whi_interfaces/WhiSrvMotionOffsetsResponse.h>


namespace whi_interfaces
{

struct WhiSrvMotionOffsets
{

typedef WhiSrvMotionOffsetsRequest Request;
typedef WhiSrvMotionOffsetsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct WhiSrvMotionOffsets
} // namespace whi_interfaces


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::whi_interfaces::WhiSrvMotionOffsets > {
  static const char* value()
  {
    return "4c6fb4cf42eea618330dd37f243af28e";
  }

  static const char* value(const ::whi_interfaces::WhiSrvMotionOffsets&) { return value(); }
};

template<>
struct DataType< ::whi_interfaces::WhiSrvMotionOffsets > {
  static const char* value()
  {
    return "whi_interfaces/WhiSrvMotionOffsets";
  }

  static const char* value(const ::whi_interfaces::WhiSrvMotionOffsets&) { return value(); }
};


// service_traits::MD5Sum< ::whi_interfaces::WhiSrvMotionOffsetsRequest> should match
// service_traits::MD5Sum< ::whi_interfaces::WhiSrvMotionOffsets >
template<>
struct MD5Sum< ::whi_interfaces::WhiSrvMotionOffsetsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::whi_interfaces::WhiSrvMotionOffsets >::value();
  }
  static const char* value(const ::whi_interfaces::WhiSrvMotionOffsetsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::whi_interfaces::WhiSrvMotionOffsetsRequest> should match
// service_traits::DataType< ::whi_interfaces::WhiSrvMotionOffsets >
template<>
struct DataType< ::whi_interfaces::WhiSrvMotionOffsetsRequest>
{
  static const char* value()
  {
    return DataType< ::whi_interfaces::WhiSrvMotionOffsets >::value();
  }
  static const char* value(const ::whi_interfaces::WhiSrvMotionOffsetsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::whi_interfaces::WhiSrvMotionOffsetsResponse> should match
// service_traits::MD5Sum< ::whi_interfaces::WhiSrvMotionOffsets >
template<>
struct MD5Sum< ::whi_interfaces::WhiSrvMotionOffsetsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::whi_interfaces::WhiSrvMotionOffsets >::value();
  }
  static const char* value(const ::whi_interfaces::WhiSrvMotionOffsetsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::whi_interfaces::WhiSrvMotionOffsetsResponse> should match
// service_traits::DataType< ::whi_interfaces::WhiSrvMotionOffsets >
template<>
struct DataType< ::whi_interfaces::WhiSrvMotionOffsetsResponse>
{
  static const char* value()
  {
    return DataType< ::whi_interfaces::WhiSrvMotionOffsets >::value();
  }
  static const char* value(const ::whi_interfaces::WhiSrvMotionOffsetsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WHI_INTERFACES_MESSAGE_WHISRVMOTIONOFFSETS_H
