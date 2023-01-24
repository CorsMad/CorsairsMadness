/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
	if obj_Player.bbox_bottom > y
	{
		mask_index = -1;	
	} else mask_index = spr_moving_platform3_mask;
}



if place_meeting(x,y-2,obj_Player)
{
	obj_Player.y = y;
}


if place_meeting(x,y,obj_platform_destroyer)
{
	instance_destroy();	
}

// Перемещение
//y+=spd;

