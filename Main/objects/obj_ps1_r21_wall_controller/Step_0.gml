if state = 0 // SHIELDER archer redfly
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    var e1 = instance_create_depth(240,208,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_purple_shield;
                
                } else 
                {
                    var e1 = instance_create_depth(432,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_purple_shield;   
                }
            }  
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    var e1 = instance_create_depth(128,160,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_purple_archer;
                
                } else 
                {
                    var e1 = instance_create_depth(528,208,0,obj_molded_big_spawner_n);
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
        case 300:
            state = 0.5;
            t = 0;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_purple_shield) && !instance_exists(obj_fastfly_molded)
    && !instance_exists(obj_molded_purple_archer)
    {
        state = 1;          
    }
}

if state = 1 // SHIELDER archer archer redfly redwalk
{
    t++;
    switch(t)
    {
        case 75:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    var e1 = instance_create_depth(240,208,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_purple_shield;
                
                } else 
                {
                    var e1 = instance_create_depth(432,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_purple_shield;   
                }
            }  
            break;
        case 150:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    var e1 = instance_create_depth(128,160,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_purple_archer;
                
                } else 
                {
                    var e1 = instance_create_depth(528,208,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_purple_archer;   
                }
            }  
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    var e1 = instance_create_depth(240,208,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_purple_archer;
                
                } else 
                {
                    var e1 = instance_create_depth(432,192,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_molded_purple_archer;   
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
                if obj_Player.x > 336
                {
                    instance_create_depth(192,112,depth,obj_molded_small_crawling_right)   
                } else
                {
                    instance_create_depth(192,112,depth,obj_molded_small_crawling_left)   
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
    if !instance_exists(obj_molded_purple_archer) && !instance_exists(obj_molded_purple_shield)
    && !instance_exists(obj_fastfly_molded) && !instance_exists(obj_crawling_molded)
    && !instance_exists(obj_crawling_molded_l)
    {
        state = 2;   
    }
}

if state = 2 //SHIELDER SHIELDER archer redfly redfly
{
    t++;
    switch(t)
    {
        case 50:
             
            var e1 = instance_create_depth(240,208,0,obj_molded_big_spawner_n);
            e1.y_cr = 16;
            e1.obj_cr = obj_molded_purple_shield;
            e1.state = 1;
            
            
            var e2 = instance_create_depth(432,192,0,obj_molded_big_spawner_n);
            e2.y_cr = 16;
            e2.obj_cr = obj_molded_purple_shield;  
            e2.state = 1;
            
            break;
        case 200:
            if instance_exists(obj_Player)
            {
                if obj_Player.x> 336
                {
                    var e2 = instance_create_depth(240,208,0,obj_molded_big_spawner_n);
                    e2.y_cr = 16;
                    e2.obj_cr = obj_molded_purple_archer;
                    e2.state = 1;
                }   else
                    {
                        var e2 = instance_create_depth(432,192,0,obj_molded_big_spawner_n);
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
    if t = 50
    {
        instance_create_depth(432,128,depth-1,obj_sfx_player_dead_big)   ;
    }
    if t = 65
    {
        instance_create_depth(432,128,depth,obj_lantern_green);
    }
    if t > 100
    {
        if instance_exists(obj_wall_trigger)
        {
            obj_wall_trigger.state = 2;
            obj_wall_trigger.t = 0;
        }   
        instance_destroy();
    }
}
