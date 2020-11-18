/// @description Insert description here
// You can write your code in this editorf 
if place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_destrutable_block_mask)
{
	instance_create_depth(x,y,-1,obj_destrutable_block_mask);
	instance_destroy();	
}

