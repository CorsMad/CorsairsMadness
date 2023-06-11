depth = -y;

t++;

switch(t)
    {
        case 100:   image_index = 1;break;   
        case 105:   image_index = 2;break;   
        case 110:   image_index = 3;break;   
        case 115:   image_index = 4;break;   
        case 120:   image_index = 5;break; 
        case 125:   image_index = 0;
                    sprite_index = spr_boat_boss_shadow_idle;
                    image_speed = 1;
                    break;
        case 200:   
                    var t1 = instance_create_depth(416,112,-112,obj_boat_boss_shadow_utent_arrive);
                    var t2 = instance_create_depth(416,240,-240,obj_boat_boss_shadow_dtent_arrive); 
                    t1.t = -400;
                    t2.t = -650;
                    instance_create_depth(x,y,depth,obj_boat_boss_shadow_1); 
                    instance_destroy();
                    break;                    
    }
    

    
