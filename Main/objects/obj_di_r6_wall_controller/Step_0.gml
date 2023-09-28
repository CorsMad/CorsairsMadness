if state = 0 // archer archer Shielder
{
    t++;
    switch(t)
    {
        case 100:
            if obj_Player.x > 240{
                var e1 = instance_create_depth(80,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_archer;
            } else {
                var e1 = instance_create_depth(400,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_archer;   
            }
            break;
        case 400:
            if obj_Player.x > 240{
                var e1 = instance_create_depth(112,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_archer;
            } else {
                var e1 = instance_create_depth(368,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_archer;   
            }
            break;
        case 800:
            if obj_Player.x > 240{
                var e1 = instance_create_depth(96,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_shield;
            } else {
                var e1 = instance_create_depth(384,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_shield;   
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
    if !instance_exists(obj_molded_purple_archer) && !instance_exists(obj_molded_purple_shield)
    {
        state = 1;   
    }
}

if state = 1 // Archer Shielder Aracher Shielder
{
    t++;
    switch(t)
    {
        case 75:
            if obj_Player.x > 240{
                var e1 = instance_create_depth(128,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_archer;
            } else {
                var e1 = instance_create_depth(352,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_archer;   
            }                
            break;
        case 300:
            if obj_Player.x > 240{
                var e1 = instance_create_depth(80,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_shield;
            } else {
                var e1 = instance_create_depth(400,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_shield;   
            }                
            break;
        case 600:
            if obj_Player.x > 240{
                var e1 = instance_create_depth(112,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_archer;
            } else {
                var e1 = instance_create_depth(368,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_archer;   
            } 
            break;
        case 1100:
            if obj_Player.x > 240{
                var e1 = instance_create_depth(96,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_shield;
            } else {
                var e1 = instance_create_depth(384,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_molded_purple_shield;   
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
    if !instance_exists(obj_molded_purple_archer) && !instance_exists(obj_molded_purple_shield)   
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