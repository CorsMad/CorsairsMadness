/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
	if obj_Player.bbox_bottom > y
	{
		mask_index = -1;	
	} else mask_index = spr_moving_platform1_mask;
}
