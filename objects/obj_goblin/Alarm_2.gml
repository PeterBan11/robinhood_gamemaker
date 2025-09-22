/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 21440543
/// @DnDArgument : "function" "find_path"
find_path();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1DD8F4E1
/// @DnDArgument : "expr" "point_direction(x, y, next_node_x, next_node_y)"
/// @DnDArgument : "var" "node_direction"
node_direction = point_direction(x, y, next_node_x, next_node_y);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2DE108A1
/// @DnDInput : 2
/// @DnDArgument : "expr" "lengthdir_x(max_speed, node_direction)"
/// @DnDArgument : "expr_1" "lengthdir_y(max_speed, node_direction)"
/// @DnDArgument : "var" "node_dx"
/// @DnDArgument : "var_1" "node_dy"
node_dx = lengthdir_x(max_speed, node_direction);
node_dy = lengthdir_y(max_speed, node_direction);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2E7A5743
/// @DnDArgument : "steps" "10"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 10);