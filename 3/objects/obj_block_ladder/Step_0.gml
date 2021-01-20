/// @description Insert description here
// You can write your code in this editor
 sprite_index = spr_block_ladder;
 image_speed = 0;
if place_meeting(x,y-1,obj_block_ladder) && place_meeting(x,y+1,obj_block_ladder)
{
	image_index = 1;
}
if !place_meeting(x,y+1,obj_block_ladder)
{
	image_index = 2;
	mask_index = spr_blank;
}
if !place_meeting(x,y-1,obj_block_ladder) 
{
	image_index = 0;
}