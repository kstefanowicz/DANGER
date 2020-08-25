// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createHitbox(xScale, yScale, xOffset, yOffset, life, xHit, hitStun){
	_hitbox = instance_create_layer(x,y,"Hitboxes", obj_hitbox);
	_hitbox.owner = id;
	_hitbox.image_xscale = xScale;
	_hitbox.image_yscale = yScale;
	_hitbox.xOffset = xOffset;
	_hitbox.yOffset = yOffset;
	_hitbox.life = life;
	_hitbox.xHit = xHit;
	_hitbox.hitStun = hitStun;

	return _hitbox;
}