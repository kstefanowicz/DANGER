/// @description defineMoves
function defineMoves() {
	
	inputBufferSize = 10;
	
	enum buttonPriority{LP, LK, MP, MK, HP, HK}
	enum typePriority{normal, command, special, super};
	
#region Normals
	var normalLP = [[1,0,0,0,0,0]];
	var normalMP = [[0,1,0,0,0,0]];
	var normalHP = [[0,0,1,0,0,0]];
	var normalLK = [[0,0,0,1,0,0]];
	var normalMK = [[0,0,0,0,1,0]];
	var normalHK = [[0,0,0,0,0,1]];
	
	
#endregion
	


#region Moves
	
	movesList = ["Stand HP"];
	
	movesInput = ds_map_create();	
	movesSprite = ds_map_create();	
	movesState = ds_map_create();	
	moveLength = ds_map_create();
		
	ds_map_add(movesInput, movesList[0], normalHP);
	ds_map_add(movesSprite, movesList[0], kenHPclose);
	ds_map_add(movesState, movesList[0], "Stand HP");
	ds_map_add(moveLength, movesList[0], 26);	

#endregion

}
