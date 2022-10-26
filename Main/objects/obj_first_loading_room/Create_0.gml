/// @description Insert description here
// You can write your code in this editor

#region Игрок
global.hp = 3;           // 4
global.hp_max = 3;       // 4
global.choosed_item = 0; // 1- бумер 2 -топ // 3 - бомба // 11 - арбалет
global.mana = 3;
global.mana_max = 3;
global.gold = 0 //global.money_saved;          // 0
global.darkessence = 0//global.darkessence_saved;

#region Объявление переменных
    scr_create_array_objects();
    scr_create_array_gold();
    scr_chest_controller();
#endregion


global.TargetX = 40;
global.TargetY = 176;
global.TargetRoom = T1_r9;


#endregion

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

// Установка глобальной эссенции

global.darkessence_saved = 0;

// Установка секретов

global.secrets = 0;

// Установка ограничений игрока

global.dash = 0;
global.fhook = 0; //0


#region Управление default

global.left_key = vk_left;
global.right_key = vk_right;
global.up_key = vk_up;
global.down_key = vk_down;
global.jump_key = ord("Z");
global.attack_key = ord("X");
global.dash_key = ord("C");
global.item_key = ord("S");
global.abil_key = ord("A");

#endregion


#endregion

t1 = 0;
t2 = 0;