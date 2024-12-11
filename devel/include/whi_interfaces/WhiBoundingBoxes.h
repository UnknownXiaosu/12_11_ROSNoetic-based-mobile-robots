// Generated by gencpp from file whi_interfaces/WhiBoundingBoxes.msg
// DO NOT EDIT!


#ifndef WHI_INTERFACES_MESSAGE_WHIBOUNDINGBOXES_H
#define WHI_INTERFACES_MESSAGE_WHIBOUNDINGBOXES_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <std_msgs/Header.h>
#include <whi_interfaces/WhiBoundingBox.h>

namespace whi_interfaces
{
template <class ContainerAllocator>
struct WhiBoundingBoxes_
{
  typedef WhiBoundingBoxes_<ContainerAllocator> Type;

  WhiBoundingBoxes_()
    : header()
    , image_header()
    , bounding_boxes()  {
    }
  WhiBoundingBoxes_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , image_header(_alloc)
    , bounding_boxes(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::std_msgs::Header_<ContainerAllocator>  _image_header_type;
  _image_header_type image_header;

   typedef std::vector< ::whi_interfaces::WhiBoundingBox_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::whi_interfaces::WhiBoundingBox_<ContainerAllocator> >> _bounding_boxes_type;
  _bounding_boxes_type bounding_boxes;





  typedef boost::shared_ptr< ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator> const> ConstPtr;

}; // struct WhiBoundingBoxes_

typedef ::whi_interfaces::WhiBoundingBoxes_<std::allocator<void> > WhiBoundingBoxes;

typedef boost::shared_ptr< ::whi_interfaces::WhiBoundingBoxes > WhiBoundingBoxesPtr;
typedef boost::shared_ptr< ::whi_interfaces::WhiBoundingBoxes const> WhiBoundingBoxesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.image_header == rhs.image_header &&
    lhs.bounding_boxes == rhs.bounding_boxes;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator1> & lhs, const ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace whi_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8911449558f3b056d38d5267f17d8949";
  }

  static const char* value(const ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8911449558f3b056ULL;
  static const uint64_t static_value2 = 0xd38d5267f17d8949ULL;
};

template<class ContainerAllocator>
struct DataType< ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "whi_interfaces/WhiBoundingBoxes";
  }

  static const char* value(const ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"Header image_header\n"
"WhiBoundingBox[] bounding_boxes\n"
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
"MSG: whi_interfaces/WhiBoundingBox\n"
"string cls\n"
"float64 acc_prob\n"
"string state\n"
"float64 state_prob\n"
"geometry_msgs/Pose left_top\n"
"geometry_msgs/Pose right_bottom\n"
"geometry_msgs/Pose init_pose\n"
"geometry_msgs/Pose target_pose\n"
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
;
  }

  static const char* value(const ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.image_header);
      stream.next(m.bounding_boxes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WhiBoundingBoxes_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::whi_interfaces::WhiBoundingBoxes_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "image_header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.image_header);
    s << indent << "bounding_boxes[]" << std::endl;
    for (size_t i = 0; i < v.bounding_boxes.size(); ++i)
    {
      s << indent << "  bounding_boxes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::whi_interfaces::WhiBoundingBox_<ContainerAllocator> >::stream(s, indent + "    ", v.bounding_boxes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // WHI_INTERFACES_MESSAGE_WHIBOUNDINGBOXES_H