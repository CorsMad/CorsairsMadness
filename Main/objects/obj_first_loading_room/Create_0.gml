/// @description Insert description here
// You can write your code in this editor


#region Загрузки

// Загрузка музыки
audio_group_load(MusicVolume);
audio_group_load(SFXvolume);

// Установка разрешения

global.resolution = 0;
global.windowWidth = 1920;
global.windowHeight = 1080;


// Установка громкости звука
global.MSCvolume = 0.5; //0,5
global.MSCvolume_max = global.MSCvolume;
global.SFXvolume = 0.5; //0,5

audio_group_set_gain(MusicVolume,global.MSCvolume,0);

// Управление
global.controlScheme = 0;

//  лодка
global.boatCheckpoint = 0;  // чекпоинт на лодке

// Установка глобального золота

global.money_saved = 0;

// Установка секретов

global.secrets = 0;

// Установка ограничений игрока

global.dash = 0;
global.fhook = 0; //0

#region начальные чекпоинты 

// Начальный чекпоинт

//First Room


global.TargetX = 32;
global.TargetY = 224;
global.TargetRoom = L1_r1;

global.fTargetX = 32;
global.fTargetY = 112;
global.fTargetRoom = F1_r1;   //global.fTargetRoom = F1_r1;


// TESTROOM
/*
global.TargetX = 80;
global.TargetY = 256;
global.TargetRoom = TESTROOM;
*/
#endregion

#endregion

t1 = 0;
t2 = 0;