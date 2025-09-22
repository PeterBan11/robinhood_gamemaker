/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 38D81DAF
/// @DnDArgument : "lives" "3"
__dnd_lives = real(3);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0A46FC20
/// @DnDInput : 4
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "expr_3" "1"
/// @DnDArgument : "var" "my_speed"
/// @DnDArgument : "var_1" "xinput"
/// @DnDArgument : "var_2" "yinput"
/// @DnDArgument : "var_3" "x_direction"
my_speed = 4;
xinput = 0;
yinput = 0;
x_direction = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 50F5C41D
/// @DnDInput : 5
/// @DnDArgument : "expr_1" "20"
/// @DnDArgument : "expr_2" "1"
/// @DnDArgument : "var" "bow_angle"
/// @DnDArgument : "var_1" "bow_y_offset"
/// @DnDArgument : "var_2" "bow_dir"
/// @DnDArgument : "var_3" "bow_frame"
/// @DnDArgument : "var_4" "bow_attack"
bow_angle = 0;
bow_y_offset = 20;
bow_dir = 1;
bow_frame = 0;
bow_attack = 0;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 74C01B43
/// @DnDArgument : "funcName" "SpawnArrow"
/// @DnDArgument : "arg" "_bow_angle"
function SpawnArrow(_bow_angle) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 72B4345E
	/// @DnDParent : 74C01B43
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y - bow_y_offset"
	/// @DnDArgument : "var" "_new_arrow"
	/// @DnDArgument : "objectid" "obj_arrow"
	/// @DnDArgument : "layer" ""Projectiles""
	/// @DnDSaveInfo : "objectid" "obj_arrow"
	_new_arrow = instance_create_layer(x, y - bow_y_offset, "Projectiles", obj_arrow);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 0DA2EE94
	/// @DnDApplyTo : _new_arrow
	/// @DnDParent : 74C01B43
	with(_new_arrow) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 458FC6DC
		/// @DnDInput : 3
		/// @DnDParent : 0DA2EE94
		/// @DnDArgument : "expr" "lengthdir_x(1, _bow_angle)"
		/// @DnDArgument : "expr_1" "lengthdir_y(1, _bow_angle)"
		/// @DnDArgument : "expr_2" "_bow_angle"
		/// @DnDArgument : "var" "dx"
		/// @DnDArgument : "var_1" "dy"
		/// @DnDArgument : "var_2" "image_angle"
		dx = lengthdir_x(1, _bow_angle);
		dy = lengthdir_y(1, _bow_angle);
		image_angle = _bow_angle;
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6ED8A007
/// @DnDArgument : "funcName" "FootSteps"
function FootSteps() {	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A4861E7
	/// @DnDParent : 6ED8A007
	/// @DnDArgument : "var" "_choose_sfx"
	/// @DnDArgument : "value" "choose(1, 2, 3)"
	var _choose_sfx = choose(1, 2, 3);

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 11743185
	/// @DnDParent : 6ED8A007
	/// @DnDArgument : "expr" "_choose_sfx"
	var l11743185_0 = _choose_sfx;switch(l11743185_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 0722F417
		/// @DnDParent : 11743185
		/// @DnDArgument : "const" "1"
		case 1:	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 75F94003
			/// @DnDParent : 0722F417
			/// @DnDArgument : "soundid" "sfx_hero_footsteps1"
			/// @DnDArgument : "pitch" "random_range(0.7, 1.3)"
			/// @DnDSaveInfo : "soundid" "sfx_hero_footsteps1"
			audio_play_sound(sfx_hero_footsteps1, 0, 0, 1.0, undefined, random_range(0.7, 1.3));	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 53E32C04
		/// @DnDParent : 11743185
		/// @DnDArgument : "const" "2"
		case 2:	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 6D516400
			/// @DnDParent : 53E32C04
			/// @DnDArgument : "soundid" "sfx_hero_footsteps2"
			/// @DnDArgument : "pitch" "random_range(0.7, 1.3)"
			/// @DnDSaveInfo : "soundid" "sfx_hero_footsteps2"
			audio_play_sound(sfx_hero_footsteps2, 0, 0, 1.0, undefined, random_range(0.7, 1.3));	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 12C27D28
		/// @DnDParent : 11743185
		/// @DnDArgument : "const" "3"
		case 3:	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 33DC4C2C
			/// @DnDParent : 12C27D28
			/// @DnDArgument : "soundid" "sfx_hero_footsteps3"
			/// @DnDArgument : "pitch" "random_range(0.7, 1.3)"
			/// @DnDSaveInfo : "soundid" "sfx_hero_footsteps3"
			audio_play_sound(sfx_hero_footsteps3, 0, 0, 1.0, undefined, random_range(0.7, 1.3));	break;}}