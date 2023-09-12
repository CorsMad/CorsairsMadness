t++;
if t mod 10 == 0
{
	instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx_explosion_bomb);
    fnc_snd_play_over(snd_boss_expl);
}

if t mod 5 == 0
{
    
	instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx2);
}


if t = 100
{
    instance_destroy();
    instance_create_depth(x,y,depth,obj_boat_boss_vulcano_2);
}