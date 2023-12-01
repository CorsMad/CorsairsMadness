if state = 0 // fly run fly run run
{
    t++;
    switch(t)
    {
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 944
                {
                    var e1 = instance_create_depth(768,240,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_yellow_run;    
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(1088,240,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_yellow_run;   
                    e1.y_cr = 16;
                }
            }  
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x > 944
                {
                    var e2 = instance_create_depth(816,160,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_molded_yellow_flying;  
                    e2.y_cr = 16;  
                } else 
                {
                    var e2 = instance_create_depth(1040,160,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_molded_yellow_flying;   
                    e2.y_cr = 16;  
                }
            }
            break;
        case 300:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 944
                {
                    var e1 = instance_create_depth(832,240,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_yellow_run;    
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(1024,240,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_molded_yellow_run;   
                    e1.y_cr = 16;
                }
            }  
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x > 944
                {
                    var e2 = instance_create_depth(784,160,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_molded_yellow_flying;  
                    e2.y_cr = 16;
                } else 
                {
                    var e2 = instance_create_depth(1072,160,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_molded_yellow_flying;   
                    e2.y_cr = 16;
                }
            }
            break;
        case 500:
            state = 0.5;
            t = 0;
            break;       
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_yellow_flying) && !instance_exists(obj_molded_yellow_run)
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
