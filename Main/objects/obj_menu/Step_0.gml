/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_down)
{
	if vol > 0
	{
		vol -=0.1;
	}
}
if keyboard_check_pressed(vk_up)
{
	if vol < 1
	{
		vol +=0.1;
	}
}


audio_group_set_gain(audiogroup_default,vol,0);	