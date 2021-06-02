; Auto-generated. Do not edit!


(cl:in-package rosbridge_msgs-msg)


;//! \htmlinclude ConnectedClients.msg.html

(cl:defclass <ConnectedClients> (roslisp-msg-protocol:ros-message)
  ((clients
    :reader clients
    :initarg :clients
    :type (cl:vector rosbridge_msgs-msg:ConnectedClient)
   :initform (cl:make-array 0 :element-type 'rosbridge_msgs-msg:ConnectedClient :initial-element (cl:make-instance 'rosbridge_msgs-msg:ConnectedClient))))
)

(cl:defclass ConnectedClients (<ConnectedClients>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectedClients>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectedClients)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_msgs-msg:<ConnectedClients> is deprecated: use rosbridge_msgs-msg:ConnectedClients instead.")))

(cl:ensure-generic-function 'clients-val :lambda-list '(m))
(cl:defmethod clients-val ((m <ConnectedClients>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_msgs-msg:clients-val is deprecated.  Use rosbridge_msgs-msg:clients instead.")
  (clients m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectedClients>) ostream)
  "Serializes a message object of type '<ConnectedClients>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'clients))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'clients))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectedClients>) istream)
  "Deserializes a message object of type '<ConnectedClients>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'clients) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'clients)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rosbridge_msgs-msg:ConnectedClient))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectedClients>)))
  "Returns string type for a message object of type '<ConnectedClients>"
  "rosbridge_msgs/ConnectedClients")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectedClients)))
  "Returns string type for a message object of type 'ConnectedClients"
  "rosbridge_msgs/ConnectedClients")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectedClients>)))
  "Returns md5sum for a message object of type '<ConnectedClients>"
  "d0d53b0c0aa23aa7e4cf52f49bca4b69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectedClients)))
  "Returns md5sum for a message object of type 'ConnectedClients"
  "d0d53b0c0aa23aa7e4cf52f49bca4b69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectedClients>)))
  "Returns full string definition for message of type '<ConnectedClients>"
  (cl:format cl:nil "ConnectedClient[] clients~%~%================================================================================~%MSG: rosbridge_msgs/ConnectedClient~%string ip_address~%time connection_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectedClients)))
  "Returns full string definition for message of type 'ConnectedClients"
  (cl:format cl:nil "ConnectedClient[] clients~%~%================================================================================~%MSG: rosbridge_msgs/ConnectedClient~%string ip_address~%time connection_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectedClients>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'clients) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectedClients>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectedClients
    (cl:cons ':clients (clients msg))
))
