if state = 0 // spearman flying
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    var e1 = instance_create_depth(96,192,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16; 
                
                } else 
                {
                    var e1 = instance_create_depth(352,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16; 
                }
            }  
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    instance_create_depth(112,160,0,obj_molded_small_fastfly)
                } else 
                {
                    instance_create_depth(384,192,0,obj_molded_small_fastfly) 
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
    if !instance_exists(obj_molded_snow_spearman) && !instance_exists(obj_fastfly_molded)
    {
        state = 1;          
    }
}

if state = 1 // spearman flying spearman
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    var e1 = instance_create_depth(96,192,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16; 
                
                } else 
                {
                    var e1 = instance_create_depth(352,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16; 
                }
            } 
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    instance_create_depth(112,160,0,obj_molded_small_fastfly)
                } else 
                {
                    instance_create_depth(384,192,0,obj_molded_small_fastfly) 
                }
            }
            break;
        case 300:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    var e1 = instance_create_depth(128,192,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16; 
                
                } else 
                {
                    var e1 = instance_create_depth(432,240,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16; 
                }
            }
        case 400:
            state = 1.5;
            t = 0;
            break;
    }      
}

if state = 1.5
{
    if !instance_exists(obj_molded_snow_spearman) && !instance_exists(obj_fastfly_molded)
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
