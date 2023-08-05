if state = 0
{
    if t < 350 t++;
    switch(t)
    {
        case 5: instance_create_depth(368,160,depth,obj_molded_big_spawner_flying);
                instance_create_depth(128,160,depth,obj_molded_big_spawner_flying);
                break;
        case 100:   
                if obj_Player.x > 240 instance_create_depth(128,208,depth,obj_molded_small_fastfly);
                else instance_create_depth(368,208,depth,obj_molded_small_fastfly);
                break;
        case 200:   
                if obj_Player.x > 240 instance_create_depth(128,208,depth,obj_molded_small_fastfly);
                else instance_create_depth(368,208,depth,obj_molded_small_fastfly);
                break;
        case 250:   
                if obj_Player.x > 240 instance_create_depth(128,208,depth,obj_molded_small_fastfly);
                else instance_create_depth(368,208,depth,obj_molded_small_fastfly);
                break;
    }
    if t > 300 && !instance_exists(obj_fastfly_molded)
    && !instance_exists(obj_flying_molded)
    {
        t = 0;
        state = 3;
    }   
}

if state = 3
{
    t++;
    if t >= 50
    {
        if instance_exists(obj_wall_trigger)
        {
            obj_wall_trigger.state = 2;
            obj_wall_trigger.t = 0;
        }
    
    }
}


