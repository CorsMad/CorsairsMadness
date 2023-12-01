if state = 0 // runner flyer runner
{
    t++;
    switch(t)
    {
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 368
                {
                    var e1 = instance_create_depth(256,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_yellow_run;    
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(528,192,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_yellow_run;   
                    e1.y_cr = 16;
                }
            }  
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x > 368
                {
                    var e1 = instance_create_depth(352,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_yellow_run;  
                    e1.y_cr = 16;
                    var e2 = instance_create_depth(288,144,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_molded_yellow_flying;  
                    e2.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(592,160,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_yellow_run;  
                    e1.y_cr = 16;
                    var e2 = instance_create_depth(528,128,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_molded_yellow_flying;  
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
    if !instance_exists(obj_molded_yellow_run) && !instance_exists(obj_molded_yellow_flying)
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
