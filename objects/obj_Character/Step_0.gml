// If no move is active, check for movement
if (moveTimer == 0){
	switch input.input_chain_direction[| 0]{
		case dir_toward:
			sprite = kenWalkF;
			currentState = "WalkF";			
			break;
		case dir_back:
			sprite = kenWalkB;
			currentState = "WalkB";
			break;		
		default:
			sprite = kenStance;
			currentState = "Idle";
			break;
	}
}

// Check all moves
for (var i = 0; i < array_length(movesList); i++){
	var move = movesList[i]
	if (checkMove(move)){
		if (currentState != movesState[? move]){
			currentState = movesState[? move];
			sprite = movesSprite[? move];
			frame = 0;
			moveTimer = moveLength[? move];
			frameSpeed = moveFramerate[? move]/60;
			isLoop = false;
		}	
	}
}

// State actions
switch currentState{
	case "Idle":
		frameSpeed = 1;
		break;
		
	case "WalkF":
		frameSpeed = 16/60;
		xPos += facing * walkSpeed / room_speed;
		break;
		
	case "WalkB":
		xPos += facing * -walkSpeed / room_speed;
		frameSpeed = 16/60;
		break;
		
	case "Dash":
		if (moveTimer == 1){
			xPos += 200;	
		}

}

// Decrement moveTimer, and reset if 0
if (moveTimer > 0){
	moveTimer--;
	if (moveTimer <= 0){
		currentState = "Idle";
		isLoop = true;
	}
}

// Keep character on-screen and above the ground
xPos = clamp(xPos, sprite_width/2, window_get_width() - sprite_width/2)
yPos = clamp(yPos, 0, groundLevel);


if(keyboard_check_pressed(ord("M"))){
	isFacingRight = !isFacingRight
	defineFacing(isFacingRight)
}

frame_counter();