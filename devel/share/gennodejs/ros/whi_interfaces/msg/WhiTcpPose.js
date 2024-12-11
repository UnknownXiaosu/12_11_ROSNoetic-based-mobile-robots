// Auto-generated. Do not edit!

// (in-package whi_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let moveit_msgs = _finder('moveit_msgs');

//-----------------------------------------------------------

class WhiTcpPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_group = null;
      this.tcp_pose = null;
      this.joint_constraints = null;
      this.velocity_scale = null;
      this.acceleration_scale = null;
      this.is_cartesian = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_group')) {
        this.pose_group = initObj.pose_group
      }
      else {
        this.pose_group = '';
      }
      if (initObj.hasOwnProperty('tcp_pose')) {
        this.tcp_pose = initObj.tcp_pose
      }
      else {
        this.tcp_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('joint_constraints')) {
        this.joint_constraints = initObj.joint_constraints
      }
      else {
        this.joint_constraints = [];
      }
      if (initObj.hasOwnProperty('velocity_scale')) {
        this.velocity_scale = initObj.velocity_scale
      }
      else {
        this.velocity_scale = 0.0;
      }
      if (initObj.hasOwnProperty('acceleration_scale')) {
        this.acceleration_scale = initObj.acceleration_scale
      }
      else {
        this.acceleration_scale = 0.0;
      }
      if (initObj.hasOwnProperty('is_cartesian')) {
        this.is_cartesian = initObj.is_cartesian
      }
      else {
        this.is_cartesian = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiTcpPose
    // Serialize message field [pose_group]
    bufferOffset = _serializer.string(obj.pose_group, buffer, bufferOffset);
    // Serialize message field [tcp_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.tcp_pose, buffer, bufferOffset);
    // Serialize message field [joint_constraints]
    // Serialize the length for message field [joint_constraints]
    bufferOffset = _serializer.uint32(obj.joint_constraints.length, buffer, bufferOffset);
    obj.joint_constraints.forEach((val) => {
      bufferOffset = moveit_msgs.msg.JointConstraint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [velocity_scale]
    bufferOffset = _serializer.float64(obj.velocity_scale, buffer, bufferOffset);
    // Serialize message field [acceleration_scale]
    bufferOffset = _serializer.float64(obj.acceleration_scale, buffer, bufferOffset);
    // Serialize message field [is_cartesian]
    bufferOffset = _serializer.bool(obj.is_cartesian, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiTcpPose
    let len;
    let data = new WhiTcpPose(null);
    // Deserialize message field [pose_group]
    data.pose_group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tcp_pose]
    data.tcp_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint_constraints]
    // Deserialize array length for message field [joint_constraints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joint_constraints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joint_constraints[i] = moveit_msgs.msg.JointConstraint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [velocity_scale]
    data.velocity_scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acceleration_scale]
    data.acceleration_scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_cartesian]
    data.is_cartesian = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.pose_group);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.tcp_pose);
    object.joint_constraints.forEach((val) => {
      length += moveit_msgs.msg.JointConstraint.getMessageSize(val);
    });
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'whi_interfaces/WhiTcpPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dda58110693227076bb879db634d52fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiTcpPose(null);
    if (msg.pose_group !== undefined) {
      resolved.pose_group = msg.pose_group;
    }
    else {
      resolved.pose_group = ''
    }

    if (msg.tcp_pose !== undefined) {
      resolved.tcp_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.tcp_pose)
    }
    else {
      resolved.tcp_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.joint_constraints !== undefined) {
      resolved.joint_constraints = new Array(msg.joint_constraints.length);
      for (let i = 0; i < resolved.joint_constraints.length; ++i) {
        resolved.joint_constraints[i] = moveit_msgs.msg.JointConstraint.Resolve(msg.joint_constraints[i]);
      }
    }
    else {
      resolved.joint_constraints = []
    }

    if (msg.velocity_scale !== undefined) {
      resolved.velocity_scale = msg.velocity_scale;
    }
    else {
      resolved.velocity_scale = 0.0
    }

    if (msg.acceleration_scale !== undefined) {
      resolved.acceleration_scale = msg.acceleration_scale;
    }
    else {
      resolved.acceleration_scale = 0.0
    }

    if (msg.is_cartesian !== undefined) {
      resolved.is_cartesian = msg.is_cartesian;
    }
    else {
      resolved.is_cartesian = false
    }

    return resolved;
    }
};

module.exports = WhiTcpPose;
