/// @description Insert description here
// You can write your code in this editor
t1 = 0;

audio_group_load(MusicVolume);
audio_group_load(SFXvolume);

audio_group_set_gain(MusicVolume,global.MSCvolume,0);
audio_group_set_gain(SFXvolume,global.SFXvolume,0);
//fnc_settings_load();

//fnc_globals_load();

