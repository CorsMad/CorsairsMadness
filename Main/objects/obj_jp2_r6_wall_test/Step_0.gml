
    t++;
    if t >= 150
    {
        if instance_exists(obj_wall_trigger)
        {
            obj_wall_trigger.state = 2;
            obj_wall_trigger.t = 0;
        }
    instance_destroy();  
    }



