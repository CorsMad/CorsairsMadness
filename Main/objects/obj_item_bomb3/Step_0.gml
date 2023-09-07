/// @description Insert description here
// You can write your code in this editor


a+=1;

if a = a_max && isDead = 0
{   
	isDead = 1;
    mask_index = noone;
	Speed = 0;
	instance_create_depth(x,y,-1,obj_sfx_explosion_bomb);
}

if place_meeting(x,y,obj_destructable_parent) && isDead = 0
{
	a = a_max;
	isDead = 1;
    mask_index = noone;
	Speed = 0;
	instance_create_depth(x,y,-1,obj_sfx_explosion_bomb);
	
}

if isDead = 1
{
    instance_create_depth(x,y,depth-1,obj_sfx_explosion_bomb);
    instance_destroy();
    var i1 = instance_create_depth(x,y,depth-1,obj_item_bomb3_part);
    var i2 = instance_create_depth(x,y,depth-1,obj_item_bomb3_part);
    i1.spd = -1;
    i2.spd = 1;
}

