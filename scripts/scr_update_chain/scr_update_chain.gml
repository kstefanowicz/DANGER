/// @description scr_update_chain()
function scr_update_chain() {

	//Insert raw inputs
	ds_list_insert(input_chain_direction, 0, currentDirection);

	// Workaround for the ds_list data structure saving the currentButtons array by reference,
	// causing each item in the list to be the same.
	var temp = 0;
	for (var i = 0; i < 6; i++){
		temp[i] = currentButtons[i];
	}

	ds_list_insert(input_chain_buttons, 0, temp);


}
