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
        i2.obj_cr = obj_crawling_molded_f_r17
        t = 0;
        state = 1;   
    }
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
        i3.obj_cr = obj_flying_molded_f_r17; 
    }
    if t = 150 
    {
        instance_create_depth(352,128,0,obj_molded_small_crawling_left);
        state = 3;  
        t = 0;
    }
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
        instance_destroy();
    }
}