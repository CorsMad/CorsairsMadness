if state = 1 
{
	t++;
	if t mod 10 == 0
	{
        fnc_snd_play_over(snd_boss_expl);
		instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx_explosion_bomb);
	}

	if t mod 5 == 0
	{
        
		instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx2);
	}
	if t = 60 
	{
		state = 2;	
	}
}

if state = 2 
{
	t++;
	if t mod 40 == 0 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}
	
	if t mod 20 == 0
	{
        fnc_snd_play_over(snd_boss_expl);
		instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx2);
	}
	
	if point_distance(x, y, 240, 136) > 2
	{
	    move_towards_point(240, 136, 1);
	}
	else 
	{
		speed = 0
		x = 240;
		y = 136;
        state = 3;
        t = 0;
	}	
}

if (state = 3) { // 
    t++;
    if t mod 10 == 0
	{
        fnc_snd_play_over(snd_boss_expl);
		instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx_explosion_bomb);
	}

	if t mod 5 == 0
	{
        
		instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx2);
	}
    
    if t = 100
    {
        instance_create_depth(x+32,y+32,depth-1,obj_sfx_explosion_bomb);
        instance_create_depth(x-32,y+32,depth-1,obj_sfx_explosion_bomb);
        instance_create_depth(x+32,y-32,depth-1,obj_sfx_explosion_bomb);
        instance_create_depth(x-32,y-32,depth-1,obj_sfx_explosion_bomb);
        instance_create_depth(x,y,depth-1,obj_sfx_explosion_bomb);
    }
    
    if t = 110
    {
        instance_create_depth(x,y-16,depth,obj_boss_s1_phase2_1);   
        instance_create_depth(x,y+16,depth,obj_boss_s1_phase2_2); 
        instance_destroy();
    }
    
}