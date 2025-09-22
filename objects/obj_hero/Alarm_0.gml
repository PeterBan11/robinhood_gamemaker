/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A773FDB
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "bow_frame"
bow_frame += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 068B54DB
/// @DnDArgument : "var" "bow_frame"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "9"
if(bow_frame >= 9){	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1C4B3DA2
	/// @DnDParent : 068B54DB
	/// @DnDArgument : "function" "SpawnArrow"
	/// @DnDArgument : "arg" "bow_angle"
	SpawnArrow(bow_angle);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E46BC26
	/// @DnDInput : 2
	/// @DnDParent : 068B54DB
	/// @DnDArgument : "var" "bow_attack"
	/// @DnDArgument : "var_1" "bow_frame"
	bow_attack = 0;
	bow_frame = 0;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2377990E
else{	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0703A333
	/// @DnDParent : 2377990E
	/// @DnDArgument : "steps" "bow_fire_rate"
	alarm_set(0, bow_fire_rate);}