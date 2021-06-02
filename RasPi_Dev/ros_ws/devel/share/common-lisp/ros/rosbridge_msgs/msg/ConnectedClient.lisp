; Auto-generated. Do not edit!


(cl:in-package rosbridge_msgs-msg)


;//! \htmlinclude ConnectedClient.msg.html

(cl:defclass <ConnectedClient> (roslisp-msg-protocol:ros-message)
  ((ip_address
    :reader ip_address
    :initarg :ip_address
    :type cl:string
    :initform "")
   (connection_time
    :reader connection_time
    :initarg :connection_time
    :type cl:real
    :initform 0))
)

(cl:defclass ConnectedClient (<ConnectedClient>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectedClient>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectedClient)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_msgs-msg:<ConnectedClient> is deprecated: use rosbridge_msgs-msg:ConnectedClient instead.")))

(cl:ensure-generic-function 'ip_address-val :lambda-list '(m))
(cl:defmethod ip_address-val ((m <ConnectedClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_msgs-msg:ip_address-val is deprecated.  Use rosbridge_msgs-msg:ip_address instead.")
  (ip_address m))

(cl:ensure-generic-function 'connection_time-val :lambda-list '(m))
(cl:defmethod connection_time-val ((m <ConnectedClient>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_msgs-msg:connection_time-val is deprecated.  Use rosbridge_msgs-msg:connection_time instead.")
  (connection_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectedClient>) ostream)
  "Serializes a message object of type '<ConnectedClient>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ip_address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ip_address))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'connection_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'connection_time) (cl:floor (cl:slot-value msg 'connection_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectedClient>) istream)
  "Deserializes a message object of type '<ConnectedClient>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ip_address) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ip_address) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'connection_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectedClient>)))
  "Returns string type for a message object of type '<ConnectedClient>"
  "rosbridge_msgs/ConnectedClient")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectedClient)))
  "Returns string type for a message object of type 'ConnectedClient"
  "rosbridge_msgs/ConnectedClient")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectedClient>)))
  "Returns md5sum for a message object of type '<ConnectedClient>"
  "7f2187ce389b39b2b3bb2a3957e54c04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectedClient)))
  "Returns md5sum for a message object of type 'ConnectedClient"
  "7f2187ce389b39b2b3bb2a3957e54c04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectedClient>)))
  "Returns full string definition for message of type '<ConnectedClient>"
  (cl:format cl:nil "string ip_address~%time connection_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectedClient)))
  "Returns full string definition for message of type 'ConnectedClient"
  (cl:format cl:nil "string ip_address~%time connection_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectedClient>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ip_address))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectedClient>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectedClient
    (cl:cons ':ip_address (ip_address msg))
    (cl:cons ':connection_time (connection_time msg))
))
