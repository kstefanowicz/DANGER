///@description CopyArray
///@arg array1
function arrayCopy(argument0) {

	var arr1 = argument0;
	var outArray = array_create(array_length(arr1), 0);

	for (var i = 0; i < array_length(arr1); i++){
		outArray[i] = arr1[i];
	}


}
