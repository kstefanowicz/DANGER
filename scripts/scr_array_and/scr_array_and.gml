/// @description scr_array_and(arr0, arr1)
/// @arg arr0
/// @arg arr1
function scr_array_and() {

	var arr0 = argument[0];
	var arr1 = argument[1];

	var arrOut = array_create(array_length_1d(arr0), 0);

	for (var i = 0; i < array_length_1d(arr0); i++){
		if arr0[i] and arr1[i]{
			arrOut[i] = true;
		}
	}

	return arrOut;


}
