;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_msgs::ConnectedClient)
  (if (not (find-package "ROSBRIDGE_MSGS"))
    (make-package "ROSBRIDGE_MSGS"))
  (shadow 'ConnectedClient (find-package "ROSBRIDGE_MSGS")))
(unless (find-package "ROSBRIDGE_MSGS::CONNECTEDCLIENT")
  (make-package "ROSBRIDGE_MSGS::CONNECTEDCLIENT"))

(in-package "ROS")
;;//! \htmlinclude ConnectedClient.msg.html


(defclass rosbridge_msgs::ConnectedClient
  :super ros::object
  :slots (_ip_address _connection_time ))

(defmethod rosbridge_msgs::ConnectedClient
  (:init
   (&key
    ((:ip_address __ip_address) "")
    ((:connection_time __connection_time) (instance ros::time :init))
    )
   (send-super :init)
   (setq _ip_address (string __ip_address))
   (setq _connection_time __connection_time)
   self)
  (:ip_address
   (&optional __ip_address)
   (if __ip_address (setq _ip_address __ip_address)) _ip_address)
  (:connection_time
   (&optional __connection_time)
   (if __connection_time (setq _connection_time __connection_time)) _connection_time)
  (:serialization-length
   ()
   (+
    ;; string _ip_address
    4 (length _ip_address)
    ;; time _connection_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ip_address
       (write-long (length _ip_address) s) (princ _ip_address s)
     ;; time _connection_time
       (write-long (send _connection_time :sec) s) (write-long (send _connection_time :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ip_address
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip_address (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _connection_time
     (send _connection_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _connection_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rosbridge_msgs::ConnectedClient :md5sum-) "7f2187ce389b39b2b3bb2a3957e54c04")
(setf (get rosbridge_msgs::ConnectedClient :datatype-) "rosbridge_msgs/ConnectedClient")
(setf (get rosbridge_msgs::ConnectedClient :definition-)
      "string ip_address
time connection_time

")



(provide :rosbridge_msgs/ConnectedClient "7f2187ce389b39b2b3bb2a3957e54c04")


