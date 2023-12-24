if state = 0 // Jumper Berserker redfly redfly 
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    var e1 = instance_create_depth(288,144,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                
                } else 
                {
                    var e1 = instance_create_depth(384,144,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                }
            }        
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    var e1 = instance_create_depth(128,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                
                } else 
                {
                    var e1 = instance_create_depth(544,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                }
            } 
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    instance_create_depth(224,112,0,obj_molded_small_fastfly);
                } else 
                {
                    instance_create_depth(448,112,0,obj_molded_small_fastfly);
                }
            } 
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    instance_create_depth(288,96,0,obj_molded_small_fastfly);
                } else 
                {
                    instance_create_depth(384,96,0,obj_molded_small_fastfly);
                }
            } 
            break;
        case 350:
            state = 0.5;
            t = 0;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_lava_berserker) && !instance_exists(obj_fastfly_molded) 
    && !instance_exists(obj_molded_lava_boomer)
    {
        state = 2;          
    }
}

if state = 1 // Berserker Berserker Jumper redfly 
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    var e1 = instance_create_depth(160,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                    e1.state = 1;
                
                } else 
                {
                    var e1 = instance_create_depth(512,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                    e1.state = 1;
                }
            } 
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    var e1 = instance_create_depth(128,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                    e1.state = 1;
                
                } else 
                {
                    var e1 = instance_create_depth(544,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                    e1.state = 1;
                }
            } 
            break;
        case 350:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    var e1 = instance_create_depth(288,144,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                    e1.state = 1;
                
                } else 
                {
                    var e1 = instance_create_depth(384,144,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                    e1.state = 1;
                }
            } 
            break;
        case 550:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    instance_create_depth(224,112,0,obj_molded_small_fastfly);
                } else 
                {
                    instance_create_depth(448,112,0,obj_molded_small_fastfly);
                }
            } 
            break;
        case 650:
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
        t = 0;
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
