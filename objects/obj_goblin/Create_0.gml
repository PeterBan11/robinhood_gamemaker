/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2DB5C10C
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 60E7762B
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 060FC75D
/// @DnDInput : 5
/// @DnDArgument : "expr" ""idle""
/// @DnDArgument : "expr_1" "2"
/// @DnDArgument : "expr_4" "0.5"
/// @DnDArgument : "var" "my_state"
/// @DnDArgument : "var_1" "my_lives"
/// @DnDArgument : "var_2" "flash_value"
/// @DnDArgument : "var_3" "flash_count"
/// @DnDArgument : "var_4" "speed_dropoff"
my_state = "idle";
my_lives = 2;
flash_value = 0;
flash_count = 0;
speed_dropoff = 0.5;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7ACEF50C
/// @DnDArgument : "funcName" "find_path"
function find_path() {	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BB7F8FA
	/// @DnDParent : 7ACEF50C
	/// @DnDArgument : "var" "_path"
	/// @DnDArgument : "value" "path_add()"
	var _path = path_add();

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3F952BC6
	/// @DnDParent : 7ACEF50C
	/// @DnDArgument : "expr" "mp_grid_path(obj_manager_game.grid, _path, x, y, target.x, target.y, true)"
	if(mp_grid_path(obj_manager_game.grid, _path, x, y, target.x, target.y, true)){	/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 73599045
		/// @DnDInput : 2
		/// @DnDParent : 3F952BC6
		/// @DnDArgument : "function" "path_assign"
		/// @DnDArgument : "arg" "path"
		/// @DnDArgument : "arg_1" "_path"
		path_assign(path, _path);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42BC83B9
		/// @DnDInput : 2
		/// @DnDParent : 3F952BC6
		/// @DnDArgument : "expr" "path_get_point_x(path, 1)"
		/// @DnDArgument : "expr_1" "path_get_point_y(path, 1)"
		/// @DnDArgument : "var" "next_node_x"
		/// @DnDArgument : "var_1" "next_node_y"
		next_node_x = path_get_point_x(path, 1);
		next_node_y = path_get_point_y(path, 1);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2EE25CAE
	/// @DnDParent : 7ACEF50C
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 24959B46
		/// @DnDInput : 2
		/// @DnDParent : 2EE25CAE
		/// @DnDArgument : "var" "next_node_x"
		/// @DnDArgument : "var_1" "next_node_y"
		next_node_x = 0;
		next_node_y = 0;}}