if state = 0 && !instance_exists(obj_spikehedge) && !instance_exists(obj_bird_horizontal_shooting)
{
    var i1 = instance_create_depth(80,128,0,obj_big_spawner_j1_r17);
    i1.obj_cr = obj_pad_blue;
    i1.x_cr = 0;
    i1.y_cr = 0;
    var i1 = instance_create_depth(80,192,0,obj_big_spawner_j1_r17);
    i1.obj_cr = obj_pad_blue;
    i1.x_cr = 0;
    i1.y_cr = 0;
    instance_destroy();
}