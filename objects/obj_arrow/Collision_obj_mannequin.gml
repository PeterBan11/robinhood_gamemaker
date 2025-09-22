/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4E3B018F
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
/// @DnDHash : 571A367C
/// @DnDApplyTo : _temp_arrow
with(_temp_arrow) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77889E4C
	/// @DnDParent : 571A367C
	/// @DnDArgument : "expr" "other.image_angle"
	/// @DnDArgument : "var" "image_angle"
	image_angle = other.image_angle;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 27D66A1D
/// @DnDArgument : "function" "arrow_hit_sfx"
arrow_hit_sfx();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7997A64D
instance_destroy();