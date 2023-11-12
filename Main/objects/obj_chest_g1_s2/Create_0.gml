/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
isOn = -1;
a=0; // таймер
fnc_snd_play_over(snd_take_key);
if instance_exists(obj_Player)
{
	depth = obj_Player.depth+1;	
}
image_alpha = 0;