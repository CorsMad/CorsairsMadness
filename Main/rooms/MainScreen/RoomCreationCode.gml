
// Загрузка музыки
audio_group_load(MusicVolume);
audio_group_load(SFXvolume);

// Установка громкости звука
global.MSCvolume = 0.1; //0,5
global.MSCvolume_max = global.MSCvolume;
global.SFXvolume = 0.1; //0,5

audio_group_set_gain(MusicVolume,global.MSCvolume,0);

// Управление
global.controlScheme = 0;

//  лодка
global.boatCheckpoint = 0;  // чекпоинт на лодке
