if state = 0 // Jumper Berserker Berserker 
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e1 = instance_create_depth(288,144,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                
                } else 
                {
                    var e1 = instance_create_depth(640,96,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                }
            }        
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e1 = instance_create_depth(240,208,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                
                } else 
                {
                    var e1 = instance_create_depth(672,240,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                }
            } 
            break;
        case 550:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e1 = instance_create_depth(336,208,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                
                } else 
                {
                    var e1 = instance_create_depth(608,240,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                }
            } 
            break;
        case 650:
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

if state = 1 // Jumper Berserker Jumper Jumper 
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e1 = instance_create_depth(256,144,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                
                } else 
                {
                    var e1 = instance_create_depth(592,96,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                }
            } 
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e1 = instance_create_depth(304,208,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                
                } else 
                {
                    var e1 = instance_create_depth(656,240,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                }
            } 
            break;
        case 350:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e1 = instance_create_depth(304,144,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                
                } else 
                {
                    var e1 = instance_create_depth(512,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                }
            } 
            break;
        case 650:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 448
                {
                    var e1 = instance_create_depth(320,208,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                
                } else 
                {
                    var e1 = instance_create_depth(624,96,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                }
            } 
            break;
        case 750:
            state = 1.5;
            t = 0;
            break;
    }   
}

if state = 1.5
{
    if !instance_exists(obj_molded_lava_berserker) && !instance_exists(obj_fastfly_molded)
    && !instance_exists(obj_molded_lava_boomer)
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
