// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hit_state(){
	hspeed = lerp(hspeed, 0, 0.1);
	
	hitStun--;
	
	if (hitStun <= 0){
		currentState = "Idle";	
	}
}