/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
	if obj_Player.bbox_bottom > y
	{
		mask_index = -1;	
	} else mask_index = spr_moving_platform3_mask;
}

if instance_exists(obj_Player)
{
    if obj_Player.isFlueting = 1 && obj_Player.fluettimer > 60
    {
        fluetOn = 1;   
    } else fluetOn = 0;
}

if fluetOn = 1
{
y+=spd;
    if position_meeting(x,y,obj_moving_platforms_limiter)
    {
    	spd = -spd;
    }
}
if place_meeting(x,y-2,obj_Player)
{
	obj_Player.y = y;
}


if place_meeting(x,y,obj_platform_destroyer)
{
	instance_destroy();	
}


