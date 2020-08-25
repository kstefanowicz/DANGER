frame_reset();

xPos = x;
yPos = y;

if (hit){
	angle = -45 * hitBy.owner.facing;
	hspeed = hitBy.xHit * hitBy.owner.facing;
	hitStun = hitBy.hitStun;
	facing = hitBy.owner.facing * -1;
	hit = false;
	currentState = "Hit";
}