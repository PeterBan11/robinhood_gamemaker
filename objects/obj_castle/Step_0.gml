/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 2911C68E
/// @DnDArgument : "expr" "my_state"
var l2911C68E_0 = my_state;switch(l2911C68E_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2C540CC0
	/// @DnDParent : 2911C68E
	/// @DnDArgument : "const" ""Increse""
	case "Increse":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7947BB12
		/// @DnDInput : 2
		/// @DnDParent : 2C540CC0
		/// @DnDArgument : "expr" "0.2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "0.3"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "image_xscale"
		/// @DnDArgument : "var_1" "image_yscale"
		image_xscale += 0.2;
		image_yscale += 0.3;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 3524F7C8
		/// @DnDParent : 2C540CC0
		/// @DnDArgument : "expr" "image_xscale >= 1.5"
		if(image_xscale >= 1.5){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3FB0D029
			/// @DnDParent : 3524F7C8
			/// @DnDArgument : "expr" ""Decrease""
			/// @DnDArgument : "var" "my_state"
			my_state = "Decrease";}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 71CC9770
	/// @DnDParent : 2911C68E
	/// @DnDArgument : "const" ""Decrease""
	case "Decrease":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6A4AEBAC
		/// @DnDInput : 2
		/// @DnDParent : 71CC9770
		/// @DnDArgument : "expr" "-0.2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "-0.3"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "image_xscale"
		/// @DnDArgument : "var_1" "image_yscale"
		image_xscale += -0.2;
		image_yscale += -0.3;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 110AB5CE
		/// @DnDParent : 71CC9770
		/// @DnDArgument : "expr" "image_xscale <= 1"
		if(image_xscale <= 1){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 16F4B187
			/// @DnDParent : 110AB5CE
			/// @DnDArgument : "expr" ""Wait""
			/// @DnDArgument : "var" "my_state"
			my_state = "Wait";}	break;}