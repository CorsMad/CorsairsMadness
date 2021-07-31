/// @description Insert description here
// You can write your code in this editor
if state = 0 
{
    t++;
    if t = 60
    {
        var i = instance_create_depth(432,238,-1,obj_molded_big_spawner);
        i.obj_cr = obj_grounded_molded1_f1_r28;
        t = 0;
        state = 1;
    }
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