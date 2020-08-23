/// @description defineMoves
function initializeMoves() {
	
	inputBufferSize = 10;
	
	enum buttonPriority{LP, LK, MP, MK, HP, HK}
	enum typePriority{normal, command, special, super};
	
	movesInput = ds_map_create();	
	movesSprite = ds_map_create();	
	movesState = ds_map_create();	
	moveLength = ds_map_create();
	moveFramerate = ds_map_create();
	movePriorityB = ds_map_create();
	movePriorityT = ds_map_create();
}
