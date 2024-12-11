// Auto-generated. Do not edit!

// (in-package whi_interfaces.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WhiTcpPose = require('../msg/WhiTcpPose.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class WhiSrvTcpPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new WhiTcpPose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiSrvTcpPoseRequest
    // Serialize message field [pose]
    bufferOffset = WhiTcpPose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvTcpPoseRequest
    let len;
    let data = new WhiSrvTcpPoseRequest(null);
    // Deserialize message field [pose]
    data.pose = WhiTcpPose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WhiTcpPose.getMessageSize(object.pose);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvTcpPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09e47bda1e897903bff8df702332cedf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    whi_interfaces/WhiTcpPose pose
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiSrvTcpPoseRequest(null);
    if (msg.pose !== undefined) {
      resolved.pose = WhiTcpPose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new WhiTcpPose()
    }

    return resolved;
    }
};

class WhiSrvTcpPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiSrvTcpPoseResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvTcpPoseResponse
    let len;
    let data = new WhiSrvTcpPoseResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvTcpPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiSrvTcpPoseResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: WhiSrvTcpPoseRequest,
  Response: WhiSrvTcpPoseResponse,
  md5sum() { return '02c8b6908754e6d9bbc689bc093a0d87'; },
  datatype() { return 'whi_interfaces/WhiSrvTcpPose'; }
};
