if state = 0 // Berserker Berserker
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 544
                {
                    var e1 = instance_create_depth(368,208,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                
                } else 
                {
                    var e1 = instance_create_depth(656,208,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                }
            }        
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 544
                {
                    var e1 = instance_create_depth(480,240,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;                
                } else 
                {
                    var e1 = instance_create_depth(752,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                }
            }  
            break;
        case 250:
            state = 0.5;
            t = 0;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_lava_berserker) && !instance_exists(obj_fastfly_molded)
    {
        state = 1;          
    }
}

if state = 1 // Berserker redfly Berserker Jumper
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 544
                {
                    var e1 = instance_create_depth(352,208,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                
                } else 
                {
                    var e1 = instance_create_depth(688,208,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                }
            }  
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 544
                {
                    instance_create_depth(448,160,0,obj_molded_small_fastfly);
                
                } else 
                {
                    instance_create_depth(640,144,0,obj_molded_small_fastfly);
                }
            }  
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 544
                {
                    var e1 = instance_create_depth(288,208,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                    e1.state = 1;
                
                } else 
                {
                    var e1 = instance_create_depth(768,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                    e1.state = 1;
                }
            }  
            break;
        case 350:
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
