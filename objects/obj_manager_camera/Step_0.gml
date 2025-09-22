/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D56CC81
/// @DnDInput : 4
/// @DnDArgument : "var" "_x_adjust"
/// @DnDArgument : "value" "room_width/4"
/// @DnDArgument : "var_1" "_y_adjust"
/// @DnDArgument : "value_1" "room_height/4"
/// @DnDArgument : "var_2" "_cam_x"
/// @DnDArgument : "value_2" "obj_hero.x"
/// @DnDArgument : "var_3" "_cam_y"
/// @DnDArgument : "value_3" "obj_hero.y"
var _x_adjust = room_width/4;
var _y_adjust = room_height/4;
var _cam_x = obj_hero.x;
var _cam_y = obj_hero.y;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F53A339
/// @DnDInput : 2
/// @DnDArgument : "var" "_cam_x"
/// @DnDArgument : "value" "clamp(_cam_x, _x_adjust, room_width - _x_adjust)"
/// @DnDArgument : "var_1" "_cam_y"
/// @DnDArgument : "value_1" "clamp(_cam_y, _y_adjust, room_height - _y_adjust)"
var _cam_x = clamp(_cam_x, _x_adjust, room_width - _x_adjust);
var _cam_y = clamp(_cam_y, _y_adjust, room_height - _y_adjust);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4E4BD569
/// @DnDInput : 3
/// @DnDArgument : "function" "camera_set_view_pos"
/// @DnDArgument : "arg" "view_camera[0]"
/// @DnDArgument : "arg_1" "_cam_x - _x_adjust"
/// @DnDArgument : "arg_2" "_cam_y - _y_adjust"
camera_set_view_pos(view_camera[0], _cam_x - _x_adjust, _cam_y - _y_adjust);