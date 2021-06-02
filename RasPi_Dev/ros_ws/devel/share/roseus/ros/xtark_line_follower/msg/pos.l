;; Auto-generated. Do not edit!


(when (boundp 'xtark_line_follower::pos)
  (if (not (find-package "XTARK_LINE_FOLLOWER"))
    (make-package "XTARK_LINE_FOLLOWER"))
  (shadow 'pos (find-package "XTARK_LINE_FOLLOWER")))
(unless (find-package "XTARK_LINE_FOLLOWER::POS")
  (make-package "XTARK_LINE_FOLLOWER::POS"))

(in-package "ROS")
;;//! \htmlinclude pos.msg.html


(defclass xtark_line_follower::pos
  :super ros::object
  :slots (_direction ))

(defmethod xtark_line_follower::pos
  (:init
   (&key
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _direction (round __direction))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; int32 _direction
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _direction
       (write-long _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _direction
     (setq _direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get xtark_line_follower::pos :md5sum-) "3b685cbe3a2d37c79069d18fc947a4de")
(setf (get xtark_line_follower::pos :datatype-) "xtark_line_follower/pos")
(setf (get xtark_line_follower::pos :definition-)
      "int32 direction

")



(provide :xtark_line_follower/pos "3b685cbe3a2d37c79069d18fc947a4de")


