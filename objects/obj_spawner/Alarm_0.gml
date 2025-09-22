/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 00A558F1
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "goblins_count"
global.goblins_count += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 668D04F1
/// @DnDArgument : "var" "global.goblins_count"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "global.goblins_max_count"
if(global.goblins_count < global.goblins_max_count){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4D35A86B
	/// @DnDParent : 668D04F1
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "obj_vfx_spawn"
	/// @DnDArgument : "layer" ""VFX_Layer""
	/// @DnDSaveInfo : "objectid" "obj_vfx_spawn"
	instance_create_layer(x, y, "VFX_Layer", obj_vfx_spawn);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 30B071EB
	/// @DnDParent : 668D04F1
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "obj_goblin"
	/// @DnDArgument : "layer" ""Enemies""
	/// @DnDSaveInfo : "objectid" "obj_goblin"
	instance_create_layer(x, y, "Enemies", obj_goblin);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 451F8CA3
	/// @DnDParent : 668D04F1
	/// @DnDArgument : "steps" "room_speed * 3"
	alarm_set(0, room_speed * 3);}