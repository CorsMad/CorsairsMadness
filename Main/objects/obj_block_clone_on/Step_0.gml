/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_masked_clone)
{
	sprite_index  = noone;
	isOn = 0;
	alpha = 0.5;
} else 
	{
		isOn = 1;
		sprite_index = spr_block_mask;
		alpha = 1;
	}
