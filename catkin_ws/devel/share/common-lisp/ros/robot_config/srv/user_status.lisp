; Auto-generated. Do not edit!


(cl:in-package robot_config-srv)


;//! \htmlinclude user_status-request.msg.html

(cl:defclass <user_status-request> (roslisp-msg-protocol:ros-message)
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
   (food_request
    :reader food_request
    :initarg :food_request
    :type cl:string
    :initform ""))
)

(cl:defclass user_status-request (<user_status-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <user_status-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'user_status-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_config-srv:<user_status-request> is deprecated: use robot_config-srv:user_status-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <user_status-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_config-srv:header-val is deprecated.  Use robot_config-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <user_status-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_config-srv:name-val is deprecated.  Use robot_config-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'food_request-val :lambda-list '(m))
(cl:defmethod food_request-val ((m <user_status-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_config-srv:food_request-val is deprecated.  Use robot_config-srv:food_request instead.")
  (food_request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <user_status-request>) ostream)
  "Serializes a message object of type '<user_status-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'food_request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'food_request))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <user_status-request>) istream)
  "Deserializes a message object of type '<user_status-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'food_request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'food_request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<user_status-request>)))
  "Returns string type for a service object of type '<user_status-request>"
  "robot_config/user_statusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'user_status-request)))
  "Returns string type for a service object of type 'user_status-request"
  "robot_config/user_statusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<user_status-request>)))
  "Returns md5sum for a message object of type '<user_status-request>"
  "2d61f0281c2c7175313eb8b7c0ad5a0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'user_status-request)))
  "Returns md5sum for a message object of type 'user_status-request"
  "2d61f0281c2c7175313eb8b7c0ad5a0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<user_status-request>)))
  "Returns full string definition for message of type '<user_status-request>"
  (cl:format cl:nil "Header header~%~%string name~%string food_request~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'user_status-request)))
  "Returns full string definition for message of type 'user_status-request"
  (cl:format cl:nil "Header header~%~%string name~%string food_request~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <user_status-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'food_request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <user_status-request>))
  "Converts a ROS message object to a list"
  (cl:list 'user_status-request
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':food_request (food_request msg))
))
;//! \htmlinclude user_status-response.msg.html

(cl:defclass <user_status-response> (roslisp-msg-protocol:ros-message)
  ((current_state
    :reader current_state
    :initarg :current_state
    :type cl:integer
    :initform 0)
   (readable_state
    :reader readable_state
    :initarg :readable_state
    :type cl:string
    :initform ""))
)

(cl:defclass user_status-response (<user_status-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <user_status-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'user_status-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_config-srv:<user_status-response> is deprecated: use robot_config-srv:user_status-response instead.")))

(cl:ensure-generic-function 'current_state-val :lambda-list '(m))
(cl:defmethod current_state-val ((m <user_status-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_config-srv:current_state-val is deprecated.  Use robot_config-srv:current_state instead.")
  (current_state m))

(cl:ensure-generic-function 'readable_state-val :lambda-list '(m))
(cl:defmethod readable_state-val ((m <user_status-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_config-srv:readable_state-val is deprecated.  Use robot_config-srv:readable_state instead.")
  (readable_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <user_status-response>) ostream)
  "Serializes a message object of type '<user_status-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_state)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'readable_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'readable_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <user_status-response>) istream)
  "Deserializes a message object of type '<user_status-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_state)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'readable_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'readable_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<user_status-response>)))
  "Returns string type for a service object of type '<user_status-response>"
  "robot_config/user_statusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'user_status-response)))
  "Returns string type for a service object of type 'user_status-response"
  "robot_config/user_statusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<user_status-response>)))
  "Returns md5sum for a message object of type '<user_status-response>"
  "2d61f0281c2c7175313eb8b7c0ad5a0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'user_status-response)))
  "Returns md5sum for a message object of type 'user_status-response"
  "2d61f0281c2c7175313eb8b7c0ad5a0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<user_status-response>)))
  "Returns full string definition for message of type '<user_status-response>"
  (cl:format cl:nil "uint32 current_state~%string readable_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'user_status-response)))
  "Returns full string definition for message of type 'user_status-response"
  (cl:format cl:nil "uint32 current_state~%string readable_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <user_status-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'readable_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <user_status-response>))
  "Converts a ROS message object to a list"
  (cl:list 'user_status-response
    (cl:cons ':current_state (current_state msg))
    (cl:cons ':readable_state (readable_state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'user_status)))
  'user_status-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'user_status)))
  'user_status-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'user_status)))
  "Returns string type for a service object of type '<user_status>"
  "robot_config/user_status")