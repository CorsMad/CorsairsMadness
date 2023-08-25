if state = 0 // Berserker redfly Berserker redfly Jumper
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(224,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                
                } else 
                {
                    var e1 = instance_create_depth(560,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                }
            }        
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    instance_create_depth(272,128,0,obj_molded_small_fastfly);                
                } else 
                {
                    instance_create_depth(480,128,0,obj_molded_small_fastfly);
                }
            }   
            break;
        case 550:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(176,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                
                } else 
                {
                    var e1 = instance_create_depth(608,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                }
            }   
            break;
        case 850:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    instance_create_depth(288,144,0,obj_molded_small_fastfly);                
                } else 
                {
                    instance_create_depth(464,144,0,obj_molded_small_fastfly);
                }
            }   
            break;
        case 900:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(336,96,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                
                } else 
                {
                    var e1 = instance_create_depth(432,96,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                }
            }   
            break;
        case 1200:
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
        state = 1;          
    }
}

if state = 1 // Jumper Jumper Berserker Berserker
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(80,128,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                
                } else 
                {
                    var e1 = instance_create_depth(560,128,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                }
            }   
            break;
        case 350:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(128,128,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                
                } else 
                {
                    var e1 = instance_create_depth(528,128,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                }
            }   
            break;
        case 850:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(176,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                
                } else 
                {
                    var e1 = instance_create_depth(608,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                }
            } 
            break;
        case 1150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(272,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                
                } else 
                {
                    var e1 = instance_create_depth(496,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                }
            } 
            break;
        case 1250:
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
