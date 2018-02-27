
(cl:in-package :asdf)

(defsystem "robot_config-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "user_status" :depends-on ("_package_user_status"))
    (:file "_package_user_status" :depends-on ("_package"))
    (:file "ingredient_status" :depends-on ("_package_ingredient_status"))
    (:file "_package_ingredient_status" :depends-on ("_package"))
  ))