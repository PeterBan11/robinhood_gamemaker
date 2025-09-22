/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3CA834F4
/// @DnDArgument : "function" "find_path"
find_path();

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B15F579
/// @DnDInput : 7
/// @DnDArgument : "var" "_enemy_dist"
/// @DnDArgument : "value" "point_direction(x, y, other.x, other.y)"
/// @DnDArgument : "var_1" "_enemy_dir"
/// @DnDArgument : "value_1" "point_direction(other.x, other.y, x, y)"
/// @DnDArgument : "var_2" "_buff"
/// @DnDArgument : "value_2" "96"
/// @DnDArgument : "var_3" "_repulse_x"
/// @DnDArgument : "value_3" "lengthdir_x(_buff, _enemy_dir)"
/// @DnDArgument : "var_4" "_repulse_y"
/// @DnDArgument : "value_4" "lengthdir_y(_buff, _enemy_dir)"
/// @DnDArgument : "var_5" "_adjust_speed_x"
/// @DnDArgument : "value_5" "lerp(hspeed, hspeed + _repulse_x, 0.25)"
/// @DnDArgument : "var_6" "_adjust_speed_y"
/// @DnDArgument : "value_6" "lerp(vspeed, vspeed + _repulse_y, 0.25)"
var _enemy_dist = point_direction(x, y, other.x, other.y);
var _enemy_dir = point_direction(other.x, other.y, x, y);
var _buff = 96;
var _repulse_x = lengthdir_x(_buff, _enemy_dir);
var _repulse_y = lengthdir_y(_buff, _enemy_dir);
var _adjust_speed_x = lerp(hspeed, hspeed + _repulse_x, 0.25);
var _adjust_speed_y = lerp(vspeed, vspeed + _repulse_y, 0.25);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 55470EC3
/// @DnDInput : 3
/// @DnDArgument : "value" "lerp(x, x + _adjust_speed_x, 0.25)"
/// @DnDArgument : "value_1" "lerp(y, y + _adjust_speed_y, 0.25)"
/// @DnDArgument : "value_2" "speed * speed_dropoff"
/// @DnDArgument : "instvar_1" "1"
/// @DnDArgument : "instvar_2" "3"
x = lerp(x, x + _adjust_speed_x, 0.25);
y = lerp(y, y + _adjust_speed_y, 0.25);
speed = speed * speed_dropoff;