/// @description scr_check_move()
/// @arg move
/// @arg index
function scr_check_move() {

	var checkMove = argument[0];
	var index = argument[1];

	// Check for move
	var isMatch = true;
	var checkStart = 30;
	for (var i = 0; i < array_length_1d(checkMove); i++){
		var isIn = false;
		for (var j = 30; j >= 0; j--){
			if (input_chain_direction[| j] == checkMove[i]
			and checkStart >= j){
				isIn = true;
				checkStart = j;
						}
			var tempCopy = [];
			if (is_array(input_chain_buttons[| j]) && is_array(checkMove[i])){
				array_copy(tempCopy, 0, input_chain_buttons[| j], 0, 6);
				if (array_equals(scr_array_and(input_chain_buttons[| j], checkMove[i]), checkMove[i])
				and array_equals(scr_array_and(input_chain_buttons_down[| j], checkMove[i]), checkMove[i])
				and checkStart >= j){
					isIn = true;
					checkStart = j;
				}
			}
		}
		if (!isIn){
			isMatch = false;
		}
	}

	if (isMatch){
		currentMove = movesGrid[# index, 1];
		alarm[0] = room_speed;
	}


}
