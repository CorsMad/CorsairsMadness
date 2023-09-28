if state = 0 // Berserker Boomber Boomer
{
    t++;
    switch(t)
    {
        case 100:
            if obj_Player.x > 288{
                var e1 = instance_create_depth(160,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_lava_berserker;
            } else {
                var e1 = instance_create_depth(400,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_lava_berserker;   
            }
            break;
        case 400:
            if obj_Player.x > 288{
                var e1 = instance_create_depth(96,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_lava_boomer;
                var e2 = instance_create_depth(128,224,0,obj_molded_big_spawner_n);
                e2.y_cr = 16;
                e2.obj_cr = obj_molded_lava_boomer;
            } else {
                var e1 = instance_create_depth(464,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_lava_boomer;   
                var e2 = instance_create_depth(432,224,0,obj_molded_big_spawner_n);
                e2.y_cr = 16;
                e2.obj_cr = obj_molded_lava_boomer; 
            }
            break;
        case 1000:
            t = 0;
            state = 0.5;
            break;
    }   
}

if state = 0.5
{
    if !instance_exists(obj_molded_lava_boomer) && !instance_exists(obj_molded_lava_berserker)
    {
        state = 1;   
    }
}

if state = 1 // Berserker Boomer Berserker Boomer Berserker
{
    t++;
    switch(t)
    {
        case 75:
            if obj_Player.x > 288{
                var e1 = instance_create_depth(64,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_lava_berserker;
            } else {
                var e1 = instance_create_depth(512,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_lava_berserker;   
            }                
            break;
        case 400:
            if obj_Player.x > 288{
                var e1 = instance_create_depth(208,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_lava_boomer;
            } else {
                var e1 = instance_create_depth(368,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_lava_boomer;   
            }                
            break;
        case 800:
            if obj_Player.x > 288{
                var e1 = instance_create_depth(112,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_lava_berserker;
            } else {
                var e1 = instance_create_depth(464,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_lava_berserker;   
            } 
            break;
        case 1100:
            if obj_Player.x > 288{
                var e1 = instance_create_depth(160,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_lava_boomer;
            } else {
                var e1 = instance_create_depth(416,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_lava_boomer;   
            } 
            break;
        case 1200:
            t = 0;
            state = 1.5;
            break;
    }
}

if state = 1.5
{
    if !instance_exists(obj_molded_lava_boomer) && !instance_exists(obj_molded_lava_berserker)   
    {
        state = 2;   
    }
}

if state = 2
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