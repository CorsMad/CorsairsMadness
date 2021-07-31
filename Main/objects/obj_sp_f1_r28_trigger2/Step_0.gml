/// @description Insert description here
// You can write your code in this editor
if state = 0 
{
    t++;
    if t = 60
    {
        if obj_Player.x > room_width/2 
        {
            var i1 = instance_create_depth(48,510,-1,obj_molded_big_spawner);
            i1.obj_cr = obj_grounded_molded2_f1_r28;
        } else 
                {
                    var i1 = instance_create_depth(384,510,-1,obj_molded_big_spawner);
                    i1.obj_cr = obj_grounded_molded2_f1_r28;
                }    
        t = 0;
        state = 1;
    }
}

if state = 2 
{
    t++;
    if t = 60 
    {
        var i2 = instance_create_depth(48,510,0,obj_molded_big_spawner);
        i2.obj_cr = obj_grounded_molded3_f1_r28; 
        
        var i3 = instance_create_depth(384,510,0,obj_molded_big_spawner);
        i3.obj_cr = obj_grounded_molded4_f1_r28
        
        t = 0;
        state = 3;   
    }
}

if state = 4 
{
    t++;
    if t = 60 
    {
        if instance_exists(obj_wall_trigger_close2_f1_r28)
        {
            obj_wall_trigger_close2_f1_r28.state = 2;
            obj_wall_trigger_close2_f1_r28.t = 0;
        } 
        instance_destroy();
    }
}