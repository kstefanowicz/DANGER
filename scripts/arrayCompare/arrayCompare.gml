///@description compareArray
///@arg arr1
///@arg arr2
function arrayCompare(argument0, argument1) {

	var arr0 = argument0;
	var arr1 = argument1; 

	if (array_length(arr0) != array_length(arr1)){ return false;}

	for (var i = 0; i < array_length(arr0); i++){
		if (arr0[i] != arr1[i]) {return false;}
	}

	return true;


}
