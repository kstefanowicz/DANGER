/// Icons

// Directional Icon
draw_sprite(spr_arrows_strip08, currentDirection, window_get_width() - 160, 20);

// Button Icons
var buttonsActive = ds_list_create()
for (var i = 5; i >= 0; i--){
	if (currentButtons[i]){
		ds_list_insert(buttonsActive, 0 , i);
	}
}
for (var i = 0; i < ds_list_size(buttonsActive); i++){
	draw_sprite(spr_buttons, buttonsActive[| i], (window_get_width() - 140 + 20*i), 20); 
}
ds_list_destroy(buttonsActive);


// Running List
for (var i = 0; i < ds_list_size(input_chain_direction_unique); i++){
	draw_sprite(spr_arrows_strip08, input_chain_direction_unique[| i], 20, 40 + 20*i)
}

for (var i = 0; i < ds_list_size(input_chain_buttons_unique); i++){
	var buttonsActiveIcon = ds_list_create()
	var lineButtons = input_chain_buttons_unique[| i];
	for (var j = 5; j >= 0; j--){
		if (lineButtons[j]){
			ds_list_insert(buttonsActiveIcon, 0 , j);
		}
	}
	for (var j = 0; j < ds_list_size(buttonsActiveIcon); j++){
		draw_sprite(spr_buttons, buttonsActiveIcon[| j], 40 + 20*j, 40 + 20*i);
	}
	ds_list_destroy(buttonsActiveIcon);
}