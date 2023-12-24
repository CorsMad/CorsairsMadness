if state = 0 // Spearman redfly redfly Flyer
{
    t++;
    switch(t)
    {
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(160,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(512,208,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                }
            }  
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(240,160,0,obj_molded_small_fastfly);
                } else 
                {
                    var e1 = instance_create_depth(512,160,0,obj_molded_small_fastfly);
                }
            }   
            break;
        case 300:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(304,96,0,obj_molded_small_fastfly);
                } else 
                {
                    var e1 = instance_create_depth(464,112,0,obj_molded_small_fastfly);
                }
            } 
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(304,96,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(512,96,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                }
            }  
            break;
        case 600:
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(304,96,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying; 
                } else 
                {
                    var e1 = instance_create_depth(512,96,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying; 
                }
            } 
            break;
        case 700:
            state = 0.5;
            t = 0;
            break;     
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_snow_spearman) && !instance_exists(obj_molded_snow_flying)
    && !instance_exists(obj_fastfly_molded)
    {
        state = 2;          
    }
}

if state = 1 // Flyer  redfly redfly Spearman
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(304,96,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying; 
                } else 
                {
                    var e1 = instance_create_depth(512,96,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying; 
                }
            }  
            break;
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(304,96,0,obj_molded_small_fastfly);
                } else 
                {
                    var e1 = instance_create_depth(464,112,0,obj_molded_small_fastfly);
                }
            } 
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(240,160,0,obj_molded_small_fastfly);
                } else 
                {
                    var e1 = instance_create_depth(512,160,0,obj_molded_small_fastfly);
                }
            }  
            break;
        case 300:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 352
                {
                    var e1 = instance_create_depth(160,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(512,208,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman; 
                    e1.y_cr = 16;
                }
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
    if !instance_exists(obj_molded_snow_flying) && !instance_exists(obj_molded_snow_spearman)
    && !instance_exists(obj_fastfly_molded)
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
