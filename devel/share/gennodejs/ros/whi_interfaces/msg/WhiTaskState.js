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

class WhiTaskState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.parent_name = null;
      this.info = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('parent_name')) {
        this.parent_name = initObj.parent_name
      }
      else {
        this.parent_name = '';
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiTaskState
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [parent_name]
    bufferOffset = _serializer.string(obj.parent_name, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _serializer.string(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiTaskState
    let len;
    let data = new WhiTaskState(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [parent_name]
    data.parent_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.parent_name);
    length += _getByteLength(object.info);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'whi_interfaces/WhiTaskState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01ad27c42669fbf38fd676c85f58b3a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string parent_name
    string info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiTaskState(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.parent_name !== undefined) {
      resolved.parent_name = msg.parent_name;
    }
    else {
      resolved.parent_name = ''
    }

    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = ''
    }

    return resolved;
    }
};

module.exports = WhiTaskState;
