/// @description Insert description here
// You can write your code in this editor
if state = 0
{
     t++;  
         // werw 2 zomb
        switch(t)
        {
            case 50:
                if instance_exists(obj_Player)
                {
                    if obj_Player.x > room_width/2
                    {
                        var e1 = instance_create_depth(48,192,101,obj_molded_big_spawner_n);
                        e1.y_cr = 16;
                        e1.obj_cr = obj_werewolf;    
                    } else 
                    {
                        var e1 = instance_create_depth(400,192,101,obj_molded_big_spawner_n);
                        e1.y_cr = 16;
                        e1.obj_cr = obj_werewolf;      
                    }
                }
                break;
            case 100: instance_create_depth(160,240,101,obj_zombie_start);break;
            case 150: instance_create_depth(304,240,101,obj_zombie_start);break;
            case 200: t = 0;state = 0.5;break;
        }
}

if state = 0.5
{
    if !instance_exists(obj_werewolf) && !instance_exists(obj_zombie_start) && !instance_exists(obj_zombie)
    {
        state = 1;   
    }
}

if state = 1
{
    t++;
    switch(t)
    {
        case 50: 
            if instance_exists(obj_Player)
                {
                    if obj_Player.x > room_width/2
                    {
                        var e1 = instance_create_depth(48,192,101,obj_molded_big_spawner_n);
                        e1.y_cr = 16;
                        e1.obj_cr = obj_werewolf;    
                    } else 
                    {
                        var e1 = instance_create_depth(400,192,101,obj_molded_big_spawner_n);
                        e1.y_cr = 16;
                        e1.obj_cr = obj_werewolf;      
                    }
                }
            break;
        case 100: 
            if instance_exists(obj_Player)
                {
                    if obj_Player.x > room_width/2
                    {
                        var e1 = instance_create_depth(48,192,101,obj_molded_big_spawner_n);
                        e1.y_cr = 16;
                        e1.obj_cr = obj_evilsprout;    
                    } else 
                    {
                        var e1 = instance_create_depth(400,192,101,obj_molded_big_spawner_n);
                        e1.y_cr = 16;
                        e1.obj_cr = obj_evilsprout;      
                    }
                }
            break;
        case 200: 
            if instance_exists(obj_Player)
                {
                    if obj_Player.x > room_width/2
                    {
                        var e1 = instance_create_depth(128,224,101,obj_molded_big_spawner_n);
                        e1.y_cr = 16;
                        e1.obj_cr = obj_evilsprout;    
                    } else 
                    {
                        var e1 = instance_create_depth(336,224,101,obj_molded_big_spawner_n);
                        e1.y_cr = 16;
                        e1.obj_cr = obj_evilsprout;      
                    }
                }
            break;
        case 250: t = 0;state = 1.5;break;
    }
}

if state = 1.5
{
    if !instance_exists(obj_zombie) && !instance_exists(obj_evilsprout) && !instance_exists(obj_werewolf) && !instance_exists(obj_molded_big_spawner_n)
    {
        state = 2;   
    }
}

if state = 2
{
    if instance_exists(obj_block_shadow)
    {
        obj_block_shadow.isOn = 0;   
    }
    instance_destroy();
    
}