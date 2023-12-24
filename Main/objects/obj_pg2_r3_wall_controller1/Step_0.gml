if state = 0 // Flyer Flyer Spearman Flyer
{
    t++;
    switch(t)
    {
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 272
                {
                    var e1 = instance_create_depth(144,144,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;                    
                } else 
                {
                    var e1 = instance_create_depth(384,176,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
                }
            }  
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 272
                {
                    var e1 = instance_create_depth(160,96,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;                    
                } else 
                {
                    var e1 = instance_create_depth(400,112,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
                }
            }  
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 272
                {
                    instance_create_depth(160,144,0,obj_molded_small_fastfly);
                } else 
                {
                    instance_create_depth(416,192,0,obj_molded_small_fastfly);
                }
            } 
            break;
        case 500:
            state = 0.5;
            t = 0;
            break;       
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_snow_spearman) && !instance_exists(obj_molded_snow_flying) && !instance_exists(obj_fastfly_molded)
    {
        state = 1;          
    }
}

if state = 1
{
    t++;
    if t > 50
    {
        obj_camera_vert_pg2_r3.state = 1;
        if instance_exists(obj_wall_trigger)
        {
            obj_wall_trigger.state = 2;
            obj_wall_trigger.t = 0;
        }      
        if instance_exists(obj_wall_trigger_close1_h)
        {
            obj_wall_trigger_close1_h.state = 2;
            obj_wall_trigger_close1_h.t = 0;
        }      
        instance_destroy();
    }
}
