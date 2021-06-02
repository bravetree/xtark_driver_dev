// Auto-generated. Do not edit!

// (in-package rosbridge_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ConnectedClient = require('./ConnectedClient.js');

//-----------------------------------------------------------

class ConnectedClients {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clients = null;
    }
    else {
      if (initObj.hasOwnProperty('clients')) {
        this.clients = initObj.clients
      }
      else {
        this.clients = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectedClients
    // Serialize message field [clients]
    // Serialize the length for message field [clients]
    bufferOffset = _serializer.uint32(obj.clients.length, buffer, bufferOffset);
    obj.clients.forEach((val) => {
      bufferOffset = ConnectedClient.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectedClients
    let len;
    let data = new ConnectedClients(null);
    // Deserialize message field [clients]
    // Deserialize array length for message field [clients]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.clients = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.clients[i] = ConnectedClient.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.clients.forEach((val) => {
      length += ConnectedClient.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosbridge_msgs/ConnectedClients';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0d53b0c0aa23aa7e4cf52f49bca4b69';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ConnectedClient[] clients
    
    ================================================================================
    MSG: rosbridge_msgs/ConnectedClient
    string ip_address
    time connection_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConnectedClients(null);
    if (msg.clients !== undefined) {
      resolved.clients = new Array(msg.clients.length);
      for (let i = 0; i < resolved.clients.length; ++i) {
        resolved.clients[i] = ConnectedClient.Resolve(msg.clients[i]);
      }
    }
    else {
      resolved.clients = []
    }

    return resolved;
    }
};

module.exports = ConnectedClients;
