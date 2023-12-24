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

function fnc_snd_play_onetime(argument0)
{
    if !audio_play_sound(argument0,0,false)   
    {
        audio_play_sound(argument0,0,false);   
    }
}

function fnc_msc_play(argument0)
{
    if instance_exists(obj_music_controller)
    {
        obj_music_controller.musicId = argument0;
        obj_music_controller.t = 0;
    }   
}

function fnc_msc_stop_play()
{
    if instance_exists(obj_music_controller)
    {
        audio_stop_sound(obj_music_controller.musicId);
        obj_music_controller.musicId = noone;
        obj_music_controller.t = 33;
    }   
}

function fnc_msc_stop_play_slow()
{
    if instance_exists(obj_music_controller)   
    {
        obj_music_controller.stop_music = 1;
        obj_music_controller.sm_t = 0;
    }
}

function fnc_msc_start_checkpoint(argument0)
{
    if instance_exists(obj_music_controller)   
    {
        if obj_music_controller.musicId != argument0
        {
            obj_music_controller.musicId = argument0;
            obj_music_controller.t = 0;
        }
    }
}


function fnc_msc_play_one_time(argument0)
{
    if instance_exists(obj_music_controller)
    {
        obj_music_controller.musicId = argument0;
        obj_music_controller.t = 0;
    }   
}