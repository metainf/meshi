; Auto-generated. Do not edit!


(cl:in-package robot_config-srv)


;//! \htmlinclude ingredient_status-request.msg.html

(cl:defclass <ingredient_status-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (amount
    :reader amount
    :initarg :amount
    :type cl:integer
    :initform 0))
)

(cl:defclass ingredient_status-request (<ingredient_status-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ingredient_status-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ingredient_status-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_config-srv:<ingredient_status-request> is deprecated: use robot_config-srv:ingredient_status-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ingredient_status-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_config-srv:header-val is deprecated.  Use robot_config-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ingredient_status-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_config-srv:name-val is deprecated.  Use robot_config-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'amount-val :lambda-list '(m))
(cl:defmethod amount-val ((m <ingredient_status-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_config-srv:amount-val is deprecated.  Use robot_config-srv:amount instead.")
  (amount m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ingredient_status-request>) ostream)
  "Serializes a message object of type '<ingredient_status-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'amount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'amount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'amount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'amount)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ingredient_status-request>) istream)
  "Deserializes a message object of type '<ingredient_status-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'amount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'amount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'amount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'amount)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ingredient_status-request>)))
  "Returns string type for a service object of type '<ingredient_status-request>"
  "robot_config/ingredient_statusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ingredient_status-request)))
  "Returns string type for a service object of type 'ingredient_status-request"
  "robot_config/ingredient_statusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ingredient_status-request>)))
  "Returns md5sum for a message object of type '<ingredient_status-request>"
  "93de39baeda562f586060087bd46b003")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ingredient_status-request)))
  "Returns md5sum for a message object of type 'ingredient_status-request"
  "93de39baeda562f586060087bd46b003")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ingredient_status-request>)))
  "Returns full string definition for message of type '<ingredient_status-request>"
  (cl:format cl:nil "Header header~%~%string name~%uint32 amount~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ingredient_status-request)))
  "Returns full string definition for message of type 'ingredient_status-request"
  (cl:format cl:nil "Header header~%~%string name~%uint32 amount~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ingredient_status-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ingredient_status-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ingredient_status-request
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':amount (amount msg))
))
;//! \htmlinclude ingredient_status-response.msg.html

(cl:defclass <ingredient_status-response> (roslisp-msg-protocol:ros-message)
  ((amount_remaining
    :reader amount_remaining
    :initarg :amount_remaining
    :type cl:integer
    :initform 0))
)

(cl:defclass ingredient_status-response (<ingredient_status-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ingredient_status-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ingredient_status-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_config-srv:<ingredient_status-response> is deprecated: use robot_config-srv:ingredient_status-response instead.")))

(cl:ensure-generic-function 'amount_remaining-val :lambda-list '(m))
(cl:defmethod amount_remaining-val ((m <ingredient_status-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_config-srv:amount_remaining-val is deprecated.  Use robot_config-srv:amount_remaining instead.")
  (amount_remaining m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ingredient_status-response>) ostream)
  "Serializes a message object of type '<ingredient_status-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'amount_remaining)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'amount_remaining)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'amount_remaining)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'amount_remaining)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ingredient_status-response>) istream)
  "Deserializes a message object of type '<ingredient_status-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'amount_remaining)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'amount_remaining)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'amount_remaining)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'amount_remaining)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ingredient_status-response>)))
  "Returns string type for a service object of type '<ingredient_status-response>"
  "robot_config/ingredient_statusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ingredient_status-response)))
  "Returns string type for a service object of type 'ingredient_status-response"
  "robot_config/ingredient_statusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ingredient_status-response>)))
  "Returns md5sum for a message object of type '<ingredient_status-response>"
  "93de39baeda562f586060087bd46b003")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ingredient_status-response)))
  "Returns md5sum for a message object of type 'ingredient_status-response"
  "93de39baeda562f586060087bd46b003")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ingredient_status-response>)))
  "Returns full string definition for message of type '<ingredient_status-response>"
  (cl:format cl:nil "uint32 amount_remaining~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ingredient_status-response)))
  "Returns full string definition for message of type 'ingredient_status-response"
  (cl:format cl:nil "uint32 amount_remaining~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ingredient_status-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ingredient_status-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ingredient_status-response
    (cl:cons ':amount_remaining (amount_remaining msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ingredient_status)))
  'ingredient_status-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ingredient_status)))
  'ingredient_status-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ingredient_status)))
  "Returns string type for a service object of type '<ingredient_status>"
  "robot_config/ingredient_status")