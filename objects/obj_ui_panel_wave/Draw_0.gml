/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 2F21B650
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "xscale" "3"
/// @DnDArgument : "sprite" "spr_ui_waves"
/// @DnDSaveInfo : "sprite" "spr_ui_waves"
draw_sprite_ext(spr_ui_waves, 0, x, y, 3, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4FBED56E
/// @DnDArgument : "font" "fnt_main_large"
/// @DnDSaveInfo : "font" "fnt_main_large"
draw_set_font(fnt_main_large);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 35D04A74
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 09509123
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l09509123_0=($FF000000 >> 24);
draw_set_alpha(l09509123_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7973C15D
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y - 10"
/// @DnDArgument : "caption" ""Wave: ""
/// @DnDArgument : "var" "global.wave_number"
draw_text(x, y - 10, string("Wave: ") + string(global.wave_number));