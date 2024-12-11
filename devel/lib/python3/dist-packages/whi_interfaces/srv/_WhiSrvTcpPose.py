# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from whi_interfaces/WhiSrvTcpPoseRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import moveit_msgs.msg
import std_msgs.msg
import whi_interfaces.msg

class WhiSrvTcpPoseRequest(genpy.Message):
  _md5sum = "09e47bda1e897903bff8df702332cedf"
  _type = "whi_interfaces/WhiSrvTcpPoseRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """whi_interfaces/WhiTcpPose pose

================================================================================
MSG: whi_interfaces/WhiTcpPose
string pose_group
geometry_msgs/PoseStamped tcp_pose
moveit_msgs/JointConstraint[] joint_constraints
float64 velocity_scale
float64 acceleration_scale
bool is_cartesian

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: moveit_msgs/JointConstraint
# Constrain the position of a joint to be within a certain bound
string joint_name

# the bound to be achieved is [position - tolerance_below, position + tolerance_above]
float64 position
float64 tolerance_above
float64 tolerance_below

# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
float64 weight
"""
  __slots__ = ['pose']
  _slot_types = ['whi_interfaces/WhiTcpPose']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pose

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(WhiSrvTcpPoseRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.pose is None:
        self.pose = whi_interfaces.msg.WhiTcpPose()
    else:
      self.pose = whi_interfaces.msg.WhiTcpPose()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.pose.pose_group
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.pose.tcp_pose.header.seq, _x.pose.tcp_pose.header.stamp.secs, _x.pose.tcp_pose.header.stamp.nsecs))
      _x = self.pose.tcp_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.pose.tcp_pose.pose.position.x, _x.pose.tcp_pose.pose.position.y, _x.pose.tcp_pose.pose.position.z, _x.pose.tcp_pose.pose.orientation.x, _x.pose.tcp_pose.pose.orientation.y, _x.pose.tcp_pose.pose.orientation.z, _x.pose.tcp_pose.pose.orientation.w))
      length = len(self.pose.joint_constraints)
      buff.write(_struct_I.pack(length))
      for val1 in self.pose.joint_constraints:
        _x = val1.joint_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_4d().pack(_x.position, _x.tolerance_above, _x.tolerance_below, _x.weight))
      _x = self
      buff.write(_get_struct_2dB().pack(_x.pose.velocity_scale, _x.pose.acceleration_scale, _x.pose.is_cartesian))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.pose is None:
        self.pose = whi_interfaces.msg.WhiTcpPose()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.pose.pose_group = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.pose.pose_group = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.pose.tcp_pose.header.seq, _x.pose.tcp_pose.header.stamp.secs, _x.pose.tcp_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.pose.tcp_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.pose.tcp_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.pose.tcp_pose.pose.position.x, _x.pose.tcp_pose.pose.position.y, _x.pose.tcp_pose.pose.position.z, _x.pose.tcp_pose.pose.orientation.x, _x.pose.tcp_pose.pose.orientation.y, _x.pose.tcp_pose.pose.orientation.z, _x.pose.tcp_pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pose.joint_constraints = []
      for i in range(0, length):
        val1 = moveit_msgs.msg.JointConstraint()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.joint_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.joint_name = str[start:end]
        _x = val1
        start = end
        end += 32
        (_x.position, _x.tolerance_above, _x.tolerance_below, _x.weight,) = _get_struct_4d().unpack(str[start:end])
        self.pose.joint_constraints.append(val1)
      _x = self
      start = end
      end += 17
      (_x.pose.velocity_scale, _x.pose.acceleration_scale, _x.pose.is_cartesian,) = _get_struct_2dB().unpack(str[start:end])
      self.pose.is_cartesian = bool(self.pose.is_cartesian)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.pose.pose_group
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.pose.tcp_pose.header.seq, _x.pose.tcp_pose.header.stamp.secs, _x.pose.tcp_pose.header.stamp.nsecs))
      _x = self.pose.tcp_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.pose.tcp_pose.pose.position.x, _x.pose.tcp_pose.pose.position.y, _x.pose.tcp_pose.pose.position.z, _x.pose.tcp_pose.pose.orientation.x, _x.pose.tcp_pose.pose.orientation.y, _x.pose.tcp_pose.pose.orientation.z, _x.pose.tcp_pose.pose.orientation.w))
      length = len(self.pose.joint_constraints)
      buff.write(_struct_I.pack(length))
      for val1 in self.pose.joint_constraints:
        _x = val1.joint_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_4d().pack(_x.position, _x.tolerance_above, _x.tolerance_below, _x.weight))
      _x = self
      buff.write(_get_struct_2dB().pack(_x.pose.velocity_scale, _x.pose.acceleration_scale, _x.pose.is_cartesian))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.pose is None:
        self.pose = whi_interfaces.msg.WhiTcpPose()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.pose.pose_group = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.pose.pose_group = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.pose.tcp_pose.header.seq, _x.pose.tcp_pose.header.stamp.secs, _x.pose.tcp_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.pose.tcp_pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.pose.tcp_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.pose.tcp_pose.pose.position.x, _x.pose.tcp_pose.pose.position.y, _x.pose.tcp_pose.pose.position.z, _x.pose.tcp_pose.pose.orientation.x, _x.pose.tcp_pose.pose.orientation.y, _x.pose.tcp_pose.pose.orientation.z, _x.pose.tcp_pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pose.joint_constraints = []
      for i in range(0, length):
        val1 = moveit_msgs.msg.JointConstraint()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.joint_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.joint_name = str[start:end]
        _x = val1
        start = end
        end += 32
        (_x.position, _x.tolerance_above, _x.tolerance_below, _x.weight,) = _get_struct_4d().unpack(str[start:end])
        self.pose.joint_constraints.append(val1)
      _x = self
      start = end
      end += 17
      (_x.pose.velocity_scale, _x.pose.acceleration_scale, _x.pose.is_cartesian,) = _get_struct_2dB().unpack(str[start:end])
      self.pose.is_cartesian = bool(self.pose.is_cartesian)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2dB = None
def _get_struct_2dB():
    global _struct_2dB
    if _struct_2dB is None:
        _struct_2dB = struct.Struct("<2dB")
    return _struct_2dB
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from whi_interfaces/WhiSrvTcpPoseResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class WhiSrvTcpPoseResponse(genpy.Message):
  _md5sum = "eb13ac1f1354ccecb7941ee8fa2192e8"
  _type = "whi_interfaces/WhiSrvTcpPoseResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool result

"""
  __slots__ = ['result']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(WhiSrvTcpPoseResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = False
    else:
      self.result = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.result
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.result,) = _get_struct_B().unpack(str[start:end])
      self.result = bool(self.result)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.result
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.result,) = _get_struct_B().unpack(str[start:end])
      self.result = bool(self.result)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class WhiSrvTcpPose(object):
  _type          = 'whi_interfaces/WhiSrvTcpPose'
  _md5sum = '02c8b6908754e6d9bbc689bc093a0d87'
  _request_class  = WhiSrvTcpPoseRequest
  _response_class = WhiSrvTcpPoseResponse