/// @description Insert description here
// You can write your code in this editor


if turn = 0
{
    t++;
    if t mod 10 = 0 
    {
        instance_create_depth(x+random_range(4,44),y+random_range(4,12),depth-1,obj_sfx_boss1_stars);
        t = 0;
    }
	sprite_index = noone;
} else 
	{
        if instance_exists(obj_Player)
        {
        	if obj_Player.bbox_bottom > y
        	{
        		mask_index = noone;	
        	} else mask_index = spr_platform_fol_enable;
        }

		//sprite_index = spr_platform_fol_enable;
		if alpha < 1 alpha+=0.1;
	}



