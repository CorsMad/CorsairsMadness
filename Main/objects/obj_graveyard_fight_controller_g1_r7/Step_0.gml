/// @description Insert description here
// You can write your code in this editor
if state = 0
{
     t++;
     if t = 50
     {
        instance_create_depth(80,240-18,0,obj_big_spawner_abomination); 
        state = 0.5;
        t = 0;
     }
}

if state = 0.5
{
    if !instance_exists(obj_abomination)  && !instance_exists(obj_big_spawner_abomination)
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
        case 150: instance_create_depth(80,240,0,obj_zombie_start);break;
        case 200: instance_create_depth(112,240-8,0,obj_small_spawner_evilsprout);break;
        case 250: t = 0;state = 1.5;break;
    }
}

if state = 1.5
{
    if !instance_exists(obj_zombie) && !instance_exists(obj_evilsprout) && !instance_exists(obj_zombie_start) && !instance_exists(obj_small_spawner_evilsprout)
    {
        state = 2;   
    }
}

if state = 2
{
    instance_create_depth(288,112,0,obj_pad_blue)   ;
    instance_create_depth(288,176,0,obj_pad_blue)   ;
    if instance_exists(obj_block_shadow)
    {
        obj_block_shadow.isOn = 0  
    }
    instance_destroy();
    
}