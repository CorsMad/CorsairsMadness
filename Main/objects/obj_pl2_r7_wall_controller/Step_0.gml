
if state = 0 // Berserker redfly Berserker walkred Berserker 
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
                    e1.obj_cr = obj_molded_lava_berserker;
                    e1.state = 1;
                
                } else 
                {
                    var e1 = instance_create_depth(368,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                    e1.state = 1;
                }
            } 
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    instance_create_depth(176,144,0,obj_molded_small_fastfly);               
                } else 
                {
                    instance_create_depth(368,128,0,obj_molded_small_fastfly);
                }
            }          
            break;
        case 450:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(144,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                    e1.state = 1;
                
                } else 
                {
                    var e1 = instance_create_depth(352,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                    e1.state = 1;
                }
            } 
            break;
        case 850:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    instance_create_depth(144,80,0,obj_molded_small_crawling_right);               
                } else 
                {
                    instance_create_depth(368,80,0,obj_molded_small_crawling_left);
                }
            }   
            break;
        case 1000: 
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(128,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                    e1.state = 1;
                
                } else 
                {
                    var e1 = instance_create_depth(336,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                    e1.state = 1;
                }
            }
            break;
        case 1100:
            state = 0.5;
            t = 0;
            break;
    }    
}

if state = 0.5
{
    if !instance_exists(obj_molded_lava_berserker) && !instance_exists(obj_crawling_molded_l)
    && !instance_exists(obj_crawling_molded) && !instance_exists(obj_molded_lava_boomer) && !instance_exists(obj_fastfly_molded)
    {
        state = 1;   
    }
}

if state = 1 // Berserker redfly Berserker walkred Jumper
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
                    e1.obj_cr = obj_molded_lava_berserker;
                    e1.state = 1;
                
                } else 
                {
                    var e1 = instance_create_depth(368,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                    e1.state = 1;
                }
            } 
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    instance_create_depth(176,144,0,obj_molded_small_fastfly);               
                } else 
                {
                    instance_create_depth(368,128,0,obj_molded_small_fastfly);
                }
            }          
            break;
        case 450:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(144,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                    e1.state = 1;
                
                } else 
                {
                    var e1 = instance_create_depth(352,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                    e1.state = 1;
                }
            } 
            break;
        case 850:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    instance_create_depth(144,80,0,obj_molded_small_crawling_right);               
                } else 
                {
                    instance_create_depth(368,80,0,obj_molded_small_crawling_left);
                }
            }   
            break;
        case 1000: 
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(144,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                    e1.state = 1;
                
                } else 
                {
                    var e1 = instance_create_depth(320,128,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                    e1.state = 1;
                }
            }
            break;
        case 1100:
            state = 2.5;
            t = 0;
            break;
    }    
}

if state = 1.5
{
    if !instance_exists(obj_molded_lava_berserker) && !instance_exists(obj_crawling_molded_l)
    && !instance_exists(obj_crawling_molded) && !instance_exists(obj_molded_lava_boomer) && !instance_exists(obj_fastfly_molded)
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
