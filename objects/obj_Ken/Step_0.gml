// Inherit the parent event
event_inherited();

switch currentState{
	case "Tatsu H":
		if (moveTimer > 7){
		xPos += facing * 200 / room_speed;
		}
		break;
}