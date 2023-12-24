if state = 0 // красныйход, летающий, раннер, красныйход
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 224
                    {
                        instance_create_depth(96,80,0,obj_molded_small_crawling_right);                    
                    } else 
                    {
                        instance_create_depth(352,80,0,obj_molded_small_crawling_left);  
                    }
            }        
            break;
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 224
                {
                    var e4 = instance_create_depth(96,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(352,160,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            }            
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 224
                {
                    var e3 = instance_create_depth(96,176,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(352,192,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;   
                }
            }  
            break;
        case 500:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 224
                    {
                        instance_create_depth(96,80,0,obj_molded_small_crawling_right);                    
                    } else 
                    {
                        instance_create_depth(352,80,0,obj_molded_small_crawling_left);  
                    }
            }   
            break;
        case 600:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 224
                {
                    var e3 = instance_create_depth(96,176,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(352,192,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;   
                }
            }  
            break;
        case 700:
            state = 0.5;
            t = 0;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_yellow_flying) && !instance_exists(obj_molded_yellow_run) &&
    !instance_exists(obj_crawling_molded_l) && !instance_exists(obj_crawling_molded)
    {
        state = 3;          
    }
    
}

if state = 1 // раннер раннер раннер красныйлет
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 224
                {
                    var e3 = instance_create_depth(96,176,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(352,192,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;   
                }
            }  
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 224
                {
                    var e3 = instance_create_depth(96,176,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(352,192,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;   
                }
            }  
            break;
        case 550:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 224
                {
                    var e3 = instance_create_depth(96,176,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(352,192,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;   
                }
            }  
            break;
        case 750:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 224
                    {
                        instance_create_depth(112,128,0,obj_molded_small_fastfly);                    
                    } else 
                    {
                        instance_create_depth(336,128,0,obj_molded_small_fastfly);  
                    }
            }  
            break;
            
        case 850:
            state = 1.5;
            t = 0;
            break;
    }   
    
}

if state = 1.5
{
    if !instance_exists(obj_molded_yellow_run) && !instance_exists(obj_fastfly_molded)
    {
        state = 2;   
    }
}

if state = 2 // красныйход летающий красныйход раннер
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 224
                    {
                        instance_create_depth(96,80,0,obj_molded_small_crawling_right);                    
                    } else 
                    {
                        instance_create_depth(352,80,0,obj_molded_small_crawling_left);  
                    }
            }                    
            break;
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 224
                {
                    var e4 = instance_create_depth(96,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(352,160,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            }            
            break;
        case 600:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 224
                    {
                        instance_create_depth(96,80,0,obj_molded_small_crawling_right);                    
                    } else 
                    {
                        instance_create_depth(352,80,0,obj_molded_small_crawling_left);  
                    }
            }   
            break;
        case 700:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 224
                {
                    var e3 = instance_create_depth(96,176,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(352,192,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;   
                }
            }  
            break;
        case 800:
            t = 0;
            state = 2.5;
            break;
    }      
}

if state = 2.5
{    
    if !instance_exists(obj_molded_yellow_run) && 
    !instance_exists(obj_crawling_molded) && !instance_exists(obj_crawling_molded_l) &&
    !instance_exists(obj_molded_yellow_flying)
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
