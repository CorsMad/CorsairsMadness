/// @description Insert description here
// You can write your code in this editor
 
 //animtion
 sprite_index = spr_block_ladder;
if instance_exists(obj_Player)
{
	depth = obj_Player.depth+1;	
}
image_index = 2;
image_speed = 0;