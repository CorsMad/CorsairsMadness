if state = 0 //  летающий , красныйлет, летающий
{
    t++;
    switch(t)
    {
        case 50: //летающий
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    var e4 = instance_create_depth(80,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(384,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            }            
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                instance_create_depth(obj_Player.x - 96*obj_Player.image_xscale,obj_Player.y,0,obj_molded_small_fastfly);      
            }
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    var e4 = instance_create_depth(80,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(384,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            }  
            break;
        case 350:
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
        state = 1;          
    }
    
}

if state = 1 // красныйлет, летающий, раннер,  красныйход, красный ход
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
                if obj_Player.x> 240
                {
                    var e4 = instance_create_depth(80,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(384,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            }            
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    var e3 = instance_create_depth(96,224,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(368,224,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;   
                }
            } 
            break;
        case 350:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    instance_create_depth(80,176,0,obj_molded_small_crawling_right);                    
                } else 
                {
                    instance_create_depth(384,176,0,obj_molded_small_crawling_left);  
                }
            }
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    instance_create_depth(80,176,0,obj_molded_small_crawling_right);                    
                } else 
                {
                    instance_create_depth(384,176,0,obj_molded_small_crawling_left);  
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

if state = 2 // летащий, раннер, летающий , раннер
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    var e4 = instance_create_depth(80,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(384,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            }            
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    var e3 = instance_create_depth(96,224,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(368,224,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;   
                }
            } 
            break;
        case 500:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    var e4 = instance_create_depth(80,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(384,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            }            
            break;
        case 600:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    var e3 = instance_create_depth(96,224,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(368,224,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;   
                }
            } 
            break;
        case 700:
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
