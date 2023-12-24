if state = 0 
{
    t++;
    switch(t)
    {
        case 50:
        if instance_exists(obj_Player)
        {
            if obj_Player.x> 240
            {
                var e1 = instance_create_depth(96,144,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_yellow_flying;
                
            } else 
            {
                var e1 = instance_create_depth(384,144,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_yellow_flying;   
            }
        }        
            break;
            
        case 200:
            {
            if obj_Player.x> 240
            {
                var e1 = instance_create_depth(96,144,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_yellow_flying;
                
            } else 
            {
                var e1 = instance_create_depth(384,144,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_yellow_flying;   
            }
            }  
            break;
            
            
            
        case 300:
            state = 0.5;
            t = 0;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_yellow_flying)
    {
        state = 1;          
    }
}

if state = 1
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    var e2 = instance_create_depth(96,144,0,obj_molded_big_spawner_n);
                    e2.y_cr = 16;
                    e2.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e2 = instance_create_depth(384,144,0,obj_molded_big_spawner_n);
                    e2.y_cr = 16;
                    e2.obj_cr = obj_molded_yellow_flying;   
                }
            }    
            break;
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    instance_create_depth(96,192,0,obj_molded_small_fastfly);                    
                } else 
                {
                    instance_create_depth(384,192,0,obj_molded_small_fastfly);  
                }
            }
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    var e3 = instance_create_depth(80,224,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(400,224,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;   
                }
            }  
            break;
        case 300:
            state = 2.5;
            t = 0;
            break;
    }   
    
}

if state = 1.5
{
    if !instance_exists(obj_molded_yellow_flying) && !instance_exists(obj_molded_yellow_run)
    {
        state = 2;   
    }
}

if state = 2 
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    var e4 = instance_create_depth(96,144,0,obj_molded_big_spawner_n);
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
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    instance_create_depth(96,192,0,obj_molded_small_fastfly);                    
                } else 
                {
                    instance_create_depth(384,192,0,obj_molded_small_fastfly);  
                }
            }               
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    var e3 = instance_create_depth(80,224,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(400,224,0,obj_molded_big_spawner_n);
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
                    instance_create_depth(96,192,0,obj_molded_small_fastfly);                    
                } else 
                {
                    instance_create_depth(384,192,0,obj_molded_small_fastfly);  
                }
            }
            
            break;
        case 600:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    instance_create_depth(128,80,0,obj_molded_small_crawling_right);                    
                } else 
                {
                    instance_create_depth(352,80,0,obj_molded_small_crawling_left);  
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
    !instance_exists(obj_crawling_molded) && !instance_exists(obj_fastfly_molded) &&
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
