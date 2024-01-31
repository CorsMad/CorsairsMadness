t++;
switch(t)
{
    case 100:   image_index = 1;
    fnc_msc_play(msc_j2_boss);
    if instance_exists(obj_chair) obj_chair.state = 1;
    break;   
    case 110:   image_index = 2;
    
    break;   
    case 120:   
        instance_create_depth(x,y,1,obj_boss_s2_phase1);
        //instance_create_depth(x,y,-300,obj_boss_s2_phase1);
        instance_destroy();
}