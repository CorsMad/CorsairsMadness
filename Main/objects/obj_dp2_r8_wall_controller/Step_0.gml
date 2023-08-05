if state = 0 
{
    t++;
    switch(t)
    {
        case 50:
        if instance_exists(obj_Player)
        {
            if obj_Player.x> 192
            {
                var e1 = instance_create_depth(48,176,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_yellow_run;
                
            } else 
            {
                var e1 = instance_create_depth(352,240,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_yellow_run;   
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
    if !instance_exists(obj_molded_yellow_run)
    {
        state = 1;          
    }
}

if state = 1
{
    t++;
    switch(t)
    {
        case 50:
        if instance_exists(obj_Player)
        {
            if obj_Player.x> 192
            {
                var e1 = instance_create_depth(48,176,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_yellow_run;
                
            } else 
            {
                var e1 = instance_create_depth(352,240,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_yellow_run;   
            }
        }        
            break;
        case 200:
            if obj_Player.x> 192
            {
                instance_create_depth(48,112,0,obj_molded_small_crawling_right);     
            } else 
            {
                instance_create_depth(368,128,0,obj_molded_small_crawling_left);
            }
            break;
        case 300:
            if obj_Player.x> 192
            {
                instance_create_depth(48,112,0,obj_molded_small_crawling_right);     
            } else 
            {
                instance_create_depth(368,128,0,obj_molded_small_crawling_left);
            }
            break;
        case 400:
            state = 1.5;
            t = 0;
            break;
    }   
    
}

if state = 1.5
{
    if !instance_exists(obj_crawling_molded) && !instance_exists(obj_molded_yellow_run) && !instance_exists(obj_crawling_molded_l)
    {
        state = 2;   
    }
}

if state = 2 
{
    t++;
    switch(t)
    {
        case 50:
        if instance_exists(obj_Player)
        {
            if obj_Player.x> 192
            {
                var e1 = instance_create_depth(48,176,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_yellow_run;
                
            } else 
            {
                var e1 = instance_create_depth(352,240,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_yellow_run;   
            }
        }        
            break;
        case 200:
            if obj_Player.x> 192
            {
                var e1 = instance_create_depth(48,176,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_yellow_run;
                
            } else 
            {
                var e1 = instance_create_depth(352,240,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_yellow_run;   
            }
            break;
        case 300:
            if obj_Player.x> 192
            {
                instance_create_depth(48,112,0,obj_molded_small_crawling_right);     
            } else 
            {
                instance_create_depth(368,128,0,obj_molded_small_crawling_left);
            }
            break;
        case 400:
            t = 0;
            state = 2.5;
            break;
    }      
}

if state = 2.5
{    
    if !instance_exists(obj_molded_yellow_run) && !instance_exists(obj_crawling_molded) && !instance_exists(obj_crawling_molded_l)
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
        if instance_exists(obj_wall_trigger_tp)
        {
            obj_wall_trigger_tp.state = 2;
            obj_wall_trigger_tp.t = 0;
        } 
        instance_destroy();
    }
}
