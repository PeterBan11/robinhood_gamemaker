/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 3C3A4F74
/// @DnDArgument : "expr" "my_state"
var l3C3A4F74_0 = my_state;switch(l3C3A4F74_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1DF679B5
	/// @DnDParent : 3C3A4F74
	/// @DnDArgument : "const" ""idle""
	case "idle":	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 461A4D01
		/// @DnDParent : 1DF679B5
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "y"
		/// @DnDArgument : "sprite" "spr_goblin_idle"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "spr_goblin_idle"
		draw_sprite_ext(spr_goblin_idle, image_index, x, y, 1, 1, 0, $FFFFFF & $ffffff, 1);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 235074EF
	/// @DnDParent : 3C3A4F74
	/// @DnDArgument : "const" ""hitted""
	case "hitted":	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 596073D4
		/// @DnDParent : 235074EF
		/// @DnDArgument : "var" "flash_value"
		/// @DnDArgument : "value" "1"
		if(flash_value == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 6F1A2BF4
			/// @DnDParent : 596073D4
			/// @DnDArgument : "code" "gpu_set_blendmode(bm_add);$(13_10)"
			gpu_set_blendmode(bm_add);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 419F81C3
		/// @DnDParent : 235074EF
		else{	/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 2CAE97E6
			/// @DnDParent : 419F81C3
			/// @DnDArgument : "code" "gpu_set_blendmode(bm_normal);$(13_10)"
			gpu_set_blendmode(bm_normal);}
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 3C33A32C
		/// @DnDParent : 235074EF
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "y"
		/// @DnDArgument : "sprite" "spr_goblin_idle"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "spr_goblin_idle"
		draw_sprite_ext(spr_goblin_idle, image_index, x, y, 1, 1, 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 6E962E35
		/// @DnDParent : 235074EF
		/// @DnDArgument : "code" "gpu_set_blendmode(bm_normal);$(13_10)"
		gpu_set_blendmode(bm_normal);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 453EA820
	/// @DnDParent : 3C3A4F74
	/// @DnDArgument : "const" ""run""
	case "run":	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 56AE1E00
		/// @DnDParent : 453EA820
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "y"
		/// @DnDArgument : "xscale" "x_direction"
		/// @DnDArgument : "sprite" "spr_goblin_run"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "spr_goblin_run"
		draw_sprite_ext(spr_goblin_run, image_index, x, y, x_direction, 1, 0, $FFFFFF & $ffffff, 1);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5F582DD8
	/// @DnDParent : 3C3A4F74
	/// @DnDArgument : "const" ""attack""
	case "attack":	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 74859CC5
		/// @DnDParent : 5F582DD8
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "y"
		/// @DnDArgument : "xscale" "x_direction"
		/// @DnDArgument : "sprite" "spr_goblin_attack_right"
		/// @DnDArgument : "frame" "frame_attack"
		/// @DnDSaveInfo : "sprite" "spr_goblin_attack_right"
		draw_sprite_ext(spr_goblin_attack_right, frame_attack, x, y, x_direction, 1, 0, $FFFFFF & $ffffff, 1);	break;

	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 3BBF6B79
	/// @DnDParent : 3C3A4F74
	default:	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 75C18BC1
		/// @DnDParent : 3BBF6B79
		/// @DnDArgument : "expr" "node_dx > 0"
		if(node_dx > 0){	/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4132E691
			/// @DnDParent : 75C18BC1
			/// @DnDArgument : "var" "_direction_x"
			/// @DnDArgument : "value" "1"
			var _direction_x = 1;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 67CD505C
		/// @DnDParent : 3BBF6B79
		else{	/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 14E3659E
			/// @DnDParent : 67CD505C
			/// @DnDArgument : "var" "_direction_x"
			/// @DnDArgument : "value" "-1"
			var _direction_x = -1;}
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1533DAD9
		/// @DnDParent : 3BBF6B79
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "y"
		/// @DnDArgument : "xscale" "_direction_x"
		/// @DnDArgument : "sprite" "spr_goblin_run"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "spr_goblin_run"
		draw_sprite_ext(spr_goblin_run, image_index, x, y, _direction_x, 1, 0, $FFFFFF & $ffffff, 1);	break;}