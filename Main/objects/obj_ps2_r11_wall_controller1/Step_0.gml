if state = 0 // SHIELDER redfly redfly
{
    t++;
    switch(t)
    {
        case 100:
            var e1 = instance_create_depth(176,192,0,obj_molded_big_spawner_n);
            e1.y_cr = 16;
            e1.obj_cr = obj_molded_purple_shield;               
            var e2 = instance_create_depth(368,192,0,obj_molded_big_spawner_n);
            e2.y_cr = 16;
            e2.obj_cr = obj_molded_purple_shield;  
            break;
        case 200:
            state = 0.5;
            t = 0;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_purple_shield)
    {
        state = 1;       
    }
}

if state = 1
{
    t++;
    if t > 60
    {
        if instance_exists(obj_wall_trigger_close1_h)
        {
            obj_wall_trigger_close1_h.state = 2;
            obj_wall_trigger_close1_h.t = 0;   
        }
        instance_destroy();   
    }
}
