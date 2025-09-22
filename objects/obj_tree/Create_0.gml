/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46D939A2
/// @DnDArgument : "var" "image_speed"
image_speed = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 63026BB7
/// @DnDArgument : "steps" "3"
alarm_set(0, 3);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 279C8468
/// @DnDArgument : "steps" "irandom_range(1, 20)"
/// @DnDArgument : "alarm" "1"
alarm_set(1, irandom_range(1, 20));