/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5223CD1E
/// @DnDArgument : "expr" "my_state"
var l5223CD1E_0 = my_state;switch(l5223CD1E_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6A6B43DD
	/// @DnDParent : 5223CD1E
	/// @DnDArgument : "const" ""idle""
	case "idle":	/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 5BD2781B
		/// @DnDParent : 6A6B43DD
		/// @DnDArgument : "steps" "room_speed*3"
		/// @DnDArgument : "alarm" "3"
		alarm_set(3, room_speed*3);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A1AC815
		/// @DnDParent : 6A6B43DD
		/// @DnDArgument : "expr" ""waiting""
		/// @DnDArgument : "var" "my_state"
		my_state = "waiting";	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1CBF8367
	/// @DnDParent : 5223CD1E
	/// @DnDArgument : "const" ""run""
	case "run":	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 76EF950B
		/// @DnDParent : 1CBF8367
		/// @DnDArgument : "expr" "hspeed >= 0"
		if(hspeed >= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2F3F7B9C
			/// @DnDParent : 76EF950B
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "x_direction"
			x_direction = 1;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 79DD1D2B
		/// @DnDParent : 1CBF8367
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 071D9386
			/// @DnDParent : 79DD1D2B
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "x_direction"
			x_direction = -1;}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 7C23DE4E
		/// @DnDParent : 1CBF8367
		/// @DnDArgument : "expr" "vspeed >=0"
		if(vspeed >=0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1E774661
			/// @DnDParent : 7C23DE4E
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "y_direction"
			y_direction = 1;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 1E4D8E54
		/// @DnDParent : 1CBF8367
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3D892BE7
			/// @DnDParent : 1E4D8E54
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "y_direction"
			y_direction = -1;}
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5DE98AD3
		/// @DnDInput : 2
		/// @DnDParent : 1CBF8367
		/// @DnDArgument : "value" "lerp(hspeed, node_dx, speed_rate)"
		/// @DnDArgument : "value_1" "lerp(vspeed, node_dy, speed_rate)"
		/// @DnDArgument : "instvar" "4"
		/// @DnDArgument : "instvar_1" "5"
		hspeed = lerp(hspeed, node_dx, speed_rate);
		vspeed = lerp(vspeed, node_dy, speed_rate);
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0A782FC2
		/// @DnDParent : 1CBF8367
		/// @DnDArgument : "var" "_distance"
		/// @DnDArgument : "value" "point_distance(x, y, target.x, target.y)"
		var _distance = point_distance(x, y, target.x, target.y);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 7116B124
		/// @DnDParent : 1CBF8367
		/// @DnDArgument : "expr" "_distance <= attack_distance"
		if(_distance <= attack_distance){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 656DD22D
			/// @DnDParent : 7116B124
			/// @DnDArgument : "expr" ""attack""
			/// @DnDArgument : "var" "my_state"
			my_state = "attack";
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 7E17C754
			/// @DnDInput : 2
			/// @DnDParent : 7116B124
			/// @DnDArgument : "instvar" "4"
			/// @DnDArgument : "instvar_1" "5"
			hspeed = 0;
			vspeed = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 612D60EB
			/// @DnDParent : 7116B124
			/// @DnDArgument : "steps" "2"
			/// @DnDArgument : "alarm" "4"
			alarm_set(4, 2);}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4AA9C33F
	/// @DnDParent : 5223CD1E
	/// @DnDArgument : "const" ""hit""
	case "hit":	/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 721C6B92
		/// @DnDParent : 4AA9C33F
		/// @DnDArgument : "steps" "1"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 1);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2FCB32F1
		/// @DnDInput : 2
		/// @DnDParent : 4AA9C33F
		/// @DnDArgument : "expr" ""hitted""
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "my_state"
		/// @DnDArgument : "var_1" "my_lives"
		my_state = "hitted";
		my_lives += -1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 00604291
		/// @DnDParent : 4AA9C33F
		/// @DnDArgument : "var" "my_lives"
		if(my_lives == 0){	/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5DE6B165
			/// @DnDParent : 00604291
			/// @DnDArgument : "var" "_check_powerup_drop"
			/// @DnDArgument : "value" "random_range(0, 10)"
			var _check_powerup_drop = random_range(0, 10);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 772025B9
			/// @DnDParent : 00604291
			/// @DnDArgument : "var" "_check_powerup_drop"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "1"
			if(_check_powerup_drop <= 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5A80E827
				/// @DnDParent : 772025B9
				/// @DnDArgument : "xpos" "x"
				/// @DnDArgument : "ypos" "y"
				/// @DnDArgument : "objectid" "obj_powerup"
				/// @DnDArgument : "layer" ""PowerUps""
				/// @DnDSaveInfo : "objectid" "obj_powerup"
				instance_create_layer(x, y, "PowerUps", obj_powerup);}
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 767DC53F
			/// @DnDParent : 00604291
			instance_destroy();}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 083CEBAB
	/// @DnDParent : 5223CD1E
	/// @DnDArgument : "const" ""attack""
	case "attack":	break;}