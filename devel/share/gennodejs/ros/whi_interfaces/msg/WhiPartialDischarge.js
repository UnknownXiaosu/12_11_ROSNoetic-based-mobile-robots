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

class WhiPartialDischarge {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.peak = null;
      this.average = null;
      this.noise = null;
      this.phase = null;
      this.count = null;
      this.cycle_count = null;
      this.state = null;
      this.channel = null;
    }
    else {
      if (initObj.hasOwnProperty('peak')) {
        this.peak = initObj.peak
      }
      else {
        this.peak = 0.0;
      }
      if (initObj.hasOwnProperty('average')) {
        this.average = initObj.average
      }
      else {
        this.average = 0.0;
      }
      if (initObj.hasOwnProperty('noise')) {
        this.noise = initObj.noise
      }
      else {
        this.noise = 0.0;
      }
      if (initObj.hasOwnProperty('phase')) {
        this.phase = initObj.phase
      }
      else {
        this.phase = 0.0;
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('cycle_count')) {
        this.cycle_count = initObj.cycle_count
      }
      else {
        this.cycle_count = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiPartialDischarge
    // Serialize message field [peak]
    bufferOffset = _serializer.float32(obj.peak, buffer, bufferOffset);
    // Serialize message field [average]
    bufferOffset = _serializer.float32(obj.average, buffer, bufferOffset);
    // Serialize message field [noise]
    bufferOffset = _serializer.float32(obj.noise, buffer, bufferOffset);
    // Serialize message field [phase]
    bufferOffset = _serializer.float32(obj.phase, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    // Serialize message field [cycle_count]
    bufferOffset = _serializer.int32(obj.cycle_count, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [channel]
    bufferOffset = _serializer.string(obj.channel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiPartialDischarge
    let len;
    let data = new WhiPartialDischarge(null);
    // Deserialize message field [peak]
    data.peak = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [average]
    data.average = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [noise]
    data.noise = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [phase]
    data.phase = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cycle_count]
    data.cycle_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [channel]
    data.channel = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.channel);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'whi_interfaces/WhiPartialDischarge';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55e97ba29b0bc0c839a3411f235ee2dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new WhiPartialDischarge(null);
    if (msg.peak !== undefined) {
      resolved.peak = msg.peak;
    }
    else {
      resolved.peak = 0.0
    }

    if (msg.average !== undefined) {
      resolved.average = msg.average;
    }
    else {
      resolved.average = 0.0
    }

    if (msg.noise !== undefined) {
      resolved.noise = msg.noise;
    }
    else {
      resolved.noise = 0.0
    }

    if (msg.phase !== undefined) {
      resolved.phase = msg.phase;
    }
    else {
      resolved.phase = 0.0
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.cycle_count !== undefined) {
      resolved.cycle_count = msg.cycle_count;
    }
    else {
      resolved.cycle_count = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = ''
    }

    return resolved;
    }
};

// Constants for message
WhiPartialDischarge.Constants = {
  STA_SENSOR_ERROR: 0,
  STA_NORMAL: 1,
  STA_CHANNEL_1_ALERT: 2,
  STA_DISCHARGE_HIGH: 3,
  STA_DISCHARGE_ALERT: 4,
}

module.exports = WhiPartialDischarge;
