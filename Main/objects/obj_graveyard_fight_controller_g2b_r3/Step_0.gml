/// @description Insert description here
// You can write your code in this editor
if state = 0
{
     t++;
     if t = 50
     {
        if obj_Player.y <= 132 instance_create_depth(240,224,0,obj_werewolf) else instance_create_depth(240,128,0,obj_werewolf)
     }
     
     if (t = 100) {
        if obj_Player.x > room_width/2 instance_create_depth(128,224,0,obj_evilsprout) else instance_create_depth(368,224,0,obj_evilsprout) 
     }
     
     if t =150 
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
            if obj_Player.x < room_width/2 instance_create_depth(368,224,0,obj_evilsprout) else instance_create_depth(128,224,0,obj_evilsprout)
            break;
        case 100: 
            if obj_Player.y <= 132 instance_create_depth(240,224,0,obj_werewolf) else instance_create_depth(240,128,0,obj_werewolf)
            break;
        case 300: 
            if obj_Player.y <= 132 instance_create_depth(240,224,0,obj_werewolf) else instance_create_depth(240,128,0,obj_werewolf)
            break;
        case 350: t = 0;state = 1.5;break;
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