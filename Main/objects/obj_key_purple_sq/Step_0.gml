/// @description Insert description here
// You can write your code in this editor


if state = 0
{
    t++; 
    if t = 100
    {
        state = 1;   
    }
}


if state = 1
{
    if image_speed < 2 image_speed +=0.1;
    var dir = point_direction(x,y,obj_Player.x,obj_Player.y-32);
	spd = lerp(spd,3,0.01);
	hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
	if place_meeting(x,y,obj_Player)
	{
        fnc_snd_play_onetime(msc_level_end);
        fnc_snd_play_over(snd_player_hpmana_gain);
		global.key_purple1 = 1;
        instance_create_depth(0,0,0,obj_room_transition_black_screen_g1_stats);
		instance_destroy();	
	}
}   
