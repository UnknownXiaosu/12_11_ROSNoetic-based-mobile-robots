// Auto-generated. Do not edit!

// (in-package whi_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WhiBattery {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.soc = null;
      this.soh = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('soc')) {
        this.soc = initObj.soc
      }
      else {
        this.soc = 0;
      }
      if (initObj.hasOwnProperty('soh')) {
        this.soh = initObj.soh
      }
      else {
        this.soh = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiBattery
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [soc]
    bufferOffset = _serializer.uint16(obj.soc, buffer, bufferOffset);
    // Serialize message field [soh]
    bufferOffset = _serializer.uint16(obj.soh, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.int8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiBattery
    let len;
    let data = new WhiBattery(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [soc]
    data.soc = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [soh]
    data.soh = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'whi_interfaces/WhiBattery';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3459eabd6dc37def1aa304bda6a545b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint16 soc
    uint16 soh
    uint8 STA_NORMAL=0
    uint8 STA_CHARGING=1
    uint8 STA_NEED_CHARGING=2
    uint8 STA_GOOD_FOR_TASK=3
    uint8 STA_FULL=4
    uint8 STA_FAILURE_RECOVERING=5
    int8 state
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiBattery(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.soc !== undefined) {
      resolved.soc = msg.soc;
    }
    else {
      resolved.soc = 0
    }

    if (msg.soh !== undefined) {
      resolved.soh = msg.soh;
    }
    else {
      resolved.soh = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
WhiBattery.Constants = {
  STA_NORMAL: 0,
  STA_CHARGING: 1,
  STA_NEED_CHARGING: 2,
  STA_GOOD_FOR_TASK: 3,
  STA_FULL: 4,
  STA_FAILURE_RECOVERING: 5,
}

module.exports = WhiBattery;
