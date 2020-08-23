// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createMove(title, input, sprite, length, framerate, priorityB, priorityT){
	ds_map_add(movesInput, title, input);
	ds_map_add(movesSprite, title, sprite);
	ds_map_add(movesState, title, title);
	ds_map_add(moveLength, title, length);	
	ds_map_add(moveFramerate, title, framerate);
	ds_map_add(movePriorityB, title, priorityB);
	ds_map_add(movePriorityT, title, priorityT);
}