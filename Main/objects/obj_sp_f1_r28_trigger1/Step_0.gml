/// @description Insert description here
// You can write your code in this editor
if state = 0 
{
    t++;
    if t = 60
    {
        var i = instance_create_depth(432,238,-1,obj_molded_big_spawner);
        i.obj_cr = obj_grounded_molded;
        t = 0;
        state = 1;
        trigger = 1;
    }
}

if trigger = 1 && !instance_exists(obj_molded_big_spawner) && !instance_exists(obj_grounded_molded)
{
    trigger = 2;
    state = 2;
}


if state = 2
{
    t++;
    if t = 60
    {
        var k = instance_create_depth(432,238,-1,obj_molded_big_spawner); 
        k.obj_cr = obj_grounded_molded;        
        var l = instance_create_depth(224,238,-1,obj_molded_big_spawner); 
        l.obj_cr = obj_grounded_molded;
        t = 0;
        state = 3;
        trigger = 3;
    }
}


if trigger = 3 && !instance_exists(obj_molded_big_spawner) && !instance_exists(obj_grounded_molded)
{
    trigger = 4;
    state = 4;
}


if state = 4 
{
    t++;
    if t = 60 
    {
        if instance_exists(obj_wall_trigger_close1_f1_r28)
        {
            obj_wall_trigger_close1_f1_r28.state = 2;
            obj_wall_trigger_close1_f1_r28.t = 0;
        } 
        instance_destroy();
    }
}