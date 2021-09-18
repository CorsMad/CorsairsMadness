audio_group_load(MusicVolume);
audio_group_load(SFXvolume);
global.MSCvolume = 0.5;
global.MSCvolume_max = global.MSCvolume;
global.SFXvolume = 0.5;
audio_group_set_gain(MusicVolume,global.MSCvolume,0);
