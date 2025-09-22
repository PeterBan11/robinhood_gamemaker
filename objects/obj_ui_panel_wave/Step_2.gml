/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 04CDC392
/// @DnDArgument : "obj" "obj_manager_camera"
/// @DnDSaveInfo : "obj" "obj_manager_camera"
var l04CDC392_0 = false;l04CDC392_0 = instance_exists(obj_manager_camera);if(l04CDC392_0){	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41C89D43
	/// @DnDParent : 04CDC392
	/// @DnDArgument : "var" "_cam_x_offset"
	/// @DnDArgument : "value" "view_wport[0] /2"
	var _cam_x_offset = view_wport[0] /2;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4DD751BC
	/// @DnDInput : 2
	/// @DnDParent : 04CDC392
	/// @DnDArgument : "expr" "camera_get_view_x(view_camera[0]) + _cam_x_offset"
	/// @DnDArgument : "expr_1" "camera_get_view_y(view_camera[0]) + cam_y_offset"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = camera_get_view_x(view_camera[0]) + _cam_x_offset;
	y = camera_get_view_y(view_camera[0]) + cam_y_offset;}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 1F34F15E
/// @DnDArgument : "expr" "my_state"
var l1F34F15E_0 = my_state;switch(l1F34F15E_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2F012E9D
	/// @DnDParent : 1F34F15E
	/// @DnDArgument : "const" ""opened""
	case "opened":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C980D54
		/// @DnDParent : 2F012E9D
		/// @DnDArgument : "expr" "lerp(cam_y_offset, target_y_open, 0.1) "
		/// @DnDArgument : "var" "cam_y_offset"
		cam_y_offset = lerp(cam_y_offset, target_y_open, 0.1) ;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4B7B6163
	/// @DnDParent : 1F34F15E
	/// @DnDArgument : "const" ""closed""
	case "closed":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 35545F65
		/// @DnDParent : 4B7B6163
		/// @DnDArgument : "expr" "lerp(cam_y_offset, target_y_close, 0.1 )"
		/// @DnDArgument : "var" "cam_y_offset"
		cam_y_offset = lerp(cam_y_offset, target_y_close, 0.1 );	break;}