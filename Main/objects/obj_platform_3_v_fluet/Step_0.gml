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
    t_anim++; 
    if t_anim = 20 index = 1; 
    if t_anim = 40 index = 2; 
    if t_anim = 60 {index = 0; t_anim = 0;}

    if position_meeting(x,y,obj_moving_platforms_limiter)
    {
    	spd = -spd;
    }
}

if fluetOn = 0{
    t_anim = 0;
    index = 0;   
}

if place_meeting(x,y-2,obj_Player)
{
	obj_Player.y = y;
}


if place_meeting(x,y,obj_platform_destroyer)
{
	instance_destroy();	
}


