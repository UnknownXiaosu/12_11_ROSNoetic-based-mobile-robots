// Auto-generated. Do not edit!

// (in-package whi_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WhiEng {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.eng_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('eng_flag')) {
        this.eng_flag = initObj.eng_flag
      }
      else {
        this.eng_flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiEng
    // Serialize message field [eng_flag]
    bufferOffset = _serializer.uint32(obj.eng_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiEng
    let len;
    let data = new WhiEng(null);
    // Deserialize message field [eng_flag]
    data.eng_flag = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'whi_interfaces/WhiEng';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48e7e2fd83ff95e2f7e6c60dd652932f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 eng_flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiEng(null);
    if (msg.eng_flag !== undefined) {
      resolved.eng_flag = msg.eng_flag;
    }
    else {
      resolved.eng_flag = 0
    }

    return resolved;
    }
};

module.exports = WhiEng;
