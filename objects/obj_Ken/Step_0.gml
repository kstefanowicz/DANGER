switch input.input_chain_direction[| 0]{

	case outputsD.right:
		if (moveTimer == 0){
			currentState = states.walkF;
		}
		break;
	
	case outputsD.left:
		if (moveTimer == 0){
			currentState = states.walkB;
		}
		break;
		
		
	default:
		if (moveTimer == 0){
			currentState = states.idle;
		}
		break;
}

if array_equals(input.movesGrid[# 11, 0][0], input.input_chain_buttons_down[| 0]){
	if (currentState != states.standHP){
		currentState = states.standHP;
		moveTimer = 26;
		image_index = 0;
			
	}
}


switch currentState{
	case states.idle:
		sprite_index = kenStance;
		break;
		
	case states.walkF:
		sprite_index = kenWalkF;
		x += walkSpeed / room_speed;
		break;
		
	case states.walkB:
		sprite_index = kenWalkB;
		x -= walkSpeed / room_speed;
		break;
	
	case states.standHP:
		sprite_index = kenHPclose;
		moveTimer--;
		if (moveTimer <= 0){
			currentState = states.idle;
		}
		break;

}
