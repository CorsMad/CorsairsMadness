if state = 0
{
    if t < 250 t++;
    switch(t)
    {
        case 10: instance_create_depth(96,112,depth,obj_molded_big_spawner_flying);break;
        case 100: 
            var i1 = instance_create_depth(240,80,depth,obj_molded_small_spawner);
            i1.obj_cr = obj_crawling_molded_l;
            break;
        case 150: 
            var i2 = instance_create_depth(224,112,depth,obj_molded_small_spawner);
            i2.obj_cr = obj_crawling_molded_l;
            break;
        case 200: 
            var i3 = instance_create_depth(224,94,depth,obj_molded_small_spawner);
            i3.obj_cr = obj_crawling_molded_l;
            break;   
    }
    
    if t >= 230 && !instance_exists(obj_flying_molded)
    && !instance_exists(obj_crawling_molded_l)
    {
        t = 0 ;
        state = 1;
    }
}


if state = 1
{
    if t < 480 t++;
    switch(t)
    {
        case 10:    if obj_Player.x > 176 instance_create_depth(96,192,depth,obj_molded_big_spawner_grounded) 
                    else instance_create_depth(256,192,depth,obj_molded_big_spawner_grounded);
                    break;
        case 100:   if obj_Player.x > 176 instance_create_depth(96,192,depth,obj_molded_big_spawner_grounded) 
                    else instance_create_depth(256,192,depth,obj_molded_big_spawner_grounded);
                    break;
        case 200:   if obj_Player.x > 176 instance_create_depth(96,96,depth,obj_molded_small_fastfly) 
                    else instance_create_depth(256,96,depth,obj_molded_small_fastfly);
                    break;
        case 300:   if obj_Player.x > 176 instance_create_depth(96,96,depth,obj_molded_small_fastfly) 
                    else instance_create_depth(256,96,depth,obj_molded_small_fastfly);
                    break;
        case 400:   if obj_Player.x > 176 instance_create_depth(96,96,depth,obj_molded_small_fastfly) 
                    else instance_create_depth(256,96,depth,obj_molded_small_fastfly);
                    break;
    }
    
    if t >= 450 && !instance_exists(obj_fastfly_molded)
    && !instance_exists(obj_grounded_molded)
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


