/// @description scr_update_chain_unique
function scr_update_chain_unique() {
	// Insert inputs to unique chain if they're different  from previous

	// Tracks if both directions and buttons are being updated on the same frame to avoid 2 updates in 1 frame
	var isChanged = false;

	// If currentDirection is different than the most recent entry,
	// insert Direction index to unique
	if (input_chain_direction_unique[| 0] != currentDirection){
		isChanged = true;
		ds_list_insert(input_chain_direction_unique,0,currentDirection);
		ds_list_insert(input_chain_buttons_unique, 0, input_chain_buttons_unique[| 0]);
	}

	var temp = 0;
	for (var i = 0; i < 6; i++){
		temp[i] = currentButtons[i];
	}

	var tempArr = input_chain_buttons_unique[| 0];

	// If currentButtons is different than the most recent entry, 
	// insert Buttons array to unique
	if (!array_equals(temp, tempArr)){
		scr_update_edge_chains(tempArr, temp);
		if (isChanged){
			input_chain_buttons_unique[| 0] = temp;
			isChanged = false;
		} else{
			ds_list_insert(input_chain_buttons_unique,0, temp);
			ds_list_insert(input_chain_direction_unique, 0, input_chain_direction_unique[| 0]);
		}
	} else {
		ds_list_insert(input_chain_buttons_down,0,[0,0,0,0,0,0])
		ds_list_insert(input_chain_buttons_up,0,[0,0,0,0,0,0])
	}


}
