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

if(instance_exists(obj_camera)){
	x = clamp(x, obj_camera.cameraX + sprite_width/2, obj_camera.cameraX + obj_camera.cameraWidth - sprite_width/2)
}

frame_counter();