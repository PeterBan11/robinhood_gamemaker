/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6CB517BE
/// @DnDInput : 3
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "expr_2" "5"
/// @DnDArgument : "expr_relative_2" "1"
/// @DnDArgument : "var" "global.goblins_count"
/// @DnDArgument : "var_1" "global.wave_number"
/// @DnDArgument : "var_2" "global.goblins_max_count"
global.goblins_count = 0;
global.wave_number += 1;
global.goblins_max_count += 5;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 14236C51
/// @DnDArgument : "steps" "time_to_wave_start"
alarm_set(0, time_to_wave_start);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 01E66B34
/// @DnDApplyTo : {obj_ui_panel_wave}
with(obj_ui_panel_wave) {
	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 489310BF
	/// @DnDParent : 01E66B34
	event_user(0);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 196AA851
/// @DnDApplyTo : {obj_spawner}
with(obj_spawner) {
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7FA3E796
	/// @DnDParent : 196AA851
	/// @DnDArgument : "steps" "1"
	alarm_set(0, 1);
}