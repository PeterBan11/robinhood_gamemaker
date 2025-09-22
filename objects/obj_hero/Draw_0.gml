/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 281C7D8E
/// @DnDArgument : "expr" "xinput != 0 || yinput != 0"
if(xinput != 0 || yinput != 0){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 5EBF29F8
	/// @DnDParent : 281C7D8E
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "y"
	/// @DnDArgument : "xscale" "x_direction"
	/// @DnDArgument : "sprite" "spr_hero_run"
	/// @DnDArgument : "frame" "image_index"
	/// @DnDSaveInfo : "sprite" "spr_hero_run"
	draw_sprite_ext(spr_hero_run, image_index, x, y, x_direction, 1, 0, $FFFFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3A1D0198
else{	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 3DC4F519
	/// @DnDParent : 3A1D0198
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "y"
	/// @DnDArgument : "xscale" "x_direction"
	/// @DnDArgument : "sprite" "spr_hero_idle"
	/// @DnDArgument : "frame" "image_index"
	/// @DnDSaveInfo : "sprite" "spr_hero_idle"
	draw_sprite_ext(spr_hero_idle, image_index, x, y, x_direction, 1, 0, $FFFFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 7807379B
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y - bow_y_offset"
/// @DnDArgument : "yscale" "bow_dir"
/// @DnDArgument : "rot" "bow_angle"
/// @DnDArgument : "sprite" "spr_hero_bow"
/// @DnDArgument : "frame" "bow_frame"
/// @DnDSaveInfo : "sprite" "spr_hero_bow"
draw_sprite_ext(spr_hero_bow, bow_frame, x, y - bow_y_offset, 1, bow_dir, bow_angle, $FFFFFF & $ffffff, 1);