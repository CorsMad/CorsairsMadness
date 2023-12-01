if state = 0 // Grounded Flying Grounded Flying Grounded
{
    t++;
    switch(t)
    {
        case 100:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 832
                {
                    var e1 = instance_create_depth(640,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_grounded_molded;    
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(992,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_grounded_molded;   
                    e1.y_cr = 16;
                }
            }  
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x > 832
                {
                    var e2 = instance_create_depth(704,144,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_flying_molded;  
                } else 
                {
                    var e2 = instance_create_depth(944,160,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_flying_molded;   
                }
            }
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 832
                {
                    var e1 = instance_create_depth(688,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_grounded_molded;    
                    e1.y_cr = 16;
                } else 
                {
                    var e1 = instance_create_depth(944,224,0,obj_molded_big_spawner_n);
                    e1.obj_cr = obj_grounded_molded;   
                    e1.y_cr = 16;
                }
            }  
            break;
        case 500:
            if instance_exists(obj_Player)
            {
                if obj_Player.x > 832
                {
                    var e2 = instance_create_depth(656,128,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_flying_molded;  
                } else 
                {
                    var e2 = instance_create_depth(992,144,0,obj_molded_big_spawner_n);
                    e2.obj_cr = obj_flying_molded;   
                }
            }
            break;
        case 600:
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
        if instance_exists(obj_wall_trigger_di_r2_2)
        {
            obj_wall_trigger_di_r2_2.state = 2;
            obj_wall_trigger_di_r2_2.t = 0;
        }      
        instance_destroy();
    }
}
