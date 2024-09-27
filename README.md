
# bdx_msgs

This package defines custom message types for use in ROS 2 systems. Currently, it defines one message:

## JointPositionTarget.msg

This message is used to represent the target position and speed for a joint in a robotic system.

### Message Fields:
- `std_msgs/Header header` - Standard ROS message header, which includes the timestamp and frame ID.
- `float64 movement_speed` - The speed at which the joint should move.
- `float64 target_position` - The desired target position for the joint.

## How to Use the Message in C++

1. Add the package dependency in your `CMakeLists.txt`:

    ```cmake
    find_package(bdx_msgs REQUIRED)
    ```

2. Include the message header in your C++ code:

    ```cpp
    #include "bdx_msgs/msg/joint_position_target.hpp"
    ```

3. Example usage:

    ```cpp
    auto msg = bdx_msgs::msg::JointPositionTarget();
    msg.movement_speed = 1.0;
    msg.target_position = 3.14;
    ```

## How to Use the Message in Python

1. Install the `bdx_msgs` package:

    ```bash
    ros2 pkg install bdx_msgs
    ```

2. Import the message type in your Python script:

    ```python
    from bdx_msgs.msg import JointPositionTarget
    ```

3. Example usage:

    ```python
    msg = JointPositionTarget()
    msg.movement_speed = 1.0
    msg.target_position = 3.14
    ```
