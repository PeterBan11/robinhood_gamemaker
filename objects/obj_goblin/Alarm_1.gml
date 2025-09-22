/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37294B14
/// @DnDArgument : "var" "flash_count"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "3"
if(flash_count <= 3){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5867DAF5
	/// @DnDParent : 37294B14
	/// @DnDArgument : "var" "flash_value"
	if(flash_value == 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41F7954A
		/// @DnDParent : 5867DAF5
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "flash_value"
		flash_value = 1;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2797C86C
	/// @DnDParent : 37294B14
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1825029E
		/// @DnDParent : 2797C86C
		/// @DnDArgument : "var" "flash_value"
		flash_value = 0;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A5F520A
	/// @DnDParent : 37294B14
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "flash_count"
	flash_count += 1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 238499C9
	/// @DnDParent : 37294B14
	/// @DnDArgument : "steps" "3"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 3);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7F354C5D
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5671B7F3
	/// @DnDInput : 2
	/// @DnDParent : 7F354C5D
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "flash_count"
	/// @DnDArgument : "var_1" "flash_value"
	flash_count = 0;
	flash_value += 0;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4538A8AA
	/// @DnDParent : 7F354C5D
	/// @DnDArgument : "function" "find_path"
	find_path();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F587970
	/// @DnDParent : 7F354C5D
	/// @DnDArgument : "expr" ""run""
	/// @DnDArgument : "var" "my_state"
	my_state = "run";}