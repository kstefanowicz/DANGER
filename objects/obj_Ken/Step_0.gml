// Inherit the parent event
event_inherited();

switch currentState{
	case "Stand HP":
		if (frame == 10 && hitbox == -1){
			hitbox = createHitbox(50 * facing, 20, 34 * facing, -97, 4, 10, 10);
		}
		break;
	
	case "Tatsu L":
		if (moveTimer > 7){
		x += facing * 300 / room_speed;
		}
		break;
	case "Tatsu M":
		if (moveTimer > 7){
		x += facing * 300 / room_speed;
		}
		break;
	case "Tatsu H":
		if (moveTimer > 7){
		x += facing * 300 / room_speed;
		}
		break;
}