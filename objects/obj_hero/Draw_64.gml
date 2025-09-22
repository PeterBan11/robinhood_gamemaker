/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 64843E93
/// @DnDArgument : "x" "40"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "sprite" "spr_heart"
/// @DnDSaveInfo : "sprite" "spr_heart"
var l64843E93_0 = sprite_get_width(spr_heart);var l64843E93_1 = 0;if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;for(var l64843E93_2 = __dnd_lives; l64843E93_2 > 0; --l64843E93_2) {	draw_sprite(spr_heart, 0, 40 + l64843E93_1, 40);	l64843E93_1 += l64843E93_0;}