defineChains()

defineMoves();
currentMove = 15;

// enum for directional outputs for easier reference
enum outputsD {
	up = "0", down = "1", 
	left = "2", right = "3", 
	upLeft = "4", upRight = "5", 
	downLeft = "6", downRight = "7", 
	neutral = "8"
};

// Initial directional input
currentDirection = outputsD.neutral;
// String conversions of directional index=es
directionStr = ["U", "D", "L", "R", "U/L", "U/R", "D/L", "D/R", "N"]

// Initial buttons input
currentButtons = [false, false, false, false, false, false]
// String conversion of buttons indexes
currentButtonsStr = ["LP", "MP", "HP", "LK", "MK", "HK"]

// Arrow by Poups from the Noun Project
// Fist by Andrew Doane from the Noun Project
// Foot by Adrien Coquet from the Noun Project