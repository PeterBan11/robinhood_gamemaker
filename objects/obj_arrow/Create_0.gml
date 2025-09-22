/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 064A331B
/// @DnDArgument : "expr" "6"
/// @DnDArgument : "var" "my_speed"
my_speed = 6;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6DD22E33
/// @DnDInput : 2
/// @DnDArgument : "var" "dx"
/// @DnDArgument : "var_1" "dy"
dx = 0;
dy = 0;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 000AA79A
/// @DnDArgument : "funcName" "arrow_hit_sfx"
function arrow_hit_sfx() {	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11D5F09A
	/// @DnDParent : 000AA79A
	/// @DnDArgument : "var" "_choose_sfx"
	/// @DnDArgument : "value" "choose(1,2,3)"
	var _choose_sfx = choose(1,2,3);

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 49ABA0E2
	/// @DnDParent : 000AA79A
	/// @DnDArgument : "expr" "_choose_sfx"
	var l49ABA0E2_0 = _choose_sfx;switch(l49ABA0E2_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 22B12F45
		/// @DnDParent : 49ABA0E2
		/// @DnDArgument : "const" "1"
		case 1:	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 2AF112ED
			/// @DnDParent : 22B12F45
			/// @DnDArgument : "soundid" "sfx_arrow_hit1"
			/// @DnDSaveInfo : "soundid" "sfx_arrow_hit1"
			audio_play_sound(sfx_arrow_hit1, 0, 0, 1.0, undefined, 1.0);	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 74BBEFAF
		/// @DnDParent : 49ABA0E2
		/// @DnDArgument : "const" "2"
		case 2:	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 5885BAB2
			/// @DnDParent : 74BBEFAF
			/// @DnDArgument : "soundid" "sfx_arrow_hit2"
			/// @DnDSaveInfo : "soundid" "sfx_arrow_hit2"
			audio_play_sound(sfx_arrow_hit2, 0, 0, 1.0, undefined, 1.0);	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7A0F824B
		/// @DnDParent : 49ABA0E2
		/// @DnDArgument : "const" "3"
		case 3:	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 55E37D9E
			/// @DnDParent : 7A0F824B
			/// @DnDArgument : "soundid" "sfx_arrow_hit3"
			/// @DnDSaveInfo : "soundid" "sfx_arrow_hit3"
			audio_play_sound(sfx_arrow_hit3, 0, 0, 1.0, undefined, 1.0);	break;}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6C383C20
/// @DnDArgument : "funcName" "arrow_hit_goblin_sfx"
function arrow_hit_goblin_sfx() {	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F48D604
	/// @DnDParent : 6C383C20
	/// @DnDArgument : "var" "_choose_sfx"
	/// @DnDArgument : "value" "choose(1,2,3)"
	var _choose_sfx = choose(1,2,3);

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 21DF6C53
	/// @DnDParent : 6C383C20
	/// @DnDArgument : "expr" "_choose_sfx"
	var l21DF6C53_0 = _choose_sfx;switch(l21DF6C53_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 468009F1
		/// @DnDParent : 21DF6C53
		/// @DnDArgument : "const" "1"
		case 1:	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 75740157
			/// @DnDParent : 468009F1
			/// @DnDArgument : "soundid" "sfx_goblin_hit1"
			/// @DnDSaveInfo : "soundid" "sfx_goblin_hit1"
			audio_play_sound(sfx_goblin_hit1, 0, 0, 1.0, undefined, 1.0);	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 62FA3BB0
		/// @DnDParent : 21DF6C53
		/// @DnDArgument : "const" "2"
		case 2:	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 13114661
			/// @DnDParent : 62FA3BB0
			/// @DnDArgument : "soundid" "sfx_goblin_hit2"
			/// @DnDSaveInfo : "soundid" "sfx_goblin_hit2"
			audio_play_sound(sfx_goblin_hit2, 0, 0, 1.0, undefined, 1.0);	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6853082F
		/// @DnDParent : 21DF6C53
		/// @DnDArgument : "const" "3"
		case 3:	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 2B75DC90
			/// @DnDParent : 6853082F
			/// @DnDArgument : "soundid" "sfx_goblin_hit3"
			/// @DnDSaveInfo : "soundid" "sfx_goblin_hit3"
			audio_play_sound(sfx_goblin_hit3, 0, 0, 1.0, undefined, 1.0);	break;}}