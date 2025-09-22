/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26583E47
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "frame_attack"
frame_attack += 1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3A7927C5
/// @DnDArgument : "expr" "frame_attack == 3"
if(frame_attack == 3){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6C0FFB82
	/// @DnDParent : 3A7927C5
	/// @DnDArgument : "expr" "point_distance(x, y, target.x, target.y) < 64"
	if(point_distance(x, y, target.x, target.y) < 64){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 57E68E20
		/// @DnDApplyTo : {obj_hero}
		/// @DnDParent : 6C0FFB82
		with(obj_hero) {
			/// @DnDAction : YoYo Games.Instances.Call_User_Event
			/// @DnDVersion : 1
			/// @DnDHash : 7C522BFB
			/// @DnDParent : 57E68E20
			event_user(0);
		}}}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 53E5E953
/// @DnDArgument : "expr" "frame_attack >= 5"
if(frame_attack >= 5){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DE7A1EB
	/// @DnDInput : 2
	/// @DnDParent : 53E5E953
	/// @DnDArgument : "expr" ""run""
	/// @DnDArgument : "var" "my_state"
	/// @DnDArgument : "var_1" "frame_attack"
	my_state = "run";
	frame_attack = 0;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6C0F6E8C
else{	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1F830AA5
	/// @DnDParent : 6C0F6E8C
	/// @DnDArgument : "steps" "10"
	/// @DnDArgument : "alarm" "4"
	alarm_set(4, 10);}