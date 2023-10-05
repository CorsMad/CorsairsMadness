/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
	if obj_Player.bbox_bottom > y
	{
		mask_index = noone;	
	} else mask_index = spr_moving_platform3_mask;
}


if imal <1 {
    imal+=0.1
    t++;
    if t mod 2 = 0{
        instance_create_depth(x+random_range(-20,20),y+random_range(4,12),depth-1,obj_sfx_desert_boss1_stars) ;  
    }
}

