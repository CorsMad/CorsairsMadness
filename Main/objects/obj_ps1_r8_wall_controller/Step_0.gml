if state = 0 // SHIELDER
{
    t++;
    switch(t)
    {
        case 50:
        if instance_exists(obj_Player)
        {
            if obj_Player.x> 240
            {
                var e1 = instance_create_depth(96,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_shield;
                
            } else 
            {
                var e1 = instance_create_depth(400,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_shield;   
            }
        }        
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

if state = 1 // SHIELDER redfly redfly
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 240
                {
                    var e1 = instance_create_depth(96,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_purple_shield;
                
                } else 
                {
                    var e1 = instance_create_depth(400,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_purple_shield;   
                }
            }  
            break;
        case 200:
            if instance_exists(obj_Player) 
            {
                instance_create_depth(obj_Player.x+choose(-128,128),obj_Player.y-random_range(8,32),depth,obj_molded_small_fastfly);
            }
            break;
        case 250:
            if instance_exists(obj_Player) 
            {
                instance_create_depth(obj_Player.x+choose(-128,128),obj_Player.y-random_range(8,32),depth,obj_molded_small_fastfly);
            }
        case 350:
            state = 1.5;
            t = 0;
            break;
    }   
    
}

if state = 1.5
{
    if !instance_exists(obj_molded_purple_shield) && !instance_exists(obj_fastfly_molded)
    {
        state = 2;   
    }
}

if state = 2
{
    t++;
    if t > 50
    {
         if instance_exists(obj_wall_trigger_close1_h)
        {
            obj_wall_trigger_close1_h.state = 2;
            obj_wall_trigger_close1_h.t = 0;
        }   
        instance_destroy();
    }
}
