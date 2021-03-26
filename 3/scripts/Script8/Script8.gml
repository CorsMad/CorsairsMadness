// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_snd_play_coin()
{
	if audio_play_sound(snd_coin_pickup,0,0)
	{
		audio_stop_sound(snd_coin_pickup);
		audio_play_sound(snd_coin_pickup,0,0);
	}
}