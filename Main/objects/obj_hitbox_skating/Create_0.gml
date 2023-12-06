/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_player_miss,0,0);

a = 0;
if instance_exists(obj_Player)
{
	x = obj_Player.x+obj_Player.dir*24;
	y = obj_Player.y; 	
}