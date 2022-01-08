/// @description Insert description here
// You can write your code in this editor
Center_X = obj_Player.x; // x of orbital center
Center_Y = obj_Player.y-16; // y of orbital center



//a+=1;

if a = 180 && isDead = 0
{   
	isDead = 1;
    mask_index = spr_blank;
	Speed = 0;
	instance_create_depth(x,y,-1,obj_sfx_explosion_bomb);
}

if place_meeting(x,y,obj_destructable_parent) && isDead = 0
{
	a = 180;
	isDead = 1;
    mask_index = spr_blank;
	Speed = 0;
	instance_create_depth(x,y,-1,obj_sfx_explosion_bomb);
	
}

if a = 190
{
	instance_destroy();	
}
