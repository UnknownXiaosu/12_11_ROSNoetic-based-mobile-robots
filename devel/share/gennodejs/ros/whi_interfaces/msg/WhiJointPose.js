// Auto-generated. Do not edit!

// (in-package whi_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let moveit_msgs = _finder('moveit_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class WhiJointPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_pose = null;
      this.joint_constraints = null;
      this.velocity_scale = null;
      this.acceleration_scale = null;
      this.is_relative = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_pose')) {
        this.joint_pose = initObj.joint_pose
      }
      else {
        this.joint_pose = new sensor_msgs.msg.JointState();
      }
      if (initObj.hasOwnProperty('joint_constraints')) {
        this.joint_constraints = initObj.joint_constraints
      }
      else {
        this.joint_constraints = [];
      }
      if (initObj.hasOwnProperty('velocity_scale')) {
        this.velocity_scale = initObj.velocity_scale
      }
      else {
        this.velocity_scale = 0.0;
      }
      if (initObj.hasOwnProperty('acceleration_scale')) {
        this.acceleration_scale = initObj.acceleration_scale
      }
      else {
        this.acceleration_scale = 0.0;
      }
      if (initObj.hasOwnProperty('is_relative')) {
        this.is_relative = initObj.is_relative
      }
      else {
        this.is_relative = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhiJointPose
    // Serialize message field [joint_pose]
    bufferOffset = sensor_msgs.msg.JointState.serialize(obj.joint_pose, buffer, bufferOffset);
    // Serialize message field [joint_constraints]
    // Serialize the length for message field [joint_constraints]
    bufferOffset = _serializer.uint32(obj.joint_constraints.length, buffer, bufferOffset);
    obj.joint_constraints.forEach((val) => {
      bufferOffset = moveit_msgs.msg.JointConstraint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [velocity_scale]
    bufferOffset = _serializer.float64(obj.velocity_scale, buffer, bufferOffset);
    // Serialize message field [acceleration_scale]
    bufferOffset = _serializer.float64(obj.acceleration_scale, buffer, bufferOffset);
    // Serialize message field [is_relative]
    bufferOffset = _serializer.bool(obj.is_relative, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhiJointPose
    let len;
    let data = new WhiJointPose(null);
    // Deserialize message field [joint_pose]
    data.joint_pose = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint_constraints]
    // Deserialize array length for message field [joint_constraints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joint_constraints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joint_constraints[i] = moveit_msgs.msg.JointConstraint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [velocity_scale]
    data.velocity_scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acceleration_scale]
    data.acceleration_scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_relative]
    data.is_relative = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.JointState.getMessageSize(object.joint_pose);
    object.joint_constraints.forEach((val) => {
      length += moveit_msgs.msg.JointConstraint.getMessageSize(val);
    });
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'whi_interfaces/WhiJointPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d4b7c6e8d1edf04f19e65b1ff509b38';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/JointState joint_pose
    moveit_msgs/JointConstraint[] joint_constraints
    float64 velocity_scale
    float64 acceleration_scale
    bool is_relative
    
    ================================================================================
    MSG: sensor_msgs/JointState
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and 
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    
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
    MSG: moveit_msgs/JointConstraint
    # Constrain the position of a joint to be within a certain bound
    string joint_name
    
    # the bound to be achieved is [position - tolerance_below, position + tolerance_above]
    float64 position
    float64 tolerance_above
    float64 tolerance_below
    
    # A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
    float64 weight
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhiJointPose(null);
    if (msg.joint_pose !== undefined) {
      resolved.joint_pose = sensor_msgs.msg.JointState.Resolve(msg.joint_pose)
    }
    else {
      resolved.joint_pose = new sensor_msgs.msg.JointState()
    }

    if (msg.joint_constraints !== undefined) {
      resolved.joint_constraints = new Array(msg.joint_constraints.length);
      for (let i = 0; i < resolved.joint_constraints.length; ++i) {
        resolved.joint_constraints[i] = moveit_msgs.msg.JointConstraint.Resolve(msg.joint_constraints[i]);
      }
    }
    else {
      resolved.joint_constraints = []
    }

    if (msg.velocity_scale !== undefined) {
      resolved.velocity_scale = msg.velocity_scale;
    }
    else {
      resolved.velocity_scale = 0.0
    }

    if (msg.acceleration_scale !== undefined) {
      resolved.acceleration_scale = msg.acceleration_scale;
    }
    else {
      resolved.acceleration_scale = 0.0
    }

    if (msg.is_relative !== undefined) {
      resolved.is_relative = msg.is_relative;
    }
    else {
      resolved.is_relative = false
    }

    return resolved;
    }
};

module.exports = WhiJointPose;
