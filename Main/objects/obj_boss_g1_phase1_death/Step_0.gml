/// @description Insert description here
// You can write your code in this editor
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
		t = 0;
	}
}

if state = 2
{
	t++;
	if t mod 40 == 0 
	{
		var st = instance_create_depth(x,y,depth-1,obj_sfx_graveyard_boss1_steam);
		st.fol = id;
	}
	if t mod 10 == 0
	{
        fnc_snd_play_over(snd_boss_expl);
		instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx_explosion_bomb);
	}

	if t mod 5 == 0
	{
        
		instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx2);
	}
	if point_distance(x, y, 48, 64) > 4
	{
	    move_towards_point(46, 64, 4);
	}
	else 
	{
		speed = 0
		x = 48;
		y = 64;
		instance_create_depth(x,y,depth,obj_boss_g1_phase2);
		instance_destroy()
	}	
}