/// @description defineMoves
function defineMoves() {
	
	inputBufferSize = 10;
	
	enum buttonPriority{LP, LK, MP, MK, HP, HK}
	enum typePriority{normal, command, special, super};
	
#region Normals
	var normalLP = [[1,0,0,0,0,0]];
	var normalMP = [[0,1,0,0,0,0]];
	var normalHP = [[0,0,1,0,0,0]];
	var normalLK = [[0,0,0,1,0,0]];
	var normalMK = [[0,0,0,0,1,0]];
	var normalHK = [[0,0,0,0,0,1]];
	
	
#endregion
	
#region Specials
	var fireballLP = [outputsD.down, outputsD.downRight, outputsD.right, [1,0,0,0,0,0]];
	var fireballMP = [outputsD.down, outputsD.downRight, outputsD.right, [0,1,0,0,0,0]];
	var fireballHP = [outputsD.down, outputsD.downRight, outputsD.right, [0,0,1,0,0,0]];

	var hurricaneKickLK = [outputsD.down, outputsD.downLeft, outputsD.left, [0,0,0,1,0,0]];
	var hurricaneKickMK = [outputsD.down, outputsD.downLeft, outputsD.left, [0,0,0,0,1,0]];
	var hurricaneKickHK = [outputsD.down, outputsD.downLeft, outputsD.left, [0,0,0,0,0,1]];

	var dragonPunchLP = [outputsD.right, outputsD.down, outputsD.downRight, [1, 0, 0, 0, 0, 0]];
	var dragonPunchMP = [outputsD.right, outputsD.down, outputsD.downRight, [0, 1, 0, 0, 0, 0]];
	var dragonPunchHP = [outputsD.right, outputsD.down, outputsD.downRight, [0, 0, 1, 0, 0, 0]];
#endregion

#region movesGrid
	movesGrid = ds_grid_create(16,4);
			
	movesGrid[# 0, 0] = fireballLP;
	movesGrid[# 0, 1] = "Fireball LP"
	movesGrid[# 0, 2] = buttonPriority.LP;
	movesGrid[# 0, 3] = typePriority.special;

	movesGrid[# 1, 0] = fireballMP;
	movesGrid[# 1, 1] = "Fireball MP"
	movesGrid[# 1, 2] = buttonPriority.MP;
	movesGrid[# 1, 3] = typePriority.special;

	movesGrid[# 2, 0] = fireballHP;
	movesGrid[# 2, 1] = "Fireball HP"
	movesGrid[# 2, 2] = buttonPriority.HP;
	movesGrid[# 2, 3] = typePriority.special;

	movesGrid[# 3, 0] = hurricaneKickLK;
	movesGrid[# 3, 1] = "Hurricane Kick LK"
	movesGrid[# 3, 2] = buttonPriority.LK;
	movesGrid[# 3, 3] = typePriority.special;

	movesGrid[# 4, 0] = hurricaneKickMK;
	movesGrid[# 4, 1] = "Hurricane Kick MK"
	movesGrid[# 4, 2] = buttonPriority.MK;
	movesGrid[# 4, 3] = typePriority.special;

	movesGrid[# 5, 0] = hurricaneKickHK;
	movesGrid[# 5, 1] = "Hurricane Kick HK"
	movesGrid[# 5, 2] = buttonPriority.HK;
	movesGrid[# 5, 3] = typePriority.special;

	movesGrid[# 6, 0] = dragonPunchLP;
	movesGrid[# 6, 1] = "Dragon Punch LP"
	movesGrid[# 6, 2] = buttonPriority.LP;
	movesGrid[# 6, 3] = typePriority.special;

	movesGrid[# 7, 0] = dragonPunchMP;
	movesGrid[# 7, 1] = "Dragon Punch MP"
	movesGrid[# 7, 2] = buttonPriority.MP;
	movesGrid[# 7, 3] = typePriority.special;

	movesGrid[# 8, 0] = dragonPunchHP;
	movesGrid[# 8, 1] = "Dragon Punch HP"
	movesGrid[# 8, 2] = buttonPriority.HP;
	movesGrid[# 8, 3] = typePriority.special;
	
	movesGrid[# 9, 0] = normalLP;
	movesGrid[# 9, 1] = "Jab";
	movesGrid[# 9, 2] = buttonPriority.LP;
	movesGrid[# 9, 3] = typePriority.normal;
	
	movesGrid[# 10, 0] = normalMP;
	movesGrid[# 10, 1] = "Strong";
	movesGrid[# 10, 2] = buttonPriority.MP;
	movesGrid[# 10, 3] = typePriority.normal;
	
	movesGrid[# 11, 0] = normalHP;
	movesGrid[# 11, 1] = "Fierce";
	movesGrid[# 11, 2] = buttonPriority.HP;
	movesGrid[# 11, 3] = typePriority.normal;
	
	movesGrid[# 12, 0] = normalLK;
	movesGrid[# 12, 1] = "Short";
	movesGrid[# 12, 2] = buttonPriority.LK;
	movesGrid[# 12, 3] = typePriority.normal;
	
	movesGrid[# 13, 0] = normalMK;
	movesGrid[# 13, 1] = "Forward";
	movesGrid[# 13, 2] = buttonPriority.MK;
	movesGrid[# 13, 3] = typePriority.normal;
	
	movesGrid[# 14, 0] = normalHK;
	movesGrid[# 14, 1] = "Roundhouse";
	movesGrid[# 14, 2] = buttonPriority.HK;
	movesGrid[# 14, 3] = typePriority.normal;
	
	movesGrid[# 15, 0] = -1;
	movesGrid[# 15, 1] = "Neutral";
	movesGrid[# 15, 2] = -1;
	movesGrid[# 15, 3] = -1;
#endregion

}
