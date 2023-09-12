depth = -y;

t++;

switch(t)
    {
        case 100:   image_index = 1;break;   
        case 105:   image_index = 2;
		instance_create_depth(x,y+32,depth+1,obj_boat_boss_shadow_water_main)
		break;   
        case 110:   image_index = 3;break;   
        case 115:   image_index = 4;break;   
        case 120:   image_index = 5;break; 
        case 125:   image_index = 0;
                    sprite_index = spr_boat_boss_shadow_idle;
                    image_speed = 1;
                    break;                  
    }
    

    
