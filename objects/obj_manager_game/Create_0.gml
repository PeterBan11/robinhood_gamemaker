/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3B260394
/// @DnDInput : 6
/// @DnDArgument : "var" "grid"
/// @DnDArgument : "function" "mp_grid_create"
/// @DnDArgument : "arg" "0"
/// @DnDArgument : "arg_1" "0"
/// @DnDArgument : "arg_2" "arena_grid_width"
/// @DnDArgument : "arg_3" "arena_grid_height"
/// @DnDArgument : "arg_4" "cell_width"
/// @DnDArgument : "arg_5" "cell_height"
grid = mp_grid_create(0, 0, arena_grid_width, arena_grid_height, cell_width, cell_height);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4E6999C6
/// @DnDInput : 3
/// @DnDArgument : "function" "mp_grid_add_instances"
/// @DnDArgument : "arg" "grid"
/// @DnDArgument : "arg_1" "obj_wall"
/// @DnDArgument : "arg_2" "false"
mp_grid_add_instances(grid, obj_wall, false);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 201B283D
/// @DnDInput : 2
/// @DnDArgument : "value" "10"
/// @DnDArgument : "var" "goblins_max_count"
/// @DnDArgument : "var_1" "goblins_count"
global.goblins_max_count = 10;
global.goblins_count = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6C74BAD6
/// @DnDArgument : "var" "wave_number"
global.wave_number = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5A1B425B
/// @DnDArgument : "expr" "room_speed * 20"
/// @DnDArgument : "var" "time_to_wave_start"
time_to_wave_start = room_speed * 20;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 38E84511
/// @DnDArgument : "steps" "room_speed * 5"
alarm_set(0, room_speed * 5);