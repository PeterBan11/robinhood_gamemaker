/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 30F0DBF9
/// @DnDArgument : "xpos" "x"
/// @DnDArgument : "ypos" "y"
/// @DnDArgument : "var" "_temp_arrow"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_arrow_in_target"
/// @DnDArgument : "layer" ""Projectiles""
/// @DnDSaveInfo : "objectid" "obj_arrow_in_target"
var _temp_arrow = instance_create_layer(x, y, "Projectiles", obj_arrow_in_target);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 287B03C0
/// @DnDApplyTo : _temp_arrow
with(_temp_arrow) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4DCFC6D6
	/// @DnDParent : 287B03C0
	/// @DnDArgument : "expr" "other.image_angle"
	/// @DnDArgument : "var" "image_angle"
	image_angle = other.image_angle;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2C2A8DBE
/// @DnDArgument : "function" "arrow_hit_sfx"
arrow_hit_sfx();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 128A1692
instance_destroy();