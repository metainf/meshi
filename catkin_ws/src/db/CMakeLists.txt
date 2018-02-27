cmake_minimum_required(VERSION 2.8.3)
project(db)

find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg robot_config)

generate_messages(DEPENDENCIES std_msgs)

catkin_package()
include_directories(include ${catkin_INCLUDE_DIRS})


add_executable(database src/database.cpp)
target_link_libraries(database ${catkin_LIBRARIES})