function cleanChains() {
	// Delete entries more than maxLength frames old
	while(ds_list_size(input_chain_direction) > maxLength){
		ds_list_delete(input_chain_direction, maxLength);	
	}
	while(ds_list_size(input_chain_buttons) > maxLength){
		ds_list_delete(input_chain_buttons, maxLength);	
	}
	while(ds_list_size(input_chain_buttons_down) > maxLength){
		ds_list_delete(input_chain_buttons_down, maxLength);	
	}
	while(ds_list_size(input_chain_buttons_up) > maxLength){
		ds_list_delete(input_chain_buttons_up, maxLength);	
	}

	// Delete entries more than maxLengthUnique frames old
	while(ds_list_size(input_chain_direction_unique) > maxLengthUnique){
		ds_list_delete(input_chain_direction_unique, maxLengthUnique);	
	}
	while(ds_list_size(input_chain_buttons_unique) > maxLengthUnique){
		ds_list_delete(input_chain_buttons_unique, maxLengthUnique);	
	}




}
