// Generated by gencpp from file whi_interfaces/WhiSrvJointNames.msg
// DO NOT EDIT!


#ifndef WHI_INTERFACES_MESSAGE_WHISRVJOINTNAMES_H
#define WHI_INTERFACES_MESSAGE_WHISRVJOINTNAMES_H

#include <ros/service_traits.h>


#include <whi_interfaces/WhiSrvJointNamesRequest.h>
#include <whi_interfaces/WhiSrvJointNamesResponse.h>


namespace whi_interfaces
{

struct WhiSrvJointNames
{

typedef WhiSrvJointNamesRequest Request;
typedef WhiSrvJointNamesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct WhiSrvJointNames
} // namespace whi_interfaces


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::whi_interfaces::WhiSrvJointNames > {
  static const char* value()
  {
    return "9701ae99cbeecda2e4cd171db381bf43";
  }

  static const char* value(const ::whi_interfaces::WhiSrvJointNames&) { return value(); }
};

template<>
struct DataType< ::whi_interfaces::WhiSrvJointNames > {
  static const char* value()
  {
    return "whi_interfaces/WhiSrvJointNames";
  }

  static const char* value(const ::whi_interfaces::WhiSrvJointNames&) { return value(); }
};


// service_traits::MD5Sum< ::whi_interfaces::WhiSrvJointNamesRequest> should match
// service_traits::MD5Sum< ::whi_interfaces::WhiSrvJointNames >
template<>
struct MD5Sum< ::whi_interfaces::WhiSrvJointNamesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::whi_interfaces::WhiSrvJointNames >::value();
  }
  static const char* value(const ::whi_interfaces::WhiSrvJointNamesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::whi_interfaces::WhiSrvJointNamesRequest> should match
// service_traits::DataType< ::whi_interfaces::WhiSrvJointNames >
template<>
struct DataType< ::whi_interfaces::WhiSrvJointNamesRequest>
{
  static const char* value()
  {
    return DataType< ::whi_interfaces::WhiSrvJointNames >::value();
  }
  static const char* value(const ::whi_interfaces::WhiSrvJointNamesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::whi_interfaces::WhiSrvJointNamesResponse> should match
// service_traits::MD5Sum< ::whi_interfaces::WhiSrvJointNames >
template<>
struct MD5Sum< ::whi_interfaces::WhiSrvJointNamesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::whi_interfaces::WhiSrvJointNames >::value();
  }
  static const char* value(const ::whi_interfaces::WhiSrvJointNamesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::whi_interfaces::WhiSrvJointNamesResponse> should match
// service_traits::DataType< ::whi_interfaces::WhiSrvJointNames >
template<>
struct DataType< ::whi_interfaces::WhiSrvJointNamesResponse>
{
  static const char* value()
  {
    return DataType< ::whi_interfaces::WhiSrvJointNames >::value();
  }
  static const char* value(const ::whi_interfaces::WhiSrvJointNamesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WHI_INTERFACES_MESSAGE_WHISRVJOINTNAMES_H