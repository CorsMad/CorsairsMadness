if state = 0 // Spearman Spearman Flyer
{
    t++;
    switch(t)
    {
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(272,112,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                    var e2 = instance_create_depth(288,240,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_molded_snow_spearman; 
                    e2.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(576,112,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                    var e2 = instance_create_depth(576,240,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_molded_snow_spearman; 
                    e2.y_cr = 16;
                }
            }  
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(288,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;                    
                } else 
                {
                    var e1 = instance_create_depth(560,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
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
    if !instance_exists(obj_molded_snow_spearman) && !instance_exists(obj_molded_snow_flying)
    {
        state = 2;          
    }
}

if state = 1 // Spearman Spearman Flyer Flyer
{
    t++;
    switch(t)
    {
        case 75:
            var e1 = instance_create_depth(272,112,0,obj_molded_big_spawner_n);
            e1.obj_cr = obj_molded_snow_spearman; 
            e1.y_cr = 16;
            var e1 = instance_create_depth(576,112,0,obj_molded_big_spawner_n);
            e1.obj_cr = obj_molded_snow_spearman; 
            e1.y_cr = 16;

            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(288,192,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying; 
                } else 
                {
                    var e1 = instance_create_depth(576,192,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying; 
                }
            } 
            break;
        case 300:
                state = 1.5;
                t = 0;
            break;                       
    }      
}

if state = 1.5 
{
    if !instance_exists(obj_molded_snow_flying) && !instance_exists(obj_molded_snow_spearman)
    {
        state = 2;   
    }
}

if state = 2
{
    t++;
    if t > 50
    {
        obj_camera_pg2_r7.state = 2;
        if instance_exists(obj_wall_trigger)
        {
            obj_wall_trigger.state = 2;
            obj_wall_trigger.t = 0;
        }      
        instance_destroy();
    }
}
