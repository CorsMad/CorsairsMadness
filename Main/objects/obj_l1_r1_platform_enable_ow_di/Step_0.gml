/// @description Insert description here
// You can write your code in this editor


switch(turn)
{
    case 0:
        t++;
        mask_index = noone;
        if t mod 10 = 0 
        {
            instance_create_depth(x+random_range(4,44),y+random_range(4,12),depth-1,obj_sfx_boss1_stars);
            t = 0;
        }
    	sprite_index = noone;
        break;
    case 1:
        if t < 20 {if alpha < 1 alpha+=0.1;}
        t++;
        if t > 350
        {
            if alpha > 0 alpha-=0.1;   
            if alpha <=0 {
                turn = 0;
                t = 0;
            }
        }
        switch(t)
        {
            case 200: alpha = 0.5;break;  
            case 225: alpha = 1;break;  
            case 250: alpha = 0.5;break;  
            case 275: alpha = 1;break;  
            case 300: alpha = 0.5;break;  
            case 325: alpha = 1;break;  
        }
        
        
        
        if instance_exists(obj_Player)
        {
            if obj_Player.bbox_bottom > y
            {
            	mask_index = noone;	
            } else mask_index = spr_platform_fol_enable;
        } 
        break;
}

/*
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



