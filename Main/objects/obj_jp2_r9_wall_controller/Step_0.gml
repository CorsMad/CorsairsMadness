if state = 0
{
    if t < 600 t++;
    switch(t)
    {
        case 50: 
            if obj_Player.x > 232 instance_create_depth(160,176,depth,obj_molded_big_spawner_grounded);
            else instance_create_depth(304,176,depth,obj_molded_big_spawner_grounded);
            break;
        case 200:
            if obj_Player.x > 232 instance_create_depth(160,96,depth,obj_molded_big_spawner_flying);
            else instance_create_depth(304,96,depth,obj_molded_big_spawner_flying);
            break;
        case 350:
            if obj_Player.x > 232 instance_create_depth(160,176,depth,obj_molded_big_spawner_grounded);
            else instance_create_depth(304,176,depth,obj_molded_big_spawner_grounded);
            break;
        case 500:
            if obj_Player.x > 232 instance_create_depth(160,96,depth,obj_molded_big_spawner_flying);
            else instance_create_depth(304,96,depth,obj_molded_big_spawner_flying);
            break;       
    }
    if t >= 550 && !instance_exists(obj_flying_molded)
    && !instance_exists(obj_grounded_molded)
    {
        state = 3;
        t = 0;
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


