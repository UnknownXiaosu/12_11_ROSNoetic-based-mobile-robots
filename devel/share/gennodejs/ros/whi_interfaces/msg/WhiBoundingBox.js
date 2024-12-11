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

//-----------------------------------------------------------

class WhiBoundingBox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cls = null;
      this.acc_prob = null;
      this.state = null;
      this.state_prob = null;
      this.left_top = null;
      this.right_bottom = null;
      this.init_pose = null;
      this.target_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('cls')) {
        this.cls = initObj.cls
      }
      else {
        this.cls = '';
      }
      if (initObj.hasOwnProperty('acc_prob')) {
        this.acc_prob = initObj.acc_prob
      }
      else {
        this.acc_prob = 0.0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('state_prob')) {
        this.state_prob = initObj.state_prob
      }
      else {
        this.state_prob = 0.0;
      }
      if (initObj.hasOwnProperty('left_top')) {
        this.left_top = initObj.left_top
      }
      else {
        this.left_top = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('right_bottom')) {
        this.right_bottom = initObj.right_bottom
      }
      else {
        this.right_bottom = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('init_pose')) {
        this.init_pose = initObj.init_pose
      }
      else {
        this.init_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('target_pose')) {
        this.target_pose = initObj.target_pose
      }
      else {
        this.target_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiBoundingBox
    // Serialize message field [cls]
    bufferOffset = _serializer.string(obj.cls, buffer, bufferOffset);
    // Serialize message field [acc_prob]
    bufferOffset = _serializer.float64(obj.acc_prob, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [state_prob]
    bufferOffset = _serializer.float64(obj.state_prob, buffer, bufferOffset);
    // Serialize message field [left_top]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.left_top, buffer, bufferOffset);
    // Serialize message field [right_bottom]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.right_bottom, buffer, bufferOffset);
    // Serialize message field [init_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.init_pose, buffer, bufferOffset);
    // Serialize message field [target_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.target_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiBoundingBox
    let len;
    let data = new WhiBoundingBox(null);
    // Deserialize message field [cls]
    data.cls = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [acc_prob]
    data.acc_prob = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state_prob]
    data.state_prob = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_top]
    data.left_top = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_bottom]
    data.right_bottom = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [init_pose]
    data.init_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_pose]
    data.target_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.cls);
    length += _getByteLength(object.state);
    return length + 248;
  }

  static datatype() {
    // Returns string type for a message object
    return 'whi_interfaces/WhiBoundingBox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ecec343062f58885bb78dad9096cfd28';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string cls
    float64 acc_prob
    string state
    float64 state_prob
    geometry_msgs/Pose left_top
    geometry_msgs/Pose right_bottom
    geometry_msgs/Pose init_pose
    geometry_msgs/Pose target_pose
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiBoundingBox(null);
    if (msg.cls !== undefined) {
      resolved.cls = msg.cls;
    }
    else {
      resolved.cls = ''
    }

    if (msg.acc_prob !== undefined) {
      resolved.acc_prob = msg.acc_prob;
    }
    else {
      resolved.acc_prob = 0.0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.state_prob !== undefined) {
      resolved.state_prob = msg.state_prob;
    }
    else {
      resolved.state_prob = 0.0
    }

    if (msg.left_top !== undefined) {
      resolved.left_top = geometry_msgs.msg.Pose.Resolve(msg.left_top)
    }
    else {
      resolved.left_top = new geometry_msgs.msg.Pose()
    }

    if (msg.right_bottom !== undefined) {
      resolved.right_bottom = geometry_msgs.msg.Pose.Resolve(msg.right_bottom)
    }
    else {
      resolved.right_bottom = new geometry_msgs.msg.Pose()
    }

    if (msg.init_pose !== undefined) {
      resolved.init_pose = geometry_msgs.msg.Pose.Resolve(msg.init_pose)
    }
    else {
      resolved.init_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.target_pose !== undefined) {
      resolved.target_pose = geometry_msgs.msg.Pose.Resolve(msg.target_pose)
    }
    else {
      resolved.target_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = WhiBoundingBox;
