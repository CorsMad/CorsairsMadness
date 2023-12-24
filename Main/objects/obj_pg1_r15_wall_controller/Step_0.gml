if state = 0 // Spearman Spearman
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
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16;
                
                } else 
                {
                    var e1 = instance_create_depth(368,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                }
            }  
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(80,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16;
                
                } else 
                {
                    var e1 = instance_create_depth(416,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;  
                    e1.y_cr = 16;
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
    if !instance_exists(obj_molded_snow_spearman)
    {
        state = 2;          
    }
}

if state = 1 // Spearman Flyer Spearman  
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(80,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16;
                
                } else 
                {
                    var e1 = instance_create_depth(416,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                }
            } 
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(112,96,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;
                
                } else 
                {
                    var e1 = instance_create_depth(368,96,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
                }
            } 
            break;
        case 350:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> room_width/2
                {
                    var e1 = instance_create_depth(128,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;
                    e1.y_cr = 16;
                
                } else 
                {
                    var e1 = instance_create_depth(368,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;   
                    e1.y_cr = 16;
                }
            } 
        case 400:
            state = 1.5;
            t = 0;
            break;
    }      
}

if state = 1.5
{
    if !instance_exists(obj_molded_snow_flying) && !instance_exists(obj_molded_snow_spearman)
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
