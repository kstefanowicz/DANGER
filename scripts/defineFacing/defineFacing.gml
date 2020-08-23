// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function defineFacing(rightFacing){	
	if (rightFacing){
		dir_downToward = outputsD.downRight;
		dir_toward = outputsD.right;
		dir_upToward = outputsD.upRight;
	
		dir_downBack = outputsD.downLeft;
		dir_back = outputsD.left;
		dir_upBack = outputsD.upLeft;
		
		facing = 1;
	} else {
		dir_downToward = outputsD.downLeft;
		dir_toward = outputsD.left;
		dir_upToward = outputsD.upLeft;
	
		dir_downBack = outputsD.downRight;
		dir_back = outputsD.right;
		dir_upBack = outputsD.upRight;
		
		facing = -1;
	}
	
	initializeMoves();
	script_execute(characterMoves);
	
}