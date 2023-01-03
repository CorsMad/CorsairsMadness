if state = 0
{
    if t < 900 t++;
    switch(t)
    {
        case 50:
            if obj_Player.x > 288 instance_create_depth(192,144,depth,obj_molded_big_spawner_flying)
            else instance_create_depth(384,144,depth,obj_molded_big_spawner_flying);
            break;
        case 300:
            if obj_Player.x > 288 instance_create_depth(208,80,depth,obj_molded_big_spawner_flying)
            else instance_create_depth(368,80,depth,obj_molded_big_spawner_flying);
            break;
        case 550:
            if obj_Player.x > 288 instance_create_depth(192,144,depth,obj_molded_big_spawner_flying)
            else instance_create_depth(384,144,depth,obj_molded_big_spawner_flying);
            break;
        case 800:
            if obj_Player.x > 288 instance_create_depth(208,80,depth,obj_molded_big_spawner_flying)
            else instance_create_depth(368,80,depth,obj_molded_big_spawner_flying);
            break;
    }
    
    if t > 860 && !instance_exists(obj_flying_molded)
    {
        state = 3;
        t = 0;
    }
    
    if t > 860 && instance_exists(obj_flying_molded)
    {
        with(obj_flying_molded)
        {
            if x > room_width || x < 0 || y < 0 || y > room_height
            {
                enemy_hp = 0; 
            }
        }
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


