/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 17F143B3
/// @DnDInput : 4
/// @DnDArgument : "var" "_left"
/// @DnDArgument : "value" "keyboard_check(ord("A"))"
/// @DnDArgument : "var_1" "_right"
/// @DnDArgument : "value_1" "keyboard_check(ord("D"))"
/// @DnDArgument : "var_2" "_up"
/// @DnDArgument : "value_2" "keyboard_check(ord("W"))"
/// @DnDArgument : "var_3" "_down"
/// @DnDArgument : "value_3" "keyboard_check(ord("S"))"
var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 40370563
/// @DnDInput : 2
/// @DnDArgument : "expr" "_right - _left"
/// @DnDArgument : "expr_1" "_down - _up"
/// @DnDArgument : "var" "xinput"
/// @DnDArgument : "var_1" "yinput"
xinput = _right - _left;
yinput = _down - _up;

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 09EA8308
/// @DnDArgument : "xvel" "xinput * my_speed"
/// @DnDArgument : "yvel" "yinput * my_speed"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "obj_wall"
move_and_collide(xinput * my_speed, yinput * my_speed, obj_wall,4,0,0,-1,-1);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3351C283
/// @DnDArgument : "expr" "xinput > 0"
if(xinput > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6BE85A90
	/// @DnDParent : 3351C283
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "x_direction"
	x_direction = 1;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 791CFFE3
/// @DnDArgument : "expr" "xinput < 0"
if(xinput < 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AB89EA6
	/// @DnDParent : 791CFFE3
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "x_direction"
	x_direction = -1;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3685AD9F
/// @DnDArgument : "expr" "point_direction(x, y - bow_y_offset, mouse_x, mouse_y)"
/// @DnDArgument : "var" "bow_angle"
bow_angle = point_direction(x, y - bow_y_offset, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 17EF598C
/// @DnDArgument : "expr" "bow_angle <= 90 || bow_angle >= 270"
if(bow_angle <= 90 || bow_angle >= 270){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08B7D10A
	/// @DnDParent : 17EF598C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "bow_dir"
	bow_dir = 1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 797BB653
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37F3DC6E
	/// @DnDParent : 797BB653
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "bow_dir"
	bow_dir = -1;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 5652CAB3
var l5652CAB3_0;l5652CAB3_0 = mouse_check_button(mb_left);if (l5652CAB3_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F45DF89
	/// @DnDParent : 5652CAB3
	/// @DnDArgument : "var" "bow_attack"
	if(bow_attack == 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F2AD3C5
		/// @DnDParent : 0F45DF89
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "bow_attack"
		bow_attack = 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 47FF23F2
		/// @DnDParent : 0F45DF89
		/// @DnDArgument : "steps" "1"
		alarm_set(0, 1);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 2B54E34B
		/// @DnDParent : 0F45DF89
		/// @DnDArgument : "soundid" "sfx_bow_loading"
		/// @DnDArgument : "pitch" "random_range(0.8, 1.2)"
		/// @DnDSaveInfo : "soundid" "sfx_bow_loading"
		audio_play_sound(sfx_bow_loading, 0, 0, 1.0, undefined, random_range(0.8, 1.2));}}