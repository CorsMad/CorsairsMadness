if state = 0 // Spearman Flyer Flyer redfly redfly
{
    t++;
    switch(t)
    {
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(64,112,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(416,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                }
            }  
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(128,80,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying; 
                } else 
                {
                    var e1 = instance_create_depth(384,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;                     
                }
            }    
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(112,192,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying; 
                } else 
                {
                    var e1 = instance_create_depth(320,112,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;                     
                }
            }  
            break;  
        case 500:
             if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(128,112,0,obj_molded_small_fastfly);
                } else 
                {
                    var e1 = instance_create_depth(400,128,0,obj_molded_small_fastfly);
                }
            } 
            break;
        case 600:
             if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(80,176,0,obj_molded_small_fastfly);
                } else 
                {
                    var e1 = instance_create_depth(352,96,0,obj_molded_small_fastfly);
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
    if !instance_exists(obj_molded_snow_spearman) && !instance_exists(obj_molded_snow_flying)
    && !instance_exists(obj_fastfly_molded)
    {
        state = 2;          
    }
}

if state = 1 // Flyer  redfly Spearman redfly Spearman Flyer
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(128,80,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying; 
                } else 
                {
                    var e1 = instance_create_depth(384,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;                     
                }
            }    
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(112,208,0,obj_molded_small_fastfly);
                } else 
                {
                    var e1 = instance_create_depth(432,128,0,obj_molded_small_fastfly);
                }
            } 
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(64,112,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(416,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                }
            }  
            break;
        case 450:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(144,128,0,obj_molded_small_fastfly);
                } else 
                {
                    var e1 = instance_create_depth(336,112,0,obj_molded_small_fastfly);
                }
            } 
            break;
        case 700:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(64,112,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(416,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                }
            }  
            break;
        case 900:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(128,80,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying; 
                } else 
                {
                    var e1 = instance_create_depth(384,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;                     
                }
            } 
            break;
        case 1000:
                state = 1.5;
                t = 0;
            break;                       
    }      
}

if state = 1.5 
{
    if !instance_exists(obj_molded_snow_flying) && !instance_exists(obj_molded_snow_spearman)
    && !instance_exists(obj_fastfly_molded)
    {
        state = 2;   
    }
}

if state = 2
{
    t++;
    if t > 50
    {
        if instance_exists(obj_wall_trigger_close1_h)
        {
            obj_wall_trigger_close1_h.state = 2;
            obj_wall_trigger_close1_h.t = 0;
        }      
        instance_destroy();
    }
}
