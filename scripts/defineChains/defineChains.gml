/// @description defineChains()
function defineChains() {

	//Input chains for inputs, direction and buttons
	input_chain_direction = ds_list_create();
	input_chain_buttons = ds_list_create();
	ds_list_insert(input_chain_direction, 0, 0);
	ds_list_insert(input_chain_buttons, 0, [0,0,0,0,0,0]);
	maxLength = 300;

	//Input chains for unique inputs, direction and buttons
	input_chain_direction_unique = ds_list_create();
	input_chain_buttons_unique = ds_list_create();
	ds_list_insert(input_chain_direction_unique, 0, 0);
	ds_list_insert(input_chain_buttons_unique, 0, [0,0,0,0,0,0]);
	maxLengthUnique = 60;

	input_chain_buttons_down = ds_list_create();
	ds_list_insert(input_chain_buttons_down, 0, [0,0,0,0,0,0]);
	input_chain_buttons_up = ds_list_create();
	ds_list_insert(input_chain_buttons_up, 0, [0,0,0,0,0,0]);


}
