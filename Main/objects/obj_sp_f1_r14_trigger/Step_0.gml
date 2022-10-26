/// @description Insert description here
// You can write your code in this editor
if state = 0 
{
     
    t++;
    
    if t = 60  
    {
        instance_create_depth(784,112,0,obj_molded_small_crawling_right);
    }
    
    if t = 100
    {
        instance_create_depth(960,80,0,obj_molded_small_crawling_left);   
    }
    
    if t = 150
    {
        var i1 = instance_create_depth(992,192,-1,obj_molded_big_spawner);
        i1.obj_cr = obj_flying_molded;
        t = 0;
        state = 1;
        trigger = 1;
    }
}

if state = 2 
{
    t++;
    if t = 60  
    {
        instance_create_depth(960,112,0,obj_molded_small_crawling_left);
    }
    
    if t = 100
    {
        instance_create_depth(784,80,0,obj_molded_small_crawling_right);   
    }
    if t = 150 
    {
        var i2 = instance_create_depth(784,192,-1,obj_molded_big_spawner);
        i2.obj_cr = obj_flying_molded;
        t = 0;
        state = 3;  
        trigger = 3;
    }
}

if state = 4 
{
    t++;
    if t = 60 
    {
        if instance_exists(obj_wall_trigger_close1_f1_r14) && instance_exists(obj_wall_trigger_close2_f1_r14)
        {
            obj_wall_trigger_close1_f1_r14.state = 2;
            obj_wall_trigger_close1_f1_r14.t = 0;
            obj_wall_trigger_close2_f1_r14.state = 2;
            obj_wall_trigger_close2_f1_r14.t = 0;
        } 
        instance_destroy();
    }
}

//TEST

if trigger = 1
{
    if !instance_exists(obj_flying_molded) && !instance_exists(obj_molded_big_spawner)
    {
        trigger = 2;
        state = 2;
    }
}

if trigger = 3 && !instance_exists(obj_molded_big_spawner)
{
    if !instance_exists(obj_flying_molded)   
    {
        trigger = 4;
        state = 4;
    }
}
