/// @description Insert description here
// You can write your code in this editor
if state = 0 // 2 оборотня
{
     t++;
     if t = 50
     {
        if instance_exists(obj_Player)
        {
            if obj_Player.y > 144
            {
                var e1 = instance_create_depth(240,112,50,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_werewolf;    
            } else 
            {
                var e1 = instance_create_depth(240,208,50,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_werewolf;      
            }
        }         
     }
     
     if (t = 100) {
        if instance_exists(obj_Player)
        {
            if obj_Player.x > room_width/2
            {
                var e1 = instance_create_depth(144,208,50,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_evilsprout;    
            } else 
            {
                var e1 = instance_create_depth(352,208,50,obj_molded_big_spawner_n);
                e1.y_cr = 16;
                e1.obj_cr = obj_evilsprout;      
            }
        }        
     }
     
     if t =200 
     {
        state = 0.5;
        t = 0;
     }
}

if state = 0.5
{
    if !instance_exists(obj_werewolf) && !instance_exists(obj_evilsprout)     
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
                    var e1 = instance_create_depth(144,208,50,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_evilsprout;    
                } else 
                {
                    var e1 = instance_create_depth(352,208,50,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_evilsprout;      
                }
            } 
            break;
        case 100: 
            if instance_exists(obj_Player)
            {
                if obj_Player.y > 144
                {
                    var e1 = instance_create_depth(240,112,50,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_werewolf;    
                } else 
                {
                    var e1 = instance_create_depth(240,208,50,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_werewolf;      
                }
            } 
            break;
        case 300: 
            if instance_exists(obj_Player)
            {
                if obj_Player.y > 132
                {
                    var e1 = instance_create_depth(240,112,50,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_werewolf;    
                } else 
                {
                    var e1 = instance_create_depth(240,208,50,obj_molded_big_spawner_n);
                    e1.y_cr = 16;
                    e1.obj_cr = obj_werewolf;      
                }
            } 
            break;
        case 400: t = 0;state = 1.5;break;
    }
}

if state = 1.5
{
    if !instance_exists(obj_evilsprout) && !instance_exists(obj_werewolf)
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