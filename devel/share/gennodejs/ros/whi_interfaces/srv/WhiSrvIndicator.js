// Auto-generated. Do not edit!

// (in-package whi_interfaces.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WhiIndicator = require('../msg/WhiIndicator.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class WhiSrvIndicatorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.instance = null;
    }
    else {
      if (initObj.hasOwnProperty('instance')) {
        this.instance = initObj.instance
      }
      else {
        this.instance = new WhiIndicator();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiSrvIndicatorRequest
    // Serialize message field [instance]
    bufferOffset = WhiIndicator.serialize(obj.instance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvIndicatorRequest
    let len;
    let data = new WhiSrvIndicatorRequest(null);
    // Deserialize message field [instance]
    data.instance = WhiIndicator.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WhiIndicator.getMessageSize(object.instance);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvIndicatorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0be22feae3689f49092cad6c930bc797';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    whi_interfaces/WhiIndicator instance
    
    ================================================================================
    MSG: whi_interfaces/WhiIndicator
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
    const resolved = new WhiSrvIndicatorRequest(null);
    if (msg.instance !== undefined) {
      resolved.instance = WhiIndicator.Resolve(msg.instance)
    }
    else {
      resolved.instance = new WhiIndicator()
    }

    return resolved;
    }
};

class WhiSrvIndicatorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
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
    // Serializes a message object of type WhiSrvIndicatorResponse
    // Serialize message field [status]
    bufferOffset = _serializer.uint32(obj.status, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvIndicatorResponse
    let len;
    let data = new WhiSrvIndicatorResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvIndicatorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79a5b7da520d99d7730934d0a2446f08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 status
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiSrvIndicatorResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
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
  Request: WhiSrvIndicatorRequest,
  Response: WhiSrvIndicatorResponse,
  md5sum() { return 'ec1649436397c99428e3f4dff37492e6'; },
  datatype() { return 'whi_interfaces/WhiSrvIndicator'; }
};
