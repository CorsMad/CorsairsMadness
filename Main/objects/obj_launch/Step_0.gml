/// @description Insert description here
// You can write your code in this editor

t++;

if t = 10 {
    audio_group_load(MusicVolume);
audio_group_load(SFXvolume);

audio_group_set_gain(MusicVolume,global.MSCvolume,0);
audio_group_set_gain(SFXvolume,global.SFXvolume,0);   
}
if t > 50 && audio_group_is_loaded(MusicVolume) && audio_group_is_loaded(SFXvolume)
{
    surface_resize(application_surface, display_get_width(), display_get_height());
    display_reset(0, false);
    room_goto(FirstLoadingRoom);   
}


