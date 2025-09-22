/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 036DB85F
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A9A0365
	/// @DnDParent : 036DB85F
	/// @DnDArgument : "expr" ""hit""
	/// @DnDArgument : "var" "my_state"
	my_state = "hit";
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 199D34DF
/// @DnDArgument : "function" "arrow_hit_goblin_sfx"
arrow_hit_goblin_sfx();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5C9F668D
/// @DnDArgument : "function" "arrow_hit_sfx"
arrow_hit_sfx();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7D75B018
instance_destroy();