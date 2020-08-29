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
		hspeed = 0;
		angle = 0;
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
		break;
		
	case "Hit":
		hit_state();
		break;

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
if(instance_exists(obj_camera)){
	x = clamp(x, obj_camera.cameraX + sprite_width/2, obj_camera.cameraX + obj_camera.cameraWidth - sprite_width/2)
	y = clamp(y, 0, groundLevel);
}

// Flip facing direction
if(keyboard_check_pressed(ord("M"))){
	isFacingRight = !isFacingRight
	defineFacing(isFacingRight)
}

//hurtbox
with(hurtbox){
    x = other.xPos + xOffset;
    y = other.yPos + yOffset;
}

//hitbox
if(hitbox != -1){
    with(hitbox){
        x = other.x + xOffset;
        y = other.y + yOffset;
    
	
		with(obj_hurtbox){
			if(place_meeting(x, y, other) && other.owner != owner){
				//ignore check
	            //checking collision from the hitbox object
	            with(other){
	                //check to see if your target is on the ignore list
	                //if it is on the ignore list, dont hit it again
	                for(i = 0; i < ds_list_size(ignoreList); i ++){
	                    if(ignoreList[|i] = other.owner){
	                        ignore = true;
	                        break;
	                    }
	                }

	                //if it is NOT on the ignore list, hit it, and add it to
	                //the ignore list
	                if(!ignore){
	                    other.owner.hit = true;
	                    other.owner.hitBy = id;
	                    ds_list_add(ignoreList,other.owner);
	                }
	            }
			}
		}
	}
}

frame_counter();