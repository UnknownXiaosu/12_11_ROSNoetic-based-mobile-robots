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

let WhiPartialDischarge = require('../msg/WhiPartialDischarge.js');

//-----------------------------------------------------------

class WhiSrvPartialDischargeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.addr = null;
    }
    else {
      if (initObj.hasOwnProperty('addr')) {
        this.addr = initObj.addr
      }
      else {
        this.addr = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiSrvPartialDischargeRequest
    // Serialize message field [addr]
    bufferOffset = _serializer.int32(obj.addr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvPartialDischargeRequest
    let len;
    let data = new WhiSrvPartialDischargeRequest(null);
    // Deserialize message field [addr]
    data.addr = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvPartialDischargeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4383f707745e4bd672d4a1b1b3a8c43a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 addr
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiSrvPartialDischargeRequest(null);
    if (msg.addr !== undefined) {
      resolved.addr = msg.addr;
    }
    else {
      resolved.addr = 0
    }

    return resolved;
    }
};

class WhiSrvPartialDischargeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiSrvPartialDischargeResponse
    // Serialize message field [data]
    // Serialize the length for message field [data]
    bufferOffset = _serializer.uint32(obj.data.length, buffer, bufferOffset);
    obj.data.forEach((val) => {
      bufferOffset = WhiPartialDischarge.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvPartialDischargeResponse
    let len;
    let data = new WhiSrvPartialDischargeResponse(null);
    // Deserialize message field [data]
    // Deserialize array length for message field [data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.data[i] = WhiPartialDischarge.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.data.forEach((val) => {
      length += WhiPartialDischarge.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvPartialDischargeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5f47bcb0ff8d2400d9e958c1dab9ce9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    whi_interfaces/WhiPartialDischarge[] data
    
    
    ================================================================================
    MSG: whi_interfaces/WhiPartialDischarge
    uint8 STA_SENSOR_ERROR=0
    uint8 STA_NORMAL=1
    uint8 STA_CHANNEL_1_ALERT=2
    uint8 STA_DISCHARGE_HIGH=3
    uint8 STA_DISCHARGE_ALERT=4
    float32 peak
    float32 average
    float32 noise
    float32 phase
    int32 count
    int32 cycle_count
    uint8 state
    string channel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiSrvPartialDischargeResponse(null);
    if (msg.data !== undefined) {
      resolved.data = new Array(msg.data.length);
      for (let i = 0; i < resolved.data.length; ++i) {
        resolved.data[i] = WhiPartialDischarge.Resolve(msg.data[i]);
      }
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = {
  Request: WhiSrvPartialDischargeRequest,
  Response: WhiSrvPartialDischargeResponse,
  md5sum() { return 'ecc8f660b258f268674c5e5e9427cd77'; },
  datatype() { return 'whi_interfaces/WhiSrvPartialDischarge'; }
};
