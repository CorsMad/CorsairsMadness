/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
    if isOn = 1
    {
        if t < 14 t++;
        switch(t)
        {
            case 1: subimg = 1;break;   
            case 3: subimg = 2;break;   
            case 5: subimg = 3;break;   
            case 7: subimg = 4;break;   
            case 9: subimg = 5;break;   
            case 11:subimg = 6;break;   
            case 13:subimg = 7;break;  
            case 14:
                instance_create_depth(x,y,depth,obj_platform_3_v_e_d1_boss_mov);
                instance_destroy();
                break;
               
        }
    	if obj_Player.bbox_bottom > y && subimg = 7
    	{
    		mask_index = -1;	
    	} else mask_index = spr_moving_platform3_mask;
    }
    if isOn = 0
    {
        mask_index = -1;   
    }
    
    
    
    
    
    
}

