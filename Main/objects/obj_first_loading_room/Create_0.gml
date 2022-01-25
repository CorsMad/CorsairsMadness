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


#region Управление deafault

global.left_key = vk_left;
global.right_key = vk_right;
global.up_key = vk_up;
global.down_key = vk_down;
global.jump_key = ord("Z");
global.attack_key = ord("X");
global.dash_key = ord("C");
global.item_key = ord("S");

#endregion

#region начальные чекпоинты 

// Начальный чекпоинт

//First Room


global.TargetX = 32;
global.TargetY = 224;
global.TargetRoom = L1_r1;

/*
global.TargetX = 16;
global.TargetY = 96;
global.TargetRoom = L1_r3;
*/
global.fTargetX = 32;
global.fTargetY = 112;
global.fTargetRoom = F1_r1;   

// TESTROOM
/*
global.TargetX = 240;
global.TargetY = 160;
global.TargetRoom = L1_r5;
*/
#endregion

#region Контейнер для телепортов // Счетчики смертей

#region 1stlvl
global.dc_onl_l1r7 = 0;
global.dc_onl_l1r8 = 0;
global.dc_onl_l1r12 = 0;
global.dc_onl_l1r13 = 0;
global.dc_onl_l1r19 = 0;
global.dc_onl_l1br4 = 0;
global.dc_onl_l1br9 = 0;
global.dc_onl_l1br11 = 0;
global.dc_onl_l1pr4 = 0;
global.dc_onl_l1pr5 = 0;
global.dc_onl_l1pr8 = 0;
global.dc_onl_l1pr10 = 0;
#endregion

#region 1stFlvl
global.dc_onl_f1_8 = 0;
global.dc_onl_f1_10 = 0;
global.dc_onl_f1_14 = 0;
global.dc_onl_f1_16 = 0;
global.dc_onl_f1_21 = 0;
global.dc_onl_f1_23 = 0;
global.dc_onl_f1_27 = 0;
global.dc_onl_f1_29 = 0;
global.dc_onl_f1_34 = 0;
global.dc_onl_f1_36 = 0;
global.dc_onl_f1_40 = 0;
#endregion

#endregion


#endregion

t1 = 0;
t2 = 0;