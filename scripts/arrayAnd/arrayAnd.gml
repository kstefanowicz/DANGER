/// @description arrayAnd(arr0, arr1)
/// @arg arr0
/// @arg arr1
function arrayAnd() {

	var arr0 = argument[0];
	var arr1 = argument[1];
	
	if (!is_array(arr0)){exit};
	if (!is_array(arr1)){exit};

	var arrOut = array_create(array_length(arr0), 0);

	for (var i = 0; i < array_length(arr0); i++){
		if arr0[i] and arr1[i]{
			arrOut[i] = true;
		}
	}

	return arrOut;


}
