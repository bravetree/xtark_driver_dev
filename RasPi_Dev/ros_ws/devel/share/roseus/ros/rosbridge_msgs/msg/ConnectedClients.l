;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_msgs::ConnectedClients)
  (if (not (find-package "ROSBRIDGE_MSGS"))
    (make-package "ROSBRIDGE_MSGS"))
  (shadow 'ConnectedClients (find-package "ROSBRIDGE_MSGS")))
(unless (find-package "ROSBRIDGE_MSGS::CONNECTEDCLIENTS")
  (make-package "ROSBRIDGE_MSGS::CONNECTEDCLIENTS"))

(in-package "ROS")
;;//! \htmlinclude ConnectedClients.msg.html


(defclass rosbridge_msgs::ConnectedClients
  :super ros::object
  :slots (_clients ))

(defmethod rosbridge_msgs::ConnectedClients
  (:init
   (&key
    ((:clients __clients) (let (r) (dotimes (i 0) (push (instance rosbridge_msgs::ConnectedClient :init) r)) r))
    )
   (send-super :init)
   (setq _clients __clients)
   self)
  (:clients
   (&rest __clients)
   (if (keywordp (car __clients))
       (send* _clients __clients)
     (progn
       (if __clients (setq _clients (car __clients)))
       _clients)))
  (:serialization-length
   ()
   (+
    ;; rosbridge_msgs/ConnectedClient[] _clients
    (apply #'+ (send-all _clients :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rosbridge_msgs/ConnectedClient[] _clients
     (write-long (length _clients) s)
     (dolist (elem _clients)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rosbridge_msgs/ConnectedClient[] _clients
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _clients (let (r) (dotimes (i n) (push (instance rosbridge_msgs::ConnectedClient :init) r)) r))
     (dolist (elem- _clients)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rosbridge_msgs::ConnectedClients :md5sum-) "d0d53b0c0aa23aa7e4cf52f49bca4b69")
(setf (get rosbridge_msgs::ConnectedClients :datatype-) "rosbridge_msgs/ConnectedClients")
(setf (get rosbridge_msgs::ConnectedClients :definition-)
      "ConnectedClient[] clients

================================================================================
MSG: rosbridge_msgs/ConnectedClient
string ip_address
time connection_time

")



(provide :rosbridge_msgs/ConnectedClients "d0d53b0c0aa23aa7e4cf52f49bca4b69")


