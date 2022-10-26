/// @description Insert description here
// You can write your code in this editor
if state = 0 
{
    t++;
    if t = 60
    {
        var i1 = instance_create_depth(384,96,-1,obj_molded_small_crawling_left);
        i1.obj_cr = obj_crawling_molded;  
    }
    if t = 120
    {
        var i2 = instance_create_depth(176,96,-1,obj_molded_small_spawner)
        i2.obj_cr = obj_crawling_molded
        t = 0;
        state = 1;  
        trigger = 1;
    }
}

//Переход

if trigger = 1 && !instance_exists(obj_crawling_molded) && !instance_exists(obj_molded_small_spawner)
{
    trigger = 2;
    state = 2;
}



if state = 2 
{
    t++;
    if t = 60
    {
        instance_create_depth(368,96,0,obj_molded_small_crawling_left);   
    }
    
    if t = 90
    {
        instance_create_depth(384,144,0,obj_molded_small_crawling_left);   
    }
    
    if t = 120
    {   
        var i3 = instance_create_depth(384,126,-1,obj_molded_big_spawner)
        i3.obj_cr = obj_flying_molded; 
    }
    if t = 150 
    {
        instance_create_depth(352,128,0,obj_molded_small_crawling_left);
        state = 3;  
        t = 0;
        trigger = 3;
    }
}

if trigger = 3 && !instance_exists(obj_molded_small_crawling_left) && !instance_exists(obj_molded_big_spawner) && !instance_exists(obj_flying_molded)
{
    trigger = 4;
    state = 4;
}



if state = 4 
{
    t++;
    if t = 60 
    {
        if instance_exists(obj_wall_trigger_close1_f1_r17) && instance_exists(obj_wall_trigger_close2_f1_r17)
        {
            obj_wall_trigger_close1_f1_r17.state = 2;
            obj_wall_trigger_close1_f1_r17.t = 0;
            obj_wall_trigger_close2_f1_r17.state = 2;
            obj_wall_trigger_close2_f1_r17.t = 0;
        } 
        var i4 = instance_create_depth(656,128,-1,obj_molded_big_spawner);
        i4.obj_cr = obj_flying_molded;
        var i5 = instance_create_depth(992,128,-1,obj_molded_big_spawner);
        i5.obj_cr = obj_flying_molded;
        instance_destroy();
    }
}