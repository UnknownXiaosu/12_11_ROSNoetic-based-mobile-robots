// Auto-generated. Do not edit!

// (in-package whi_interfaces.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class WhiSrvIoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.addr = null;
      this.level = null;
      this.operation = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('addr')) {
        this.addr = initObj.addr
      }
      else {
        this.addr = 0;
      }
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = 0;
      }
      if (initObj.hasOwnProperty('operation')) {
        this.operation = initObj.operation
      }
      else {
        this.operation = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiSrvIoRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [addr]
    bufferOffset = _serializer.int32(obj.addr, buffer, bufferOffset);
    // Serialize message field [level]
    bufferOffset = _serializer.uint8(obj.level, buffer, bufferOffset);
    // Serialize message field [operation]
    bufferOffset = _serializer.uint8(obj.operation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvIoRequest
    let len;
    let data = new WhiSrvIoRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [addr]
    data.addr = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [level]
    data.level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [operation]
    data.operation = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvIoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a835c885cd8a6dc87db1517c19407204';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 OPER_READ=0
    uint8 OPER_WRITE=1
    string name
    int32 addr
    uint8 level
    uint8 operation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiSrvIoRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.addr !== undefined) {
      resolved.addr = msg.addr;
    }
    else {
      resolved.addr = 0
    }

    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = 0
    }

    if (msg.operation !== undefined) {
      resolved.operation = msg.operation;
    }
    else {
      resolved.operation = 0
    }

    return resolved;
    }
};

// Constants for message
WhiSrvIoRequest.Constants = {
  OPER_READ: 0,
  OPER_WRITE: 1,
}

class WhiSrvIoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.level = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = 0;
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiSrvIoResponse
    // Serialize message field [level]
    bufferOffset = _serializer.uint8(obj.level, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvIoResponse
    let len;
    let data = new WhiSrvIoResponse(null);
    // Deserialize message field [level]
    data.level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvIoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ff0aa5cf2c882e2f42c447f724082b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 level
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiSrvIoResponse(null);
    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = 0
    }

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
  Request: WhiSrvIoRequest,
  Response: WhiSrvIoResponse,
  md5sum() { return '06304a0a11512b6f81b205a97a00fb19'; },
  datatype() { return 'whi_interfaces/WhiSrvIo'; }
};
