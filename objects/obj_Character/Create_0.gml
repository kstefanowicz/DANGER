input = obj_input;

states = ["Idle", "WalkF", "WalkB", 
	"StandLP", "StandMP", "StandHP", "StandLK", "StandMK", "StandHK"]

currentState = "Idle";

walkSpeed = 300;

moveTimer = 0;

isFacingRight = true;

animation_init();

defineFacing(isFacingRight);

defineMoves();
