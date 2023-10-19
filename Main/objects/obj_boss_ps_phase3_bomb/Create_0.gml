/// @description Insert description here
// You can write your code in this editor
vspd = -7;
state = 0;
t = 0;
dis = round(x-obj_Player.x);
if dis < 480 && dis > -480 
{
	spd = (dis/70);
} else 
{
    if obj_Player.x > x 
    {
        spd = -3;   
    } else spd = 3;
}

fnc_snd_play_onetime(snd_follower_snow_bomb_start);