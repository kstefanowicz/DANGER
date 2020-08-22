// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function defineMovesKen(){	
	
	enum statesSpecial{fireballL, fireballM, fireballH,
			uppercutL, uppercutM, uppercutH,
			tatsuLK, tatsuMK, tatsuHK}
#region Specials
	var fireballLP = [outputsD.down, dir_downToward, dir_toward, [1,0,0,0,0,0]];
	var fireballMP = [outputsD.down, dir_downToward, dir_toward, [0,1,0,0,0,0]];
	var fireballHP = [outputsD.down, dir_downToward, dir_toward, [0,0,1,0,0,0]];

	var hurricaneKickLK = [outputsD.down, dir_downBack, dir_back, [0,0,0,1,0,0]];
	var hurricaneKickMK = [outputsD.down, dir_downBack, dir_back, [0,0,0,0,1,0]];
	var hurricaneKickHK = [outputsD.down, dir_downBack, dir_back, [0,0,0,0,0,1]];

	var dragonPunchLP = [dir_toward, outputsD.down, dir_downToward, [1, 0, 0, 0, 0, 0]];
	var dragonPunchMP = [dir_toward, outputsD.down, dir_downToward, [0, 1, 0, 0, 0, 0]];
	var dragonPunchHP = [dir_toward, outputsD.down, dir_downToward, [0, 0, 1, 0, 0, 0]];
#endregion

	movesListSpecial = ["Tatsu H"];

	ds_map_add(movesInput, "Tatsu H", hurricaneKickHK);
	ds_map_add(movesSprite, "Tatsu H", kenTatsuH);
	ds_map_add(movesState, "Tatsu H", "Tatsu HK");
	ds_map_add(moveLength, "Tatsu H", 127);
}