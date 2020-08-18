/// @description scr_update_edge_chains(oldArr, newArr)
/// @arg oldArr
/// @arg newArr
function scr_update_edge_chains() {

	var oldArr = argument[0];
	var newArr = argument[1];

	var outArrDown = [0,0,0,0,0,0]
	var outArrUp = [0,0,0,0,0,0]

	for (var i = 0; i < array_length_1d(oldArr); i++){
		if (oldArr[i] == 0 and newArr[i] = 1){
			outArrDown[i] = 1;
		} else if (oldArr[i] == 1 and newArr[i] == 0){
			outArrUp[i] = 0;
		}
	}

	ds_list_insert(input_chain_buttons_down, 0, outArrDown);
	ds_list_insert(input_chain_buttons_up, 0, outArrUp);


}
