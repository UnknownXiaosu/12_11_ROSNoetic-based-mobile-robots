// Auto-generated. Do not edit!

// (in-package whi_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WhiVectorFloat = require('./WhiVectorFloat.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WhiLineChart2D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.array = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('array')) {
        this.array = initObj.array
      }
      else {
        this.array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiLineChart2D
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [array]
    // Serialize the length for message field [array]
    bufferOffset = _serializer.uint32(obj.array.length, buffer, bufferOffset);
    obj.array.forEach((val) => {
      bufferOffset = WhiVectorFloat.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiLineChart2D
    let len;
    let data = new WhiLineChart2D(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [array]
    // Deserialize array length for message field [array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.array[i] = WhiVectorFloat.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.array.forEach((val) => {
      length += WhiVectorFloat.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'whi_interfaces/WhiLineChart2D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb475f588b905accb37a4b48f499ac78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    WhiVectorFloat[] array
    
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
    MSG: whi_interfaces/WhiVectorFloat
    string name
    float32[] data
    string[] items_name
    string[] items_unit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiLineChart2D(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.array !== undefined) {
      resolved.array = new Array(msg.array.length);
      for (let i = 0; i < resolved.array.length; ++i) {
        resolved.array[i] = WhiVectorFloat.Resolve(msg.array[i]);
      }
    }
    else {
      resolved.array = []
    }

    return resolved;
    }
};

module.exports = WhiLineChart2D;
