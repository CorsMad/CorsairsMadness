if (state = 0) {
    t++;
    if t mod 20 == 0
	{
        fnc_snd_play_over(snd_boss_expl);
		instance_create_depth(x+random_range(-10,10),y+random_range(-8,-18),depth-2,obj_sfx2);
		instance_create_depth(x+random_range(-10,10),y+random_range(-8,-18),depth-1,obj_sfx_explosion);
	}
    if point_distance(x, y, 240, 135) > 1
    {
        move_towards_point(240, 135, 1);
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
        obj_endurance_snow.state = 3;
        instance_destroy()
    }
}