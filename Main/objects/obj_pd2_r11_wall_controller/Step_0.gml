if state = 0 //  летающий , летающий, красныйлет, красныйлет
{
    t++;
    switch(t)
    {
        case 50: //летающий
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e4 = instance_create_depth(368,96,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(544,96,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            }            
            break;
        case 200://летающий
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e4 = instance_create_depth(368,96,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(544,96,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            }            
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                instance_create_depth(obj_Player.x - 96*obj_Player.image_xscale,obj_Player.y,0,obj_molded_small_fastfly);      
            }
            break;
        case 300:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e4 = instance_create_depth(352,192,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e4 = instance_create_depth(576,224,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_run;   
                }
            }                       
            break;
        case 400:
            state = 0.5;
            t = 0;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_yellow_flying) && !instance_exists(obj_molded_yellow_run) &&
    !instance_exists(obj_crawling_molded_l) && !instance_exists(obj_flying_molded)
    {
        state = 3;          
    }
    
}

if state = 1 // летающий, раннер, красныйход,  раннер, красныйход
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e4 = instance_create_depth(368,96,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(544,96,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            }            
            break;
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e4 = instance_create_depth(352,192,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e4 = instance_create_depth(576,224,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_run;   
                }
            }                       
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    instance_create_depth(176,112,0,obj_molded_small_crawling_right);                    
                } else 
                {
                    instance_create_depth(704,112,0,obj_molded_small_crawling_left);  
                }
            }
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e4 = instance_create_depth(352,192,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e4 = instance_create_depth(576,224,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_run;   
                }
            }                       
            break;
        case 350:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    instance_create_depth(176,112,0,obj_molded_small_crawling_right);                    
                } else 
                {
                    instance_create_depth(704,112,0,obj_molded_small_crawling_left);  
                }
            }
            break;
        case 500:
            state = 1.5;
            t = 0;
            break;
    }   
    
}

if state = 1.5
{
    if !instance_exists(obj_molded_yellow_run) && !instance_exists(obj_molded_yellow_flying) &&
    !instance_exists(obj_crawling_molded) && !instance_exists(obj_crawling_molded_l)
    {
        state = 2;   
    }
}

if state = 2 // красныйлет, красныйлет, летающий , раннер, раннер
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                instance_create_depth(obj_Player.x - 96*obj_Player.image_xscale,obj_Player.y,0,obj_molded_small_fastfly);      
            }           
            break;
        case 100:
            if instance_exists(obj_Player)
            {
                instance_create_depth(obj_Player.x - 96*obj_Player.image_xscale,obj_Player.y,0,obj_molded_small_fastfly);      
            }
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e4 = instance_create_depth(368,96,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(544,96,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            }                       
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e4 = instance_create_depth(352,192,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e4 = instance_create_depth(576,224,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_run;   
                }
            }                                  
            break;
        case 350:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e4 = instance_create_depth(352,192,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e4 = instance_create_depth(576,224,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_run;   
                }
            }                                  
            break;
        case 450:
            t = 0;
            state = 2.5;
            break;
    }      
}

if state = 2.5
{    
    if !instance_exists(obj_molded_yellow_run) && 
    !instance_exists(obj_crawling_molded) && !instance_exists(obj_crawling_molded_l) &&
    !instance_exists(obj_molded_yellow_flying) && !instance_exists(obj_fastfly_molded)
    {
        state = 3;  
    }
}

if state = 3
{
    t++;
    if t > 50
    {
         if instance_exists(obj_wall_trigger_tp)
        {
            obj_wall_trigger_tp.state = 2;
            obj_wall_trigger_tp.t = 0;
        }   
        instance_destroy();
    }
}
