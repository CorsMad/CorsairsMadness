

if state = 0
{
    t++;
    switch(t)
    {
        case 3:     image_index = 1;break;    
        case 6:     image_index = 2;break;    
        case 9:     image_index = 3;break;    
        case 12:     image_index = 4;break;    
        case 15:     image_index = 5;break;    
        case 18:     image_index = 6;break;    
        case 21:     image_index = 7;break;    
        case 24:     image_index = 8;break;    
        case 27:     image_index = 7;break;    
        case 30:     image_index = 8;break; 
        case 33:     image_index = 7;break;    
        case 36:     image_index = 8;break; 
        case 39:     image_index = 7;break;    
        case 42:     image_index = 8;break; 
        case 45:     
            image_index = 9;
            var l = instance_create_depth(x-46,y-52,depth-1,obj_boss_l2_bomb_small_pre);
            l.hspd = -2.5;
            instance_create_depth(x+46,y-52,depth-1,obj_boss_l2_bomb_small_pre);
            break; // чуть больше времени
        case 70:     image_index = 10;break;  
        case 130:    
            instance_create_depth(98-16,192-16,depth-1,obj_sfx_explosion);   
            instance_create_depth(98-16,192+16,depth-1,obj_sfx_explosion);   
            instance_create_depth(98+16,192-16,depth-1,obj_sfx_explosion);   
            instance_create_depth(98+16,192+16,depth-1,obj_sfx_explosion);   
            instance_create_depth(98,192,depth-1,obj_sfx_explosion);  
            
            instance_create_depth(382-16,192-16,depth-1,obj_sfx_explosion);   
            instance_create_depth(382-16,192+16,depth-1,obj_sfx_explosion);   
            instance_create_depth(382+16,192-16,depth-1,obj_sfx_explosion);   
            instance_create_depth(382+16,192+16,depth-1,obj_sfx_explosion);   
            instance_create_depth(382,192,depth-1,obj_sfx_explosion);   
            break;  
        case 150:   image_index = 11; break;  
        case 153:   image_index = 12; break; 
        case 180:   image_index = 13; break;  
        case 200:   image_index = 12; break; 
        case 220:   image_index = 13; break; 
        case 240:   image_index = 12; break; 
        case 260:   image_index = 14; break; 
        case 263:   image_index = 15; break; 
        case 266:   image_index = 16; break; 
        case 269: 
            instance_create_depth(98-16,192-16,depth-1,obj_sfx_explosion);   
            instance_create_depth(98-16,192+16,depth-1,obj_sfx_explosion);   
            instance_create_depth(98+16,192-16,depth-1,obj_sfx_explosion);   
            instance_create_depth(98+16,192+16,depth-1,obj_sfx_explosion);   
            instance_create_depth(98,192,depth-1,obj_sfx_explosion);  
            
            instance_create_depth(382-16,192-16,depth-1,obj_sfx_explosion);   
            instance_create_depth(382-16,192+16,depth-1,obj_sfx_explosion);   
            instance_create_depth(382+16,192-16,depth-1,obj_sfx_explosion);   
            instance_create_depth(382+16,192+16,depth-1,obj_sfx_explosion);   
            instance_create_depth(382,192,depth-1,obj_sfx_explosion);   
            break;  
        image_index = 17;
        break; 
        case 272:   
            
            instance_create_depth(x,y,depth,obj_boss_le2_phase3);
            instance_create_depth(0,0,0,obj_boss_l2_tower_phase3);
            instance_destroy(obj_boss_l2_tower_floor_left);       
            instance_destroy(obj_boss_l2_tower_floor_right);       
            instance_destroy(obj_boss_l2_tower_phase1);       
            instance_create_depth(0,0,depth,obj_boss_l2_stand_left);
    		instance_create_depth(0,0,depth,obj_boss_l2_stand_right);
    		instance_destroy();
            break; 
            
    }
   
     
    if t > 130 
    {
        if t mod 1 = 0
        {
            instance_create_depth(98+random_range(+16,-16),192+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;
            instance_create_depth(98+random_range(+16,-16),192+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;
            instance_create_depth(98+random_range(+16,-16),192+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;
            instance_create_depth(98+random_range(+16,-16),192+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;
            instance_create_depth(382+random_range(+16,-16),192+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;
            instance_create_depth(382+random_range(+16,-16),192+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;
            instance_create_depth(382+random_range(+16,-16),192+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;
            instance_create_depth(382+random_range(+16,-16),192+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;
        }
    }
}


