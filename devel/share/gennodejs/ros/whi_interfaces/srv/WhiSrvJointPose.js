// Auto-generated. Do not edit!

// (in-package whi_interfaces.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WhiJointPose = require('../msg/WhiJointPose.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class WhiSrvJointPoseRequest {
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
        this.pose = new WhiJointPose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiSrvJointPoseRequest
    // Serialize message field [pose]
    bufferOffset = WhiJointPose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvJointPoseRequest
    let len;
    let data = new WhiSrvJointPoseRequest(null);
    // Deserialize message field [pose]
    data.pose = WhiJointPose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WhiJointPose.getMessageSize(object.pose);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvJointPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c87770da24f8688f5cf940e8100b765c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    whi_interfaces/WhiJointPose pose
    
    ================================================================================
    MSG: whi_interfaces/WhiJointPose
    sensor_msgs/JointState joint_pose
    moveit_msgs/JointConstraint[] joint_constraints
    float64 velocity_scale
    float64 acceleration_scale
    bool is_relative
    
    ================================================================================
    MSG: sensor_msgs/JointState
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and 
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    
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
    const resolved = new WhiSrvJointPoseRequest(null);
    if (msg.pose !== undefined) {
      resolved.pose = WhiJointPose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new WhiJointPose()
    }

    return resolved;
    }
};

class WhiSrvJointPoseResponse {
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
    // Serializes a message object of type WhiSrvJointPoseResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvJointPoseResponse
    let len;
    let data = new WhiSrvJointPoseResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvJointPoseResponse';
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
    const resolved = new WhiSrvJointPoseResponse(null);
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
  Request: WhiSrvJointPoseRequest,
  Response: WhiSrvJointPoseResponse,
  md5sum() { return '7171209ddb400c1d7e51ff842e42bd1f'; },
  datatype() { return 'whi_interfaces/WhiSrvJointPose'; }
};
