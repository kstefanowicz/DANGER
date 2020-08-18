//Destroy dynamic object instances
ds_list_destroy(input_chain_direction_unique);
ds_list_destroy(input_chain_buttons_unique);
ds_list_destroy(input_chain_direction);
ds_list_destroy(input_chain_buttons);
ds_list_destroy(input_chain_buttons_down);
ds_list_destroy(input_chain_buttons_up);

ds_grid_destroy(movesGrid);