if state = 0 // Flyer
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 272
                {
                    var e1 = instance_create_depth(144,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                
                } else 
                {
                    var e1 = instance_create_depth(400,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
                }
            }  
            break;
        case 150:
            state = 0.5;
            t = 0;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_snow_flying)
    {
        state = 1;          
    }
}

if state = 1 // walkred Flyer Flyer
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 272
                {
                    var e1 = instance_create_depth(144,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                
                } else 
                {
                    var e1 = instance_create_depth(400,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
                }
            } 
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 272
                {
                    instance_create_depth(160,96,0,obj_molded_small_crawling_right);
                } else 
                {
                    instance_create_depth(384,96,0,obj_molded_small_crawling_left); 
                }
            } 
            break;
        case 300:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 272
                {
                    var e1 = instance_create_depth(144,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                
                } else 
                {
                    var e1 = instance_create_depth(400,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
                }
            } 
        case 400:
            state = 1.5;
            t = 0;
            break;
    }      
}

if state = 1.5
{
    if !instance_exists(obj_molded_snow_flying) && !instance_exists(obj_crawling_molded) && !instance_exists(obj_crawling_molded_l)
    {
        state = 2;   
    }
}

if state = 2 //walkred Flyer walkred Flyer walkred
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 272
                {
                    instance_create_depth(160,96,0,obj_molded_small_crawling_right);
                } else 
                {
                    instance_create_depth(384,96,0,obj_molded_small_crawling_left); 
                }
            } 
            break;
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 272
                {
                    var e1 = instance_create_depth(144,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                
                } else 
                {
                    var e1 = instance_create_depth(400,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
                }
            } 
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 272
                {
                    instance_create_depth(160,96,0,obj_molded_small_crawling_right);
                } else 
                {
                    instance_create_depth(384,96,0,obj_molded_small_crawling_left); 
                }
            } 
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 272
                {
                    var e1 = instance_create_depth(144,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                
                } else 
                {
                    var e1 = instance_create_depth(400,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
                }
            } 
            break;
        case 300:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 272
                {
                    instance_create_depth(160,96,0,obj_molded_small_crawling_right);
                } else 
                {
                    instance_create_depth(384,96,0,obj_molded_small_crawling_left); 
                }
            } 
            break;
        case 500:
            state = 2.5;
            t = 0;
            break;
    }   
}

if state = 2.5
{
    if !instance_exists(obj_crawling_molded_l) && !instance_exists(obj_crawling_molded)  
    && !instance_exists(obj_molded_snow_flying)
    {
        state = 3;   
    }
}

if state = 3
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
