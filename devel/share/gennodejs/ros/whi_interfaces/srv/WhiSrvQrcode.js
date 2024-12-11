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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class WhiSrvQrcodeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.count = null;
    }
    else {
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiSrvQrcodeRequest
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvQrcodeRequest
    let len;
    let data = new WhiSrvQrcodeRequest(null);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvQrcodeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '602d642babe509c7c59f497c23e716a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 count
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiSrvQrcodeRequest(null);
    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    return resolved;
    }
};

class WhiSrvQrcodeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.code = null;
      this.offset_pose = null;
      this.eulers = null;
      this.eulers_degree = null;
    }
    else {
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = '';
      }
      if (initObj.hasOwnProperty('offset_pose')) {
        this.offset_pose = initObj.offset_pose
      }
      else {
        this.offset_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('eulers')) {
        this.eulers = initObj.eulers
      }
      else {
        this.eulers = [];
      }
      if (initObj.hasOwnProperty('eulers_degree')) {
        this.eulers_degree = initObj.eulers_degree
      }
      else {
        this.eulers_degree = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiSrvQrcodeResponse
    // Serialize message field [code]
    bufferOffset = _serializer.string(obj.code, buffer, bufferOffset);
    // Serialize message field [offset_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.offset_pose, buffer, bufferOffset);
    // Serialize message field [eulers]
    bufferOffset = _arraySerializer.float64(obj.eulers, buffer, bufferOffset, null);
    // Serialize message field [eulers_degree]
    bufferOffset = _arraySerializer.float64(obj.eulers_degree, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiSrvQrcodeResponse
    let len;
    let data = new WhiSrvQrcodeResponse(null);
    // Deserialize message field [code]
    data.code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [offset_pose]
    data.offset_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [eulers]
    data.eulers = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [eulers_degree]
    data.eulers_degree = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.code);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.offset_pose);
    length += 8 * object.eulers.length;
    length += 8 * object.eulers_degree.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'whi_interfaces/WhiSrvQrcodeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45d686393cd6209b1ac820f9284812a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string code
    geometry_msgs/PoseStamped offset_pose
    float64[] eulers
    float64[] eulers_degree
    
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiSrvQrcodeResponse(null);
    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = ''
    }

    if (msg.offset_pose !== undefined) {
      resolved.offset_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.offset_pose)
    }
    else {
      resolved.offset_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.eulers !== undefined) {
      resolved.eulers = msg.eulers;
    }
    else {
      resolved.eulers = []
    }

    if (msg.eulers_degree !== undefined) {
      resolved.eulers_degree = msg.eulers_degree;
    }
    else {
      resolved.eulers_degree = []
    }

    return resolved;
    }
};

module.exports = {
  Request: WhiSrvQrcodeRequest,
  Response: WhiSrvQrcodeResponse,
  md5sum() { return '7a9928f647b8395ed6c3faa691d3de34'; },
  datatype() { return 'whi_interfaces/WhiSrvQrcode'; }
};
