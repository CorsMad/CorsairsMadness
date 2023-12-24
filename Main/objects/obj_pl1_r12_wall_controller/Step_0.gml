if state = 0 // Berserker 
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(272,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                
                } else 
                {
                    var e1 = instance_create_depth(432,144,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
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
    if !instance_exists(obj_molded_lava_berserker) && !instance_exists(obj_fastfly_molded)
    {
        state = 1;          
    }
}

if state = 1 // Jumper redfly Berserker 
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(224,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                
                } else 
                {
                    var e1 = instance_create_depth(496,144,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                }
            } 
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    instance_create_depth(224,128,0,obj_molded_small_fastfly);               
                } else 
                {
                    instance_create_depth(432,80,0,obj_molded_small_fastfly);
                }
            } 
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(272,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                
                } else 
                {
                    var e1 = instance_create_depth(432,144,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
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
        state = 3;   
    }
}

if state = 2 // Berserker redfly Berserker redfly redfly 
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(224,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;
                
                } else 
                {
                    var e1 = instance_create_depth(544,144,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_berserker;   
                }
            }      
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    instance_create_depth(224,128,0,obj_molded_small_fastfly);                
                } else 
                {
                    instance_create_depth(432,80,0,obj_molded_small_fastfly);
                }
            } 
            break;
        case 350:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(176,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;
                
                } else 
                {
                    var e1 = instance_create_depth(624,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_lava_boomer;   
                }
            }  
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    instance_create_depth(256,96,0,obj_molded_small_fastfly);                
                } else 
                {
                    instance_create_depth(464,96,0,obj_molded_small_fastfly);
                }
            } 
            break;
        case 450:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    instance_create_depth(288,176,0,obj_molded_small_fastfly);                
                } else 
                {
                    instance_create_depth(512,112,0,obj_molded_small_fastfly);
                }
            } 
            break;
        case 550:
            state = 2.5;
            t = 0;
            break;
    }   
    
}

if state = 2.5
{
    if !instance_exists(obj_molded_lava_berserker) && !instance_exists(obj_crawling_molded_l)
    && !instance_exists(obj_fastfly_molded) && !instance_exists(obj_molded_lava_boomer)
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
