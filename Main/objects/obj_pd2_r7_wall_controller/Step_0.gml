if state = 0 //  раннер , раннер, красныйлет
{
    t++;
    switch(t)
    {
        case 50: //раннер
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 456
                {
                    var e3 = instance_create_depth(336,192,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(592,128,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;   
                }
            } 
            break;
        case 200: //раннер
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 456
                {
                    var e4 = instance_create_depth(336,192,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e4 = instance_create_depth(592,128,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_run;   
                }
            } 
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                instance_create_depth(obj_Player.x - 96*obj_Player.image_xscale,obj_Player.y,0,obj_molded_small_fastfly);      
            }
            break;
        case 350:
            state = 0.5;
            t = 0;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_yellow_flying) && !instance_exists(obj_molded_yellow_run) &&
    !instance_exists(obj_crawling_molded_l) && !instance_exists(obj_flying_molded)
    {
        state = 1;          
    }
    
}

if state = 1 // летащий, красныйлет, летащий, красныйлет, раннер
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 456
                {
                    var e4 = instance_create_depth(352,128,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(560,112,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            }
            break;
        case 100:
            if instance_exists(obj_Player)
            {
                instance_create_depth(obj_Player.x - 96*obj_Player.image_xscale,obj_Player.y,0,obj_molded_small_fastfly);      
            }
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 456
                {
                    var e4 = instance_create_depth(352,128,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(560,112,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            }
            break;
        case 350:
            if instance_exists(obj_Player)
            {
                instance_create_depth(obj_Player.x - 96*obj_Player.image_xscale,obj_Player.y,0,obj_molded_small_fastfly);      
            }
            break;
        case 400:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 456
                {
                    var e3 = instance_create_depth(336,192,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(592,128,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;   
                }
            } 
            break;
        case 500:
            state = 1.5;
            t = 0;
            break;
    }   
    
}

if state = 1.5
{
    if !instance_exists(obj_molded_yellow_run) && !instance_exists(obj_molded_yellow_flying) &&
    !instance_exists(obj_flying_molded) && !instance_exists(obj_crawling_molded_l)
    {
        state = 3;   
    }
}

if state = 3
{
    t++;
    if t > 50
    {
         if instance_exists(obj_wall_trigger_tp)
        {
            obj_wall_trigger_tp.state = 2;
            obj_wall_trigger_tp.t = 0;
        }   
        instance_destroy();
    }
}
