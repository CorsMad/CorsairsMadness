/// @description Insert description here
// You can write your code in this editor
if state = 0
{
     t++;
     if t = 50
     {
        if instance_exists(obj_Player)
        {
            if obj_Player.x > 192
            {
                var e1 = instance_create_depth(64,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_abomination;    
            } else 
            {
                var e1 = instance_create_depth(304,224,0,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_abomination;      
            }
        }
        state = 0.5;
        t = 0;
     }
}

if state = 0.5
{
    if !instance_exists(obj_abomination)  && !instance_exists(obj_molded_big_spawner_n)
    {
        state = 1;   
    }
}

if state = 1
{
    t++;
    switch(t)
    {
        case 50: instance_create_depth(96,240,0,obj_zombie_start);break;
        case 100: instance_create_depth(80,240,0,obj_zombie_start);break;
        case 150: instance_create_depth(240,240,0,obj_zombie_start);break;
        case 200: 
        {
            if instance_exists(obj_Player)
            {
                if obj_Player.x > 192
                {
                    var e1 = instance_create_depth(64,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_evilsprout;    
                } else 
                {
                    var e1 = instance_create_depth(304,224,0,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_evilsprout;      
                }
            }
        }
        break;
        case 250: t = 0;state = 1.5;break;
    }
}

if state = 1.5
{
    if !instance_exists(obj_zombie) && !instance_exists(obj_evilsprout) && !instance_exists(obj_zombie_start) && !instance_exists(obj_molded_big_spawner_n)
    {
        state = 2;   
    }
}

if state = 2
{
    t++;
    switch(t)
    {
        case 20:
            instance_create_depth(288,112,-1,obj_sfx1)
            instance_create_depth(288,176,-1,obj_sfx1)
            break;
        case 30:
            instance_create_depth(288,112,0,obj_pad_blue)   ;
            instance_create_depth(288,176,0,obj_pad_blue)   ;
            if instance_exists(obj_block_shadow)
            {
                obj_block_shadow.isOn = 0  
            }
            instance_destroy();
            break;
        
    }
    
    
    
}