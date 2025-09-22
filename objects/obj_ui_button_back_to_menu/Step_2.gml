/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 04CDC392
/// @DnDArgument : "obj" "obj_manager_camera"
/// @DnDSaveInfo : "obj" "obj_manager_camera"
var l04CDC392_0 = false;l04CDC392_0 = instance_exists(obj_manager_camera);if(l04CDC392_0){	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41C89D43
	/// @DnDInput : 2
	/// @DnDParent : 04CDC392
	/// @DnDArgument : "var" "_cam_x_offset"
	/// @DnDArgument : "value" "view_wport[0] - 264"
	/// @DnDArgument : "var_1" "_cam_y_offset"
	/// @DnDArgument : "value_1" "64"
	var _cam_x_offset = view_wport[0] - 264;
	var _cam_y_offset = 64;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4DD751BC
	/// @DnDInput : 2
	/// @DnDParent : 04CDC392
	/// @DnDArgument : "expr" "camera_get_view_x(view_camera[0]) + _cam_x_offset"
	/// @DnDArgument : "expr_1" "camera_get_view_y(view_camera[0]) + _cam_y_offset"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = camera_get_view_x(view_camera[0]) + _cam_x_offset;
	y = camera_get_view_y(view_camera[0]) + _cam_y_offset;}