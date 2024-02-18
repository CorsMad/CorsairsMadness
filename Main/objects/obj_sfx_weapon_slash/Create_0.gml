/// @description Insert description here
// You can write your code in this editor
image_angle = random(360);

fnc_snd_play_over(snd_player_hit);
/*
if audio_play_sound(snd_player_hit,0,0)
{   
    audio_stop_sound(snd_player_hit);
    audio_play_sound(snd_player_hit,0,0);
}

/////////////////////////////////// OLD ////////////////////

/*
if audio_play_sound(snd_player_miss,0,0)
	{
		audio_stop_sound(snd_player_miss);
		audio_play_sound(snd_player_hit,0,0);
	}
	*/