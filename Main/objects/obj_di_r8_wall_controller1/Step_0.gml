if state = 0 // Lancer flyer Lancer
{
    t++;
    switch(t)
    {
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 272
                {
                    var e1 = instance_create_depth(192,112,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;    
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(352,112,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;   
                    e1.y_cr = 16;
                }
            }  
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x > 272
                {
                    var e1 = instance_create_depth(112,240,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;  
                    e1.y_cr = 16;
                    var e2 = instance_create_depth(160,176,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_molded_snow_flying;  
                    e2.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(432,240,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_snow_spearman;  
                    e1.y_cr = 16;
                    var e2 = instance_create_depth(384,176,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_molded_snow_flying;  
                    e2.y_cr = 16;
                }
            }
            break;
        case 300:
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
        if instance_exists(obj_wall_trigger_tp1)
        {
            obj_wall_trigger_tp1.state = 2;
            obj_wall_trigger_tp1.t = 0;
        }      
        instance_destroy();
    }
}
