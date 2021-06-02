
(cl:in-package :asdf)

(defsystem "rosbridge_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ConnectedClient" :depends-on ("_package_ConnectedClient"))
    (:file "_package_ConnectedClient" :depends-on ("_package"))
    (:file "ConnectedClients" :depends-on ("_package_ConnectedClients"))
    (:file "_package_ConnectedClients" :depends-on ("_package"))
  ))