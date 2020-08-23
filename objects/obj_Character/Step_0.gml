// If no move is active, check for movement
if (moveTimer == 0){
	switch input.input_chain_direction[| 0]{
		case dir_toward:
			sprite = anim_walkF;
			currentState = "WalkF";			
			break;
		case dir_back:
			sprite = anim_walkB;
			currentState = "WalkB";
			break;		
		default:
			sprite = anim_idle;
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
		x += facing * walkSpeed / room_speed;
		break;
		
	case "WalkB":
		x += facing * -walkSpeed / room_speed;
		frameSpeed = 16/60;
		break;
		
	case "Dash":
		if (moveTimer == 1){
			x += 200;	
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

// Flip facing direction
if(keyboard_check_pressed(ord("M"))){
	isFacingRight = !isFacingRight
	defineFacing(isFacingRight)
}

with(hurtbox){
    x = other.xPos + xOffset;
    y = other.yPos + yOffset;
}

frame_counter();