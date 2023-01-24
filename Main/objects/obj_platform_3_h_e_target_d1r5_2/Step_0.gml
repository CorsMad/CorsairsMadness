/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
	if obj_Player.bbox_bottom > y
	{
		mask_index = -1;	
	} else mask_index = spr_moving_platform3_mask;
}
/*
if isEnabled = 0 && place_meeting(x,y-1,obj_Player)
{
	isEnabled = 1;	
}
*/
if isEnabled = 1
{
	x+=spd;
	if position_meeting(x,y,obj_moving_platforms_limiter)
	{
		spd = -spd;
	}

	if place_meeting(x,y-1,obj_Player)
	{
		obj_Player.carryspd = spd;
	}
}


if place_meeting(x,y,obj_platform_destroyer)
{
	instance_destroy();	
}

