/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 754E96D2
/// @DnDArgument : "expr" "other.power_up_type"
var l754E96D2_0 = other.power_up_type;switch(l754E96D2_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7691B2D0
	/// @DnDParent : 754E96D2
	/// @DnDArgument : "const" ""HP""
	case "HP":	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 30F7A093
		/// @DnDParent : 7691B2D0
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "3"
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		if(__dnd_lives < 3){	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
			/// @DnDVersion : 1
			/// @DnDHash : 5C3E6633
			/// @DnDParent : 30F7A093
			/// @DnDArgument : "lives" "1"
			/// @DnDArgument : "lives_relative" "1"
			if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;__dnd_lives += real(1);}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6E8CB2FB
	/// @DnDParent : 754E96D2
	/// @DnDArgument : "const" ""FIRERATE""
	case "FIRERATE":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58C38B95
		/// @DnDParent : 6E8CB2FB
		/// @DnDArgument : "expr" "clamp(bow_fire_rate * 0.8, 1, 100)"
		/// @DnDArgument : "var" "bow_fire_rate"
		bow_fire_rate = clamp(bow_fire_rate * 0.8, 1, 100);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 79221511
		/// @DnDParent : 6E8CB2FB
		/// @DnDArgument : "steps" "room_speed * 5"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, room_speed * 5);	break;}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7F8B0A77
/// @DnDApplyTo : other
with(other) instance_destroy();