/// @description scr_define_moves
function scr_define_moves() {

	var fireballLP = [outputsD.down, outputsD.downRight, outputsD.right, [1,0,0,0,0,0]];
	var fireballMP = [outputsD.down, outputsD.downRight, outputsD.right, [0,1,0,0,0,0]];
	var fireballHP = [outputsD.down, outputsD.downRight, outputsD.right, [0,0,1,0,0,0]];

	var hurricaneKickLK = [outputsD.down, outputsD.downLeft, outputsD.left, [0,0,0,1,0,0]];
	var hurricaneKickMK = [outputsD.down, outputsD.downLeft, outputsD.left, [0,0,0,0,1,0]];
	var hurricaneKickHK = [outputsD.down, outputsD.downLeft, outputsD.left, [0,0,0,0,0,1]];

	var dragonPunchLP = [outputsD.right, outputsD.down, outputsD.downRight, [1, 0, 0, 0, 0, 0]];
	var dragonPunchMP = [outputsD.right, outputsD.down, outputsD.downRight, [0, 1, 0, 0, 0, 0]];
	var dragonPunchHP = [outputsD.right, outputsD.down, outputsD.downRight, [0, 0, 1, 0, 0, 0]];


	movesGrid = ds_grid_create(9,2);
			
	movesGrid[# 0, 0] = fireballLP;
	movesGrid[# 0, 1] = "Fireball LP"

	movesGrid[# 1, 0] = fireballMP;
	movesGrid[# 1, 1] = "Fireball MP"

	movesGrid[# 2, 0] = fireballHP;
	movesGrid[# 2, 1] = "Fireball HP"

	movesGrid[# 3, 0] = hurricaneKickLK;
	movesGrid[# 3, 1] = "Hurricane Kick LK"

	movesGrid[# 4, 0] = hurricaneKickMK;
	movesGrid[# 4, 1] = "Hurricane Kick MK"

	movesGrid[# 5, 0] = hurricaneKickHK;
	movesGrid[# 5, 1] = "Hurricane Kick HK"

	movesGrid[# 6, 0] = dragonPunchLP;
	movesGrid[# 6, 1] = "Dragon Punch LP"

	movesGrid[# 7, 0] = dragonPunchMP;
	movesGrid[# 7, 1] = "Dragon Punch MP"

	movesGrid[# 8, 0] = dragonPunchHP;
	movesGrid[# 8, 1] = "Dragon Punch HP"


}
