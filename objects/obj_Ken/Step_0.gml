// Inherit the parent event
event_inherited();

switch currentState{
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