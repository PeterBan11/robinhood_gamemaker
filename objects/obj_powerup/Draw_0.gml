/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 5935333D
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "sprite" "spr_powerup_shadow"
/// @DnDSaveInfo : "sprite" "spr_powerup_shadow"
draw_sprite(spr_powerup_shadow, 0, x, y);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 1A119AD2
/// @DnDArgument : "expr" "power_up_type"
var l1A119AD2_0 = power_up_type;switch(l1A119AD2_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 43BA54CD
	/// @DnDParent : 1A119AD2
	/// @DnDArgument : "const" ""HP""
	case "HP":	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 30DCD033
		/// @DnDParent : 43BA54CD
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "y + wave_coeff"
		/// @DnDArgument : "sprite" "spr_powerup_hp"
		/// @DnDSaveInfo : "sprite" "spr_powerup_hp"
		draw_sprite(spr_powerup_hp, 0, x, y + wave_coeff);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4ABC1CBA
	/// @DnDParent : 1A119AD2
	/// @DnDArgument : "const" ""FIRERATE""
	case "FIRERATE":	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 565E3B60
		/// @DnDParent : 4ABC1CBA
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "y + wave_coeff"
		/// @DnDArgument : "sprite" "spr_powerup_firerate"
		/// @DnDSaveInfo : "sprite" "spr_powerup_firerate"
		draw_sprite(spr_powerup_firerate, 0, x, y + wave_coeff);	break;}