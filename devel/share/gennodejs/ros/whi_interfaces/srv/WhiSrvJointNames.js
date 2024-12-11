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

class WhiSrvJointNamesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiSrvJointNamesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvJointNamesRequest
    let len;
    let data = new WhiSrvJointNamesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvJointNamesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiSrvJointNamesRequest(null);
    return resolved;
    }
};

class WhiSrvJointNamesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.joint_names = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiSrvJointNamesResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvJointNamesResponse
    let len;
    let data = new WhiSrvJointNamesResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joint_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvJointNamesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9701ae99cbeecda2e4cd171db381bf43';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    string[] joint_names
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiSrvJointNamesResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    return resolved;
    }
};

module.exports = {
  Request: WhiSrvJointNamesRequest,
  Response: WhiSrvJointNamesResponse,
  md5sum() { return '9701ae99cbeecda2e4cd171db381bf43'; },
  datatype() { return 'whi_interfaces/WhiSrvJointNames'; }
};
