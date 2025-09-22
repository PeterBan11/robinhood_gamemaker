/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 2F21B650
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "sprite" "Button_Red_3Slides"
/// @DnDArgument : "frame" "image_index"
/// @DnDSaveInfo : "sprite" "Button_Red_3Slides"
draw_sprite_ext(Button_Red_3Slides, image_index, x, y, 1, 1, 0, $FFFFFF & $ffffff, 1);

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
/// @DnDArgument : "y" "y"
/// @DnDArgument : "caption" ""Menu""
draw_text(x, y, string("Menu") + "");