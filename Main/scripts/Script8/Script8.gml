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

function fnc_snd_play_boat_pistol()
{
    if audio_play_sound(snd_player_boat_pistol,0,0)
	{
		audio_stop_sound(snd_player_boat_pistol);
		audio_play_sound(snd_player_boat_pistol,0,0);
	}   
}

function fnc_snd_play_boat_cannon()
{
    if audio_play_sound(snd_player_boat_cannon,0,0)
	{
		audio_stop_sound(snd_player_boat_cannon);
		audio_play_sound(snd_player_boat_cannon,0,0);
	}   
}

function fnc_snd_play_over(argument0)
{
    if audio_play_sound(argument0,0,0)
    {
        audio_stop_sound(argument0);
        audio_play_sound(argument0,0,0);
    }
}

function fnc_snd_play_onetime(argument1)
{
    if !audio_play_sound(argument1,0,0)   
    {
        audio_play_sound(argument1,0,0);   
    }
}