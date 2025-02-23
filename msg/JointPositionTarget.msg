# JointPositionTarget.msg
# An array of actuator IDs and their corresponding target positions.
# The actuator IDs are stored as unsigned 8-bit integers.
uint8[] ids

# The target positions for each actuator, normalized between -1.0 and 1.0.
float32[] positions
