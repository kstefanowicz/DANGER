readInputs();

updateChain();

updateChain_unique();

cleanChains()

// Check for move input matches
for (var moveIndex = 0; moveIndex < ds_grid_width(movesGrid); moveIndex++){
	checkMove(movesGrid[# moveIndex, 0], moveIndex);
}