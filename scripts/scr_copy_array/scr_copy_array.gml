///@description CopyArray
///@arg array1
function scr_copy_array(argument0) {

	var arr1 = argument0;
	var outArray = array_create(array_length_1d(arr1), 0);

	for (var i = 0; i < array_length_1d(arr1); i++){
		outArray[i] = arr1[i];
	}


}
