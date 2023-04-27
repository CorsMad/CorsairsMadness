/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    t++;
    switch(t)
    {
        case 50:    instance_create_depth(128,256,0,obj_zombie_start);break;
        case 100:   instance_create_depth(240,256,0,obj_zombie_start);break;
        case 150:   instance_create_depth(352,256,0,obj_zombie_start);break;
        case 200: 
            state = 0.5;
            t = 0;
            break;     
    }
}

if state = 0.5
{
    if !instance_exists(obj_zombie_start) && !instance_exists(obj_zombie)
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
            if obj_Player.x < room_width/2 instance_create_depth(352,256,0,obj_abomination) else instance_create_depth(80,256,0,obj_abomination)
            break;
        case 100: t = 0;state = 1.5;break;
    }
}

if state = 1.5
{
    if  !instance_exists(obj_abomination)
    {
        state = 2;   
    }
}

if state = 2
{
    t++;
    switch(t)
    {
        case 50:    
            if obj_Player.x < room_width/2 instance_create_depth(352,256,0,obj_abomination) else instance_create_depth(80,256,0,obj_abomination)
            break;
        case 100:
            if obj_Player.x < room_width/2 instance_create_depth(352,256,0,obj_werewolf) else instance_create_depth(80,256,0,obj_werewolf)
            break;
        case 150:
            t = 0;state = 2.5;break;
    }       
    
}

if state = 2.5
{
    if  !instance_exists(obj_abomination) && !instance_exists(obj_werewolf)
    {
        state = 3;   
    }
}


if state = 3
{

    if global.chest_g2_r7 = 1
    {
        instance_create_depth(368,256,0,obj_chest_g2_r7);
    }
    if instance_exists(obj_block_shadow)
    {
        obj_block_shadow.isOn = 0;   
    }
    instance_destroy();
}