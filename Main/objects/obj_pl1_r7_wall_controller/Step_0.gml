if state = 0 // Jumper walkred Jumper
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 270
                {
                    var e1 = instance_create_depth(112,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                
                } else 
                {
                    var e1 = instance_create_depth(448,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                }
            }        
            break;
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 270
                {
                     instance_create_depth(192,112,0,obj_molded_small_fastfly);
                } else 
                {
                    instance_create_depth(336,112,0,obj_molded_small_fastfly);
                }
            } 
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 270
                {
                    var e1 = instance_create_depth(144,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                
                } else 
                {
                    var e1 = instance_create_depth(416,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
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
    if !instance_exists(obj_molded_lava_boomer) && !instance_exists(obj_fastfly_molded)
    {
        state = 2;          
    }
}

if state = 1 // Jumper flyred Jumper walkred
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 270
                {
                    var e1 = instance_create_depth(224,208,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                
                } else 
                {
                    var e1 = instance_create_depth(320,208,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                }
            }     
            break;
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 270
                {
                     instance_create_depth(192,112,0,obj_molded_small_fastfly);
                } else 
                {
                    instance_create_depth(336,112,0,obj_molded_small_fastfly);
                }
            }
            break;
        case 350:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 270
                {
                    var e1 = instance_create_depth(112,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                
                } else 
                {
                    var e1 = instance_create_depth(448,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                }
            }  
            break;
        case 450:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 270
                {
                     instance_create_depth(128,80,0,obj_molded_small_crawling_right);
                } else 
                {
                    instance_create_depth(400,80,0,obj_molded_small_crawling_left);
                }
            }
            break;
        case 550:
            state = 1.5;
            t = 0;
            break;
    }   
    
}

if state = 1.5
{
    if !instance_exists(obj_crawling_molded) && !instance_exists(obj_crawling_molded_l)
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
        instance_destroy();
    }
}
