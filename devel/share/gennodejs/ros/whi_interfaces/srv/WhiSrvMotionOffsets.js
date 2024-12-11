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

class WhiSrvMotionOffsetsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.offsets = null;
    }
    else {
      if (initObj.hasOwnProperty('offsets')) {
        this.offsets = initObj.offsets
      }
      else {
        this.offsets = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiSrvMotionOffsetsRequest
    // Serialize message field [offsets]
    bufferOffset = _arraySerializer.float64(obj.offsets, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvMotionOffsetsRequest
    let len;
    let data = new WhiSrvMotionOffsetsRequest(null);
    // Deserialize message field [offsets]
    data.offsets = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.offsets.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvMotionOffsetsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df25723a27fb975e1af9bf285d3d84cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] offsets
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiSrvMotionOffsetsRequest(null);
    if (msg.offsets !== undefined) {
      resolved.offsets = msg.offsets;
    }
    else {
      resolved.offsets = []
    }

    return resolved;
    }
};

class WhiSrvMotionOffsetsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiSrvMotionOffsetsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvMotionOffsetsResponse
    let len;
    let data = new WhiSrvMotionOffsetsResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvMotionOffsetsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiSrvMotionOffsetsResponse(null);
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
  Request: WhiSrvMotionOffsetsRequest,
  Response: WhiSrvMotionOffsetsResponse,
  md5sum() { return '4c6fb4cf42eea618330dd37f243af28e'; },
  datatype() { return 'whi_interfaces/WhiSrvMotionOffsets'; }
};
