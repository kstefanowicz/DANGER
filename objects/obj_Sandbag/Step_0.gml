with(hurtbox){
    x = other.x + xOffset;
    y = other.y + yOffset;
}

switch currentState{

	case "Idle":
		hspeed = 0;
		angle = 0;

	case "Hit":
		hit_state();
	break;
}

frame_counter();