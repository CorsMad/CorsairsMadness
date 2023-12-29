/// @description Insert description here
// You can write your code in this editor

t++;
if t = t_max
{
	t = 0;
	instance_create_depth(x+random_range(-8,8), y+random_range(-8,8),depth-1,obj_sfx3);
}


if place_meeting(x,y,obj_Player)
{
    fnc_snd_play_over(snd_secrets_gain);
	instance_create_depth(x,y,depth-1,obj_sfx2);
	global.secrets_j1_r5 = 1;
    
    //achiev
    fnc_achiev_coin_jungle();
    
	global.secrets +=1;
	instance_destroy();
}