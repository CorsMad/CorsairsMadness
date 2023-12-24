if state = 0 // Berserker Berserker
{
    t++;
    switch(t)
    {
        case 50:  
            var e2 = instance_create_depth(192,240,0,obj_molded_big_spawner_n);
            e2.y_cr = 16;
            e2.obj_cr = obj_molded_lava_berserker;

            var e1 = instance_create_depth(704,240,0,obj_molded_big_spawner_n);
            e1.y_cr = 16;
            e1.obj_cr = obj_molded_lava_berserker;   
       
            break;
        case 150:
            var e2 = instance_create_depth(224,112,0,obj_molded_big_spawner_n);
            e2.y_cr = 16;
            e2.obj_cr = obj_molded_lava_boomer;

            var e1 = instance_create_depth(688,112,0,obj_molded_big_spawner_n);
            e1.y_cr = 16;
            e1.obj_cr = obj_molded_lava_boomer;
            break;
        case 250:
            state = 0.5;
            t = 0;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_lava_berserker) && !instance_exists(obj_fastfly_molded) && !instance_exists(obj_molded_lava_boomer)
    {
        state = 2;          
    }
}

if state = 1 // Jumper Jumper 
{
    t++;
    switch(t)
    {
        case 50:  
            var e2 = instance_create_depth(224,112,0,obj_molded_big_spawner_n);
            e2.y_cr = 16;
            e2.obj_cr = obj_molded_lava_boomer;

            var e1 = instance_create_depth(688,112,0,obj_molded_big_spawner_n);
            e1.y_cr = 16;
            e1.obj_cr = obj_molded_lava_boomer;   
       
            break;
        case 150:
            state = 1.5;
            t = 0;
            break;
    }   
    
}

if state = 1.5
{
    if !instance_exists(obj_molded_lava_berserker) && !instance_exists(obj_crawling_molded_l)
    && !instance_exists(obj_fastfly_molded) && !instance_exists(obj_molded_lava_boomer)
    {
        state = 2;   
    }
}

if state = 2
{
    t++;
    if t > 50
    {
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
