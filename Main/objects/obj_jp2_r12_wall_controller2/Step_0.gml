if state = 0
{
    if t < 950 t++;
    switch(t)
    {
        case 10:    if obj_Player.x > 224 instance_create_depth(obj_Player.x - 96,416,depth,obj_molded_big_spawner_grounded)
                    else instance_create_depth(obj_Player.x + 96,416,depth,obj_molded_big_spawner_grounded);
                    break;
        case 200:   if obj_Player.x > 224 instance_create_depth(obj_Player.x - 96,416,depth,obj_molded_big_spawner_grounded)
                    else instance_create_depth(obj_Player.x + 96,416,depth,obj_molded_big_spawner_grounded);
                    break;
        case 350:   if obj_Player.x > 224 instance_create_depth(obj_Player.x - 96,368,depth,obj_molded_small_fastfly)
                    else instance_create_depth(obj_Player.x + 96,368,depth,obj_molded_small_fastfly);
                    break;
        case 600:   if obj_Player.x > 224 instance_create_depth(obj_Player.x - 96,368,depth,obj_molded_small_fastfly)
                    else instance_create_depth(obj_Player.x + 96,368,depth,obj_molded_small_fastfly);
                    break;
        case 850:   if obj_Player.x > 224 instance_create_depth(obj_Player.x - 96,416,depth,obj_molded_big_spawner_grounded)
                    else instance_create_depth(obj_Player.x + 96,416,depth,obj_molded_big_spawner_grounded);
                    break;
    }
    if t > 900 && !instance_exists(obj_grounded_molded)
    && !instance_exists(obj_fastfly_molded)
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
    instance_destroy();  
    }
}


