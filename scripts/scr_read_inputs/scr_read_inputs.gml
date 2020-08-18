/// Determining the input for this frame
function scr_read_inputs() {

	// Check if left and/or right are being pressed
	// and determine logic of resulting horizontal direction (L + R = N)
	var ll = keyboard_check(ord(global.bindLeft));
	var rr = keyboard_check(ord(global.bindRight));
	var outH = outputsD.neutral;
	if (ll && rr){
		outH = outputsD.neutral;
	} else if (ll){
		outH = outputsD.left;
	} else if (rr){
		outH = outputsD.right;	
	}

	// Check if up and/or down are being pressed
	// and determine logic of resulting vertical direction (U + D = U)
	var uu = keyboard_check(ord(global.bindUp));
	var dd = keyboard_check(ord(global.bindDown));
	var outV = outputsD.neutral;
	if (uu && dd){
		outV = outputsD.up;
	} else if (dd){
		outV = outputsD.down;
	} else if (uu){
		outV = outputsD.up;	
	}


	// Determine logic of final 8-way direction from combination
	// of horizontal and vertical directions
	var outD = outputsD.neutral;
	if (outH == outputsD.left && outV == outputsD.up){
		outD = outputsD.upLeft;
	} else if (outH == outputsD.left && outV == outputsD.neutral){
		outD = outputsD.left;
	} else if (outH == outputsD.left && outV == outputsD.down){
		outD = outputsD.downLeft;
	} else if (outH == outputsD.neutral && outV == outputsD.down){
		outD = outputsD.down;
	} else if (outH == outputsD.right && outV == outputsD.down){
		outD = outputsD.downRight;
	} else if (outH == outputsD.right && outV == outputsD.neutral){
		outD = outputsD.right;
	} else if (outH == outputsD.right && outV == outputsD.up){
		outD = outputsD.upRight;
	} else if (outH == outputsD.neutral && outV == outputsD.up){
		outD = outputsD.up;
	}
	currentDirection = outD;


	// Check to see if each button is being pressed
	if (keyboard_check(ord(global.bindLP))){
		currentButtons[0] = true;
	} else currentButtons[0] = false;
	if (keyboard_check(ord(global.bindMP))){
		currentButtons[1] = true;
	} else currentButtons[1] = false;
	if (keyboard_check(ord(global.bindHP))){
		currentButtons[2] = true;
	} else currentButtons[2] = false;
	if (keyboard_check(ord(global.bindLK))){
		currentButtons[3] = true;
	} else currentButtons[3] = false;
	if (keyboard_check(ord(global.bindMK))){
		currentButtons[4] = true;
	} else currentButtons[4] = false;
	if (keyboard_check(ord(global.bindHK))){
		currentButtons[5] = true;
	} else currentButtons[5] = false;


}
