if place_meeting(x,y,obj_Player) 
{
	global.gold += 10;
	instance_create_depth(x,y,1,obj_sfx3);
	fnc_snd_play_coin()
	instance_destroy();
}
