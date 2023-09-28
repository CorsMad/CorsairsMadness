if state = 0 // Grounded Grounded Flying
{
    t++;
    switch(t)
    {
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 384
                {
                    var e1 = instance_create_depth(224,176,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_grounded_molded;    
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(496,240,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_grounded_molded;   
                    e1.y_cr = 16;
                }
            }  
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x > 384
                {
                    var e1 = instance_create_depth(304,240,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_grounded_molded;  
                    e1.y_cr = 16;
                    var e2 = instance_create_depth(288,128,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_flying_molded;  
                } else 
                {
                    var e1 = instance_create_depth(464,240,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_grounded_molded;  
                    e1.y_cr = 16;
                    var e2 = instance_create_depth(480,128,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_flying_molded;   
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
    if !instance_exists(obj_grounded_molded) && !instance_exists(obj_flying_molded)
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
        if instance_exists(obj_wall_trigger_di_r2_1)
        {
            obj_wall_trigger_di_r2_1.state = 2;
            obj_wall_trigger_di_r2_1.t = 0;
        }      
        instance_destroy();
    }
}
