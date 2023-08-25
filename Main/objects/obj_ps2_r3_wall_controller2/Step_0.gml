if state = 0 // SHIELDER redfly redfly
{
    t++;
    switch(t)
    {
        case 100:
            var e1 = instance_create_depth(176,464,0,obj_molded_big_spawner_n);
            e1.y_cr = 16;
            e1.obj_cr = obj_molded_purple_archer;               
            break;
        case 200:
            if instance_exists(obj_Player) 
            var e1 = instance_create_depth(368,528,0,obj_molded_big_spawner_n);
            e1.y_cr = 16;
            e1.obj_cr = obj_molded_purple_shield;
            break;
        case 300:
            state = 0.5;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_purple_shield) && !instance_exists(obj_molded_purple_archer) 
    {
        if instance_exists(obj_wall_trigger)
        {
            obj_wall_trigger.state = 2;
            obj_wall_trigger.t = 0;
        }  
        instance_destroy();   
    }
}
