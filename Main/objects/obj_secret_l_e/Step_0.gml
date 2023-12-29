/// @description Insert description here
// You can write your code in this editor

if to_player = 0
{
	x += hspd;
	y += vspd;
	vspd = lerp(vspd,0,0.05);
	hspd = lerp(hspd,0,0.05);
	timer++;
	if timer = 100 
	{
		to_player = 1;
		hspd = 0;
		vspd = 0;
	}
}

if to_player = 1
{
	var dir = point_direction(x,y,obj_Player.x,obj_Player.y-32);
	spd+=0.5;
	hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
	if place_meeting(x,y,obj_Player)
	{
        fnc_snd_play_onetime(msc_level_end);
        fnc_snd_play_over(snd_player_hpmana_gain);
	    global.secrets_l_endurance = 1;
        
        //achiev
        fnc_achiev_coin_lava()
    
        global.secrets +=1;
        instance_create_depth(0,0,0,obj_room_transition_black_screen_l1_stats);
		instance_destroy();	     
	}
}

b++;
if b = 4
{
	instance_create_depth(x,y,1,obj_sfx3);
	b = 0;
}