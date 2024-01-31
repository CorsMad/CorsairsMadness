if (state = 0) {
    t++;
    if t mod 20 == 0
	{
        fnc_snd_play_over(snd_boss_expl);
		instance_create_depth(x+random_range(-10,10),y+random_range(-8,-18),depth-2,obj_sfx2);
		instance_create_depth(x+random_range(-10,10),y+random_range(-8,-18),depth-1,obj_sfx_explosion);
	}
    if point_distance(x, y, 448, 688) > 1
    {
        move_towards_point(448, 688, 1);
    }
    else 
    {
        state = 1;   
        t = 0;
        speed = 0;
    }
}

if state = 1
{
    t++;
    image_alpha = 0.7;
    if t mod 10 == 0
	{
        fnc_snd_play_over(snd_boss_expl);
		instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx2);
        instance_create_depth(x+random_range(-10,10),y+random_range(-8,-18),depth-1,obj_sfx_explosion);
	}   
    
    if t = 100
    {
		var p = instance_create_depth(0,0,0,obj_pause_controller);
		p.dest = 2;
        fnc_msc_play(msc_s1);
        obj_camera_boss_s2.state = 3;
        obj_snow_boss_controller.state = 3;
        instance_destroy()
    }
}