if state = 0 // Jumper redfly Jumper redfly Berserker  
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(96,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                
                } else 
                {
                    var e1 = instance_create_depth(384,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                }
            }        
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    instance_create_depth(80,176,0,obj_molded_small_fastfly);                
                } else 
                {
                    instance_create_depth(400,176,0,obj_molded_small_fastfly);
                }
            }   
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    instance_create_depth(144,192,0,obj_molded_small_fastfly);                
                } else 
                {
                    instance_create_depth(304,192,0,obj_molded_small_fastfly);
                }
            }   
            break;
        case 350:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(144,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                
                } else 
                {
                    var e1 = instance_create_depth(352,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                }
            }  
            break;
        case 450:
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

if state = 1
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
