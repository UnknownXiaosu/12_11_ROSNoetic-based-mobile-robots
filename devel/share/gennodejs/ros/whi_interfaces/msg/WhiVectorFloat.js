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

class WhiVectorFloat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.data = null;
      this.items_name = null;
      this.items_unit = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
      if (initObj.hasOwnProperty('items_name')) {
        this.items_name = initObj.items_name
      }
      else {
        this.items_name = [];
      }
      if (initObj.hasOwnProperty('items_unit')) {
        this.items_unit = initObj.items_unit
      }
      else {
        this.items_unit = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiVectorFloat
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.float32(obj.data, buffer, bufferOffset, null);
    // Serialize message field [items_name]
    bufferOffset = _arraySerializer.string(obj.items_name, buffer, bufferOffset, null);
    // Serialize message field [items_unit]
    bufferOffset = _arraySerializer.string(obj.items_unit, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiVectorFloat
    let len;
    let data = new WhiVectorFloat(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [items_name]
    data.items_name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [items_unit]
    data.items_unit = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += 4 * object.data.length;
    object.items_name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.items_unit.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'whi_interfaces/WhiVectorFloat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3f1b319acd35125ad913749638f6185';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new WhiVectorFloat(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    if (msg.items_name !== undefined) {
      resolved.items_name = msg.items_name;
    }
    else {
      resolved.items_name = []
    }

    if (msg.items_unit !== undefined) {
      resolved.items_unit = msg.items_unit;
    }
    else {
      resolved.items_unit = []
    }

    return resolved;
    }
};

module.exports = WhiVectorFloat;
