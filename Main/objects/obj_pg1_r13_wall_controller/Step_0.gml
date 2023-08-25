if state = 0 // Flyer Flyer redwalk
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(176,144,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                    e1.state = 1;
                
                } else 
                {
                    var e1 = instance_create_depth(464,144,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying; 
                    e1.state = 1;
                }
            }  
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(128,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                    e1.state = 1;
                
                } else 
                {                
                    var e1 = instance_create_depth(560,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying; 
                    e1.state = 1;
                }
            } 
            break;
        case 250:
            if obj_Player.x> room_width/2
            {
                instance_create_depth(224,128,0,obj_molded_small_fastfly)    
            } else instance_create_depth(448,128,0,obj_molded_small_fastfly)    

        case 150:
            state = 0.5;
            t = 0;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_fastfly_molded) && !instance_exists(obj_molded_snow_flying)
    {
        state = 1;          
    }
}

if state = 1 // Flyer Spearman redwalk redfly
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(128,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                    e1.state = 1;
                
                } else 
                {                
                    var e1 = instance_create_depth(560,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying; 
                    e1.state = 1;
                }
            } 
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(176,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16;
                    e1.state = 1;
                
                } else 
                {                
                    var e1 = instance_create_depth(480,208,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                    e1.state = 1;
                }
            } 
            break;
        case 300:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                   instance_create_depth(176,176,0,obj_molded_small_crawling_right)
                
                } else 
                {
                    instance_create_depth(544,144,0,obj_molded_small_crawling_left);   
                }
            } 
        case 350:
            if obj_Player.x> room_width/2
            {
                instance_create_depth(224,128,0,obj_molded_small_fastfly)    
            } else instance_create_depth(448,128,0,obj_molded_small_fastfly) 
            break;
        case 400:
            state = 1.5;
            t = 0;
            break;
    }      
}

if state = 1.5
{
    if !instance_exists(obj_crawling_molded) && !instance_exists(obj_crawling_molded_l) 
    && !instance_exists(obj_molded_snow_flying) && !instance_exists(obj_molded_snow_spearman)
    {
        state = 2;   
    }
}

if state = 2 //Flyer Flyer Spearman redwalk 
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(176,144,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                    e1.state = 1;
                
                } else 
                {
                    var e1 = instance_create_depth(464,144,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying; 
                    e1.state = 1;
                }
            }  
            break;
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(128,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                    e1.state = 1;
                
                } else 
                {                
                    var e1 = instance_create_depth(560,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying; 
                    e1.state = 1;
                }
            } 
            break;
        case 300:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(176,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16;
                    e1.state = 1;
                
                } else 
                {                
                    var e1 = instance_create_depth(480,208,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                    e1.state = 1;
                }
            } 
            break;
        case 400:
            if obj_Player.x> room_width/2
            {
                instance_create_depth(224,128,0,obj_molded_small_fastfly)    
            } else instance_create_depth(448,128,0,obj_molded_small_fastfly)  
            break;
        case 500:
            state = 2.5;
            t = 0;
            break;
    }   
}

if state = 2.5
{
    if !instance_exists(obj_fastfly_molded) && !instance_exists(obj_molded_snow_spearman)  
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
