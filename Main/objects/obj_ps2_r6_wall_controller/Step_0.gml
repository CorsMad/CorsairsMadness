if state = 0 // archer archer 
{
    t++;
    switch(t)
    {
        case 100:
       
            var e1 = instance_create_depth(480,112,0,obj_molded_big_spawner_n);
            e1.y_cr = 16;
            e1.obj_cr = obj_molded_purple_archer;

            var e2 = instance_create_depth(528,192,0,obj_molded_big_spawner_n);
            e2.y_cr = 16;
            e2.obj_cr = obj_molded_purple_archer;   
            
            break;
        case 200:
            var e1 = instance_create_depth(448,240,0,obj_molded_big_spawner_n);
            e1.y_cr = 16;
            e1.obj_cr = obj_molded_purple_shield;
        case 300:
            t = 0;
            state = 0.5;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_purple_archer) && !instance_exists(obj_molded_purple_shield)
    {
        state = 2;   
    }
}

if state = 1
{
    t++;
    switch(t)
    {
        case 75:

            var e1 = instance_create_depth(560,112,0,obj_molded_big_spawner_n);
            e1.y_cr = 16;
            e1.obj_cr = obj_molded_purple_archer;
                 
            break;
        case 150:

            var e1 = instance_create_depth(448,240,0,obj_molded_big_spawner_n);
            e1.y_cr = 16;
            e1.obj_cr = obj_molded_purple_shield;
                
            break;
        case 250:
            t = 0;
            state = 1.5;
            break;
    }
}

if state = 1.5
{
    if !instance_exists(obj_molded_purple_archer) && !instance_exists(obj_molded_purple_shield)   
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
        instance_destroy();
    }   
}