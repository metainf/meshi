// Generated by gencpp from file robot_config/ingredient_status.msg
// DO NOT EDIT!


#ifndef ROBOT_CONFIG_MESSAGE_INGREDIENT_STATUS_H
#define ROBOT_CONFIG_MESSAGE_INGREDIENT_STATUS_H

#include <ros/service_traits.h>


#include <robot_config/ingredient_statusRequest.h>
#include <robot_config/ingredient_statusResponse.h>


namespace robot_config
{

struct ingredient_status
{

typedef ingredient_statusRequest Request;
typedef ingredient_statusResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ingredient_status
} // namespace robot_config


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_config::ingredient_status > {
  static const char* value()
  {
    return "93de39baeda562f586060087bd46b003";
  }

  static const char* value(const ::robot_config::ingredient_status&) { return value(); }
};

template<>
struct DataType< ::robot_config::ingredient_status > {
  static const char* value()
  {
    return "robot_config/ingredient_status";
  }

  static const char* value(const ::robot_config::ingredient_status&) { return value(); }
};


// service_traits::MD5Sum< ::robot_config::ingredient_statusRequest> should match 
// service_traits::MD5Sum< ::robot_config::ingredient_status > 
template<>
struct MD5Sum< ::robot_config::ingredient_statusRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_config::ingredient_status >::value();
  }
  static const char* value(const ::robot_config::ingredient_statusRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_config::ingredient_statusRequest> should match 
// service_traits::DataType< ::robot_config::ingredient_status > 
template<>
struct DataType< ::robot_config::ingredient_statusRequest>
{
  static const char* value()
  {
    return DataType< ::robot_config::ingredient_status >::value();
  }
  static const char* value(const ::robot_config::ingredient_statusRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_config::ingredient_statusResponse> should match 
// service_traits::MD5Sum< ::robot_config::ingredient_status > 
template<>
struct MD5Sum< ::robot_config::ingredient_statusResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_config::ingredient_status >::value();
  }
  static const char* value(const ::robot_config::ingredient_statusResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_config::ingredient_statusResponse> should match 
// service_traits::DataType< ::robot_config::ingredient_status > 
template<>
struct DataType< ::robot_config::ingredient_statusResponse>
{
  static const char* value()
  {
    return DataType< ::robot_config::ingredient_status >::value();
  }
  static const char* value(const ::robot_config::ingredient_statusResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_CONFIG_MESSAGE_INGREDIENT_STATUS_H
