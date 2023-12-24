if state = 0 //  летающий, раннер
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 400
                {
                    var e4 = instance_create_depth(208,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(576,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            }            
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 400
                {
                    var e3 = instance_create_depth(208,144,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(576,144,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;   
                }
            }  
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 400
                {
                    var e3 = instance_create_depth(208,144,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(576,144,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;   
                }
            }  
            break;
        case 300:
            if instance_exists(obj_Player)
            {
                instance_create_depth(obj_Player.x - 96*obj_Player.image_xscale,obj_Player.y,0,obj_molded_small_fastfly);      
            }
            break;
        case 400:
            state = 0.5;
            t = 0;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_yellow_flying) && !instance_exists(obj_molded_yellow_run) &&
    !instance_exists(obj_crawling_molded_l) && !instance_exists(obj_crawling_molded) && !instance_exists(obj_molded_small_fastfly) &&
    !instance_exists(obj_molded_small_fastfly)
    {
        state = 3;          
    }
    
}

if state = 1 // раннер раннер раннер красныйлет
{
    t++;
    switch(t)
    {
        case 50:
            
                
                    var e3 = instance_create_depth(208,144,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                
                    var e4 = instance_create_depth(576,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_run;   
                
              
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 400
                {
                    var e4 = instance_create_depth(208,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(576,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            } 
            break;

        case 350:
            state = 1.5;
            t = 0;
            break;
    }   
    
}

if state = 1.5
{
    if !instance_exists(obj_molded_yellow_run) && !instance_exists(obj_molded_yellow_run)
    {
        state = 2;   
    }
}

if state = 2 // раннер  летающий красныйлет красныйлет красныйлет
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 400
                {
                    var e3 = instance_create_depth(208,144,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;
                
                } else 
                {
                    var e3 = instance_create_depth(576,144,0,obj_molded_big_spawner_n);
                    e3.y_cr = 16;
                    e3.obj_cr = obj_molded_yellow_run;   
                }
            } 
            break;
        case 250:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 400
                {
                    var e4 = instance_create_depth(208,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;
                
                } else 
                {
                    var e4 = instance_create_depth(576,144,0,obj_molded_big_spawner_n);
                    e4.y_cr = 16;
                    e4.obj_cr = obj_molded_yellow_flying;   
                }
            } 
            break;
        case 300:
            if instance_exists(obj_Player)
            {
                instance_create_depth(obj_Player.x - 96*obj_Player.image_xscale,obj_Player.y,0,obj_molded_small_fastfly);      
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
                instance_create_depth(obj_Player.x - 96*obj_Player.image_xscale,obj_Player.y,0,obj_molded_small_fastfly);      
            }
            break;
                      
        case 500:
            t = 0;
            state = 2.5;
            break;
    }      
}

if state = 2.5
{    
    if !instance_exists(obj_molded_yellow_run) && 
    !instance_exists(obj_crawling_molded) && !instance_exists(obj_crawling_molded_l) &&
    !instance_exists(obj_molded_yellow_flying)
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
