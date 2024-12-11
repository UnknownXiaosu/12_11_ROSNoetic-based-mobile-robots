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

class WhiIndicator {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.param = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('param')) {
        this.param = initObj.param
      }
      else {
        this.param = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiIndicator
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [param]
    bufferOffset = _serializer.string(obj.param, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.uint32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiIndicator
    let len;
    let data = new WhiIndicator(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [param]
    data.param = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.param);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'whi_interfaces/WhiIndicator';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cc7a2c8ca562fc53a783c3155712390';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string param
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiIndicator(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.param !== undefined) {
      resolved.param = msg.param;
    }
    else {
      resolved.param = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

module.exports = WhiIndicator;
