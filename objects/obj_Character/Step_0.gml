

switch input.input_chain_direction[| 0]{

	case dir_toward:
		if (moveTimer == 0){
			sprite = kenWalkF;
			currentState = "WalkF";
		}
		break;
	
	case dir_back:
		if (moveTimer == 0){
			sprite = kenWalkB;
			currentState = "WalkB";
		}
		break;
		
		
	default:
		if (moveTimer == 0){
			sprite = kenStance;
			currentState = "idle";
		}
		break;
}


for (var i = 0; i < array_length(movesList); i++){
	var move = movesList[i]
	if (checkMove(movesInput[? move])){
		if (currentState != movesState[? move]){
			currentState = movesState[? move];
			sprite = movesSprite[? move];
			frame = 0;
			moveTimer = moveLength[? move];
		}	
	}
}

for (var i = 0; i < array_length(movesListSpecial); i++){
	var move = movesListSpecial[i]
	if (checkMove(movesInput[? move])){
		if (currentState != movesState[? move]){
			currentState = movesState[? move];
			sprite = movesSprite[? move];
			frame = 0;
			moveTimer = moveLength[? move];
		}	
	}
}


switch currentState{
	case "WalkF":
		xPos += facing * walkSpeed / room_speed;
		break;
		
	case "WalkB":
		xPos += facing * -walkSpeed / room_speed;
		break;

}

if (moveTimer > 0){
	moveTimer--;
	if (moveTimer <= 0){
		currentState = "Idle";
	}
}

xPos = clamp(xPos, sprite_width/2, window_get_width() - sprite_width/2)


if(keyboard_check_pressed(ord("M"))){
	isFacingRight = !isFacingRight
	defineFacing(isFacingRight)
}

frame_counter();