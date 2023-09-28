if state = 0 // fly lanc fly lanc fly
{
    t++;
    switch(t)
    {
        case 100: // fly
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 736
                {
                    var e1 = instance_create_depth(640,176,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;    
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(816,112,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
                    e1.y_cr = 16;
                }
            }  
            break;
        case 400: // lanc
            if instance_exists(obj_Player)
            {
                if obj_Player.x > 736
                {
                    var e2 = instance_create_depth(592,96,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_molded_snow_spearman;  
                    e2.y_cr = 16;  
                } else 
                {
                    var e2 = instance_create_depth(848,192,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_molded_snow_spearman;   
                    e2.y_cr = 16;  
                }
            }
            break;
        case 800: // fly
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 736
                {
                    var e1 = instance_create_depth(608,192,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;    
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(832,144,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
                    e1.y_cr = 16;
                }
            }  
            break;
        case 1500: // lanc
            if instance_exists(obj_Player)
            {
                if obj_Player.x > 736
                {
                    var e2 = instance_create_depth(656,240,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_molded_snow_spearman;  
                    e2.y_cr = 16;
                } else 
                {
                    var e2 = instance_create_depth(816,192,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_molded_snow_spearman;   
                    e2.y_cr = 16;
                }
            }
            break;
        case 2000: // fly
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 736
                {
                    var e1 = instance_create_depth(640,128,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;    
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(864,80,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_flying;   
                    e1.y_cr = 16;
                }
            }  
            break;
        case 2100:
            state = 0.5;
            t = 0;
            break;       
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_snow_spearman) && !instance_exists(obj_molded_snow_flying)
    {
        state = 3;  
        t = 0;
    }
}


if state = 3
{
    t++;
    if t > 50
    {
        if instance_exists(obj_wall_trigger_tp2)
        {
            obj_wall_trigger_tp2.state = 2;
            obj_wall_trigger_tp2.t = 0;
        }      
        instance_destroy();
    }
}
