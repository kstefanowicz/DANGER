///@description compareArray
///@arg arr1
///@arg arr2
function scr_compare_array(argument0, argument1) {

	var arr0 = argument0;
	var arr1 = argument1; 

	if (array_length_1d(arr0) != array_length_1d(arr1)){ return false;}

	for (var i = 0; i < array_length_1d(arr0); i++){
		if (arr0[i] != arr1[i]) {return false;}
	}

	return true;


}
