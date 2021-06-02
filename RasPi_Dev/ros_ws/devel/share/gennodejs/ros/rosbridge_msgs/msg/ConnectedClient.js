// Auto-generated. Do not edit!

// (in-package rosbridge_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ConnectedClient {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ip_address = null;
      this.connection_time = null;
    }
    else {
      if (initObj.hasOwnProperty('ip_address')) {
        this.ip_address = initObj.ip_address
      }
      else {
        this.ip_address = '';
      }
      if (initObj.hasOwnProperty('connection_time')) {
        this.connection_time = initObj.connection_time
      }
      else {
        this.connection_time = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectedClient
    // Serialize message field [ip_address]
    bufferOffset = _serializer.string(obj.ip_address, buffer, bufferOffset);
    // Serialize message field [connection_time]
    bufferOffset = _serializer.time(obj.connection_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectedClient
    let len;
    let data = new ConnectedClient(null);
    // Deserialize message field [ip_address]
    data.ip_address = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [connection_time]
    data.connection_time = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ip_address.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosbridge_msgs/ConnectedClient';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f2187ce389b39b2b3bb2a3957e54c04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ip_address
    time connection_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConnectedClient(null);
    if (msg.ip_address !== undefined) {
      resolved.ip_address = msg.ip_address;
    }
    else {
      resolved.ip_address = ''
    }

    if (msg.connection_time !== undefined) {
      resolved.connection_time = msg.connection_time;
    }
    else {
      resolved.connection_time = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = ConnectedClient;
