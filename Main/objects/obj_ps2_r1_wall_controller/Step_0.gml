if state = 0 // SHIELDER redfly redfly
{
    t++;
    switch(t)
    {
        case 100:
            var e1 = instance_create_depth(480,160,0,obj_molded_big_spawner_n);
            e1.y_cr = 16;
            e1.obj_cr = obj_molded_purple_archer;               
            break;
        case 300:
            if instance_exists(obj_Player) 
            var e1 = instance_create_depth(448,240,0,obj_molded_big_spawner_n);
            e1.y_cr = 16;
            e1.obj_cr = obj_molded_purple_archer;
            instance_destroy();
            break;
    }   
}
