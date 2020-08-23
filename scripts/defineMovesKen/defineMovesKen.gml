// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function defineMovesKen(){	

#region Inputs

#region Movement
var dash = [dir_toward, outputsD.neutral, dir_toward];

#endregion

#region Normals
	var normalLP = [[1,0,0,0,0,0]];
	var normalMP = [[0,1,0,0,0,0]];
	var normalHP = [[0,0,1,0,0,0]];
	var normalLK = [[0,0,0,1,0,0]];
	var normalMK = [[0,0,0,0,1,0]];
	var normalHK = [[0,0,0,0,0,1]];
	
	
#endregion			
			
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

#endregion

	movesList = ["Dash", 
		"Stand LP", "Stand MP", "Stand HP", "Stand LK", "Stand MK", "Stand HK",
		"Fireball L", "Fireball M", "Fireball H", 
		"Tatsu L", "Tatsu M", "Tatsu H"];
	
#region Movement

	createMove("Dash", dash, kenDash, 17, 32, 1, 1);

#endregion
		
		
#region Normals

	createMove("Stand LP", normalLP, kenLPfar, 15, 12, buttonPriority.LP, typePriority.normal);
	createMove("Stand MP", normalMP, kenMPfar, 31, 14, buttonPriority.MP, typePriority.normal);
	createMove("Stand HP", normalHP, kenHPfar, 25, 60, buttonPriority.HP, typePriority.normal);
	createMove("Stand LK", normalLK, kenLKfar, 21, 14, buttonPriority.LK, typePriority.normal);
	createMove("Stand MK", normalMK, kenMKfar, 49, 14, buttonPriority.MK, typePriority.normal);
	createMove("Stand HK", normalHK, kenHKfar, 42, 14, buttonPriority.HK, typePriority.normal);

#endregion
	

#region Specials
	#region Tatsu
		createMove("Tatsu L", hurricaneKickLK, kenTatsuL, 48, 16, buttonPriority.LK, typePriority.special);
		createMove("Tatsu M", hurricaneKickMK, kenTatsuM, 82, 16, buttonPriority.MK, typePriority.special);
		createMove("Tatsu H", hurricaneKickHK, kenTatsuH, 120, 16, buttonPriority.HK, typePriority.special);
	
	#endregion
	
	#region Fireball
	
		createMove("Fireball L", fireballLP, kenFireball, 55, 16, buttonPriority.LP, typePriority.special);
		createMove("Fireball M", fireballMP, kenFireball, 55, 16, buttonPriority.LP, typePriority.special);
		createMove("Fireball H", fireballHP, kenFireball, 55, 16, buttonPriority.LP, typePriority.special);
	
	#endregion
	#region Dragon Punch
	
	#endregion
#endregion
}