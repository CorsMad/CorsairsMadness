if state = 0 // Flyer redfly Flyer Spearman
{
    t++;
    switch(t)
    {
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(144,112,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                    
                
                } else 
                {
                    var e1 = instance_create_depth(416,80,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                    
                }
            }  
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    instance_create_depth(192,160,0,obj_molded_small_fastfly)
                } else 
                {
                    instance_create_depth(400,176,0,obj_molded_small_fastfly)
                }
            }  
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(144,112,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                    
                
                } else 
                {
                    var e1 = instance_create_depth(416,80,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                    
                }
            } 
            break;
        case 500:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(128,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16;
                
                } else 
                {
                    var e1 = instance_create_depth(416,240,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16;
                }
            } 
            break;
        case 600:
            state = 0.5;
            t = 0;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_snow_spearman) && !instance_exists(obj_molded_snow_flying)
    && !instance_exists(obj_fastfly_molded)
    {
        state = 1;          
    }
}

if state = 1 // Flyer Spearman redfly  redwalk
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(144,112,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                    
                
                } else 
                {
                    var e1 = instance_create_depth(416,80,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                    
                }
            }  
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(128,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16;
                
                } else 
                {
                    var e1 = instance_create_depth(416,240,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16;
                }
            } 
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    instance_create_depth(192,160,0,obj_molded_small_fastfly)
                } else 
                {
                    instance_create_depth(400,176,0,obj_molded_small_fastfly)
                }
            }  
            break;
        case 500:
            if instance_exists(obj_Player)
            {
                if obj_Player.y> room_height/2
                {
                    instance_create_depth(224,80,0,obj_molded_small_crawling_right)
                } else 
                {
                    instance_create_depth(128,240,0,obj_molded_small_crawling_right)
                }
            }  
            break;
        case 600:
            state = 1.5;
            t = 0;
            break;
    }      
}

if state = 1.5
{
    if !instance_exists(obj_molded_snow_flying) && !instance_exists(obj_molded_snow_spearman)
    && !instance_exists(obj_crawling_molded)
    {
        state = 2;   
    }
}

if state = 2
{
    t++;
    if t > 50
    {
        if instance_exists(obj_wall_trigger)
        {
            obj_wall_trigger.state = 2;
            obj_wall_trigger.t = 0;
        }      
        instance_destroy();
    }
}
