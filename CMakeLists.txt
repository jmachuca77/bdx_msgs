cmake_minimum_required(VERSION 3.5)
project(bdx_msgs)

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

# Find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)

# Define the message files
set(msg_files
  "msg/JointPositionTarget.msg"
)

# Generate messages
rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  DEPENDENCIES std_msgs builtin_interfaces
)

install(
  DIRECTORY msg
  DESTINATION share/${PREJECT_NAME}
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()
