/// @description checkMove()
/// @arg move
/// @arg index
function checkMove() {

	var moveToCheck= argument[0];
	var index = argument[1];

	// Check for move
	var isMatch = true;
	var checkStart = inputBufferSize;
	for (var i = 0; i < array_length(moveToCheck); i++){
		var isIn = false;
		for (var j = inputBufferSize; j >= 0; j--){
			if (input_chain_direction[| j] == moveToCheck[i]
			and checkStart >= j){
				isIn = true;
				checkStart = j;
						}
			var tempCopy = [];
			if (is_array(input_chain_buttons[| j]) && is_array(moveToCheck[i])){
				array_copy(tempCopy, 0, input_chain_buttons[| j], 0, 6);
				if (array_equals(arrayAnd(input_chain_buttons[| j], moveToCheck[i]), moveToCheck[i])
				and array_equals(arrayAnd(input_chain_buttons_down[| j], moveToCheck[i]), moveToCheck[i])
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
		var replace = false;
		//If move button priority is higher, set replace to true, else false
		replace = (movesGrid[# index, 2] > movesGrid[# currentMove, 2]) ? true : false; 
		//If move type priority is higher, set replace to true, else false
		replace = (movesGrid[# index, 3] > movesGrid[# currentMove, 3]) ? true : false;
		
		if (replace) {
			currentMove = index;
			alarm[0] = room_speed;
		}
	}
}