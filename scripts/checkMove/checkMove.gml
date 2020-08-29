/// @description checkMove()
/// @arg move
/// @arg index
function checkMove(inMove) {
	var moveToCheck = movesInput[? inMove];

	// Check for move
	var isMatch = true;
	var checkStart = inputBufferSize;
	for (var i = 0; i < array_length(moveToCheck); i++){
		var isIn = false;
		for (var j = checkStart; j >= 0; j--){
			if (obj_input.input_chain_direction[| j] == moveToCheck[i]){
				isIn = true;
				checkStart = j;
			}
			if (is_array(obj_input.input_chain_buttons[| j]) && is_array(moveToCheck[i])){
				if (array_equals(arrayAnd(obj_input.input_chain_buttons[| j], moveToCheck[i]), moveToCheck[i])
				and array_equals(arrayAnd(obj_input.input_chain_buttons_down[| j], moveToCheck[i]), moveToCheck[i])){
					isIn = true;
					checkStart = j;
				}
			}
		}
		if(inMove == "Dash"){
			show_debug_message(string(checkStart) + " " + string(moveToCheck[i]) + " " + string(isIn));
		}
		
		if (!isIn){
			isMatch = false;
		}
	}
	
	if(inMove == "Dash") show_debug_message("");

	if (isMatch){
		var replace = false;
		if is_undefined(movePriorityB[? currentState]) return true;

		//If move button priority is higher, set replace to true, else false
		replace = (movePriorityB[? inMove] > movePriorityB[? currentState]) ? true : false; 
		//If move type priority is higher, set replace to true, else false
		replace = (movePriorityT[? inMove] > movePriorityT[? currentState]) ? true : false; 
		
		return replace;
	}
}