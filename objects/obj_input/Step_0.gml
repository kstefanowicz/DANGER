scr_read_inputs();

scr_update_chain();

scr_update_chain_unique();

scr_clean_chains()

// Check for move input matches
for (var moveIndex = 0; moveIndex < ds_grid_width(movesGrid); moveIndex++){
	scr_check_move(movesGrid[# moveIndex, 0], moveIndex);
}