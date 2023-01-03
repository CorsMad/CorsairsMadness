/// @description Insert description here
// You can write your code in this editor


if state = 0
{
    if t < 180 t++;
    switch(t)
    {
        case 5:     instance_create_depth(304,192,depth,obj_molded_big_spawner_grounded);   break;
        case 100:   instance_create_depth(560,128,depth,obj_molded_big_spawner_flying);     break;
        case 150:   var i1 = instance_create_depth(320,128,depth,obj_molded_small_spawner);
                    i1.obj_cr = obj_molded_small_fastfly;
                    break;
    }
    if t > 170 && !instance_exists(obj_molded_small_fastfly) 
    && !instance_exists(obj_flying_molded)
    && !instance_exists(obj_grounded_molded)
    {
        state = 1;
        t = 0;
    }
}


if state = 1
{
    if t < 500 t++;
    switch(t)
    {
        case 10:   
            if obj_Player.x > 416 instance_create_depth(272,192,depth,obj_molded_big_spawner_grounded)
            else instance_create_depth(560,192,depth,obj_molded_big_spawner_grounded);
            break;
        case 50: 
            instance_create_depth(320,128,depth,obj_molded_big_spawner_flying);
            instance_create_depth(560,128,depth,obj_molded_big_spawner_flying);
            break;
        case 400:
            if obj_Player.x > 352 
            {
                var i2 = instance_create_depth(176,176,depth,obj_molded_small_spawner);
                i2.obj_cr = obj_crawling_molded;

            } else
            {
                var i2 = instance_create_depth(544,176,depth,obj_molded_small_spawner);
                i2.obj_cr = obj_crawling_molded;
            }
            break;
        case 440:
            if obj_Player.x > 352 
            {
                var i2 = instance_create_depth(176,176,depth,obj_molded_small_spawner);
                i2.obj_cr = obj_crawling_molded;

            } else
            {
                var i2 = instance_create_depth(544,176,depth,obj_molded_small_spawner);
                i2.obj_cr = obj_crawling_molded;
            }
            break;            
    }
        
    
    if t > 480 && !instance_exists(obj_crawling_molded) 
    && !instance_exists(obj_flying_molded)
    && !instance_exists(obj_grounded_molded)
    {
        state = 3; 
        t = 0;
    }
    
    if instance_exists(obj_flying_molded)
    {
        if t > 480 
        {
            if obj_flying_molded.x > room_width || obj_flying_molded.x < 0 || obj_flying_molded.y < 0 || obj_flying_molded.y > room_height
            {
                instance_destroy(obj_flying_molded);                
            }
        }
    }       
}

if state = 3
{
    t++;
    if t >= 50
    {
        if instance_exists(obj_wall_trigger)
        {
            obj_wall_trigger.state = 2;
            obj_wall_trigger.t = 0;
        }
    instance_destroy();  
    }
}


