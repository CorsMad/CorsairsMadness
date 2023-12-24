if state = 0 // SHIELDER redfly redfly
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    var e1 = instance_create_depth(272,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_purple_shield;
                
                } else 
                {
                    var e1 = instance_create_depth(448,144,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_purple_shield;   
                }
            }  
            break;
        case 200:
            if instance_exists(obj_Player) 
            {
                instance_create_depth(obj_Player.x+choose(-128,128),obj_Player.y-random_range(8,32),depth,obj_molded_small_fastfly);
            }
            break;
        case 250:
            if instance_exists(obj_Player) 
            {
                instance_create_depth(obj_Player.x+choose(-128,128),obj_Player.y-random_range(8,32),depth,obj_molded_small_fastfly);
            }
            break;
        case 350:
            if instance_exists(obj_Player)
            {
                 var e1 = instance_create_depth(176,208,0,obj_molded_big_spawner_n);
                 e1.y_cr = 16;
                 e1.obj_cr = obj_molded_purple_archer;
                 e1.state = 1;
                 var e2 = instance_create_depth(560,176,0,obj_molded_big_spawner_n);
                 e2.y_cr = 16;
                 e2.obj_cr = obj_molded_purple_archer;   
                 e2.state = 1;
            }  
            break;
        case 450:
            state = 0.5;
            t = 0;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_purple_shield) && !instance_exists(obj_fastfly_molded) && !instance_exists(obj_molded_purple_archer)
    {
        state = 3;          
    }
}

if state = 1 // archer archer redfly redfly
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                 var e1 = instance_create_depth(176,208,0,obj_molded_big_spawner_n);
                 e1.y_cr = 16;
                 e1.obj_cr = obj_molded_purple_archer;
                 e1.state = 1;
                 var e2 = instance_create_depth(560,176,0,obj_molded_big_spawner_n);
                 e2.y_cr = 16;
                 e2.obj_cr = obj_molded_purple_archer;   
                 e2.state = 1;
            }  
            break;
        case 200:
            if instance_exists(obj_Player) 
            {
                instance_create_depth(obj_Player.x+choose(-128,128),obj_Player.y-random_range(8,32),depth,obj_molded_small_fastfly);
            }
            break;
        case 300:
            if instance_exists(obj_Player) 
            {
                instance_create_depth(obj_Player.x+choose(-128,128),obj_Player.y-random_range(8,32),depth,obj_molded_small_fastfly);
            }
        case 400:
            state = 1.5;
            t = 0;
            break;
    }      
}

if state = 1.5
{
    if !instance_exists(obj_molded_purple_archer) && !instance_exists(obj_fastfly_molded)
    {
        state = 2;   
    }
}

if state = 2 //SHIELDER archer redfly redfly
{
    t++;
    switch(t)
    {
        case 50:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    var e1 = instance_create_depth(272,176,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_purple_shield;
                
                } else 
                {
                    var e1 = instance_create_depth(448,144,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_purple_shield;   
                }
            } 
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    var e2 = instance_create_depth(176,208,0,obj_molded_big_spawner_n);
                    e2.y_cr = 16;
                    e2.obj_cr = obj_molded_purple_archer;
                    e2.state = 1;
                }   else
                    {
                        var e2 = instance_create_depth(560,76,0,obj_molded_big_spawner_n);
                        e2.y_cr = 16;
                        e2.obj_cr = obj_molded_purple_archer; 
                        e2.state = 1;
                    }               
            }
            break;
        case 300:
            if instance_exists(obj_Player) 
            {
                instance_create_depth(obj_Player.x+choose(-128,128),obj_Player.y-random_range(8,32),depth,obj_molded_small_fastfly);
            }
            break;
        case 400:
            if instance_exists(obj_Player) 
            {
                instance_create_depth(obj_Player.x+choose(-128,128),obj_Player.y-random_range(8,32),depth,obj_molded_small_fastfly);
            }
            break;
        case 500:
            state = 2.5;
            t = 0;
            break;
    }   
}

if state = 2.5
{
    if !instance_exists(obj_fastfly_molded) && !instance_exists(obj_molded_purple_archer)  
    && !instance_exists(obj_molded_purple_shield)
    {
        state = 3;   
    }
}

if state = 3
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
