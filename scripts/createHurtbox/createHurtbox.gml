// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createHurtbox(xscale, yscale, xoffset, yoffset){
	_hurtbox = instance_create_layer(x, y, "Hitboxes", obj_hurtbox);
	_hurtbox.owner = id;
	_hurtbox.image_xscale = xscale;
	_hurtbox.image_yscale = yscale;
	_hurtbox.xOffset = xoffset;
	_hurtbox.yOffset = yoffset;

	return _hurtbox;
}