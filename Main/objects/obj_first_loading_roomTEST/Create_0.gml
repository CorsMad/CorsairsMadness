/// @description Insert description here
// You can write your code in this editor

    #region Завершеннсоть уровней
    
    global.completed_JF1 = 0;
    global.completed_JF2 = 0;
    
    #endregion
    
#region ТЕСТ

global.dia_jungleChief = 0; 
global.dia_jungleMerch = 0; 

#endregion

#region Разрешение на пушку 

global.cannon_j2_r1 = 1;

#endregion

#region Зеленые ключи
global.key_green1 = 0;
global.key_green2 = 0;
#endregion

#region ТЕСТ Магазин

global.shop_axe_can_upgrade1 = 0;
global.shop_axe_can_upgrade2 = 0;

global.shop_dualpistols_can_upgrade1 = 0;
global.shop_dualpistols_can_upgrade2 = 0;

#region Покупки человека

//якорь
global.purch_anch1 = 0;
global.purch_anch2 = 0;
global.purch_anch3 = 0;

#endregion

#region Покупки Лодки

//якорь
global.purch_dualpistols1 = 0;
global.purch_dualpistols2 = 0;
global.purch_dualpistols3 = 0;

#endregion

#endregion


#region Игрок
global.hp = 5;           // 4
global.hp_max = 5;       // 4
global.choosed_item = 0; // 1- бумер 2 -топ // 3 - бомба // 11 - арбалет
global.choosed_item_tier = 0; // ТИР предмета
global.choosed_itemboat = 0; // 1 - ? 2 - 2пистолета 
global.choosed_itemboat_tier = 0; // ТИП предмета для лодки
global.mana = 3;
global.mana_max = 3;
global.gold = 6000 //global.money_saved;          // 0
global.darkessence = 0//global.darkessence_saved;

#region Объявление переменных
    scr_create_array_objects();
    scr_create_array_gold();
    scr_chest_controller();
#endregion


/*
global.TargetX = 32;
global.TargetY = 160;
global.TargetRoom = J1_r1;
*/

global.TargetX = 160;
global.TargetY = 176;
global.TargetRoom = J2_r1;


global.fTargetX = 48;
global.fTargetY = 80;
global.fTargetRoom = F1_r40;


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
audio_group_set_gain(SFXvolume,global.SFXvolume,0);

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

// Положение на карте

global.PlayerOnIsland = 0;
        
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





//////////////////////////////////////////////////////////////////////////////////////////////
/* 1 УРОВЕНЬ */
    #region Сундуки
    global.chest_j1_r3 = 1;
    global.chest_j1_r7 = 1;
    global.chest_j1_r9 = 1;
    global.chest_j1_r14 = 1;
    #endregion
    
    #region Монеты
    global.secrets_j1_r5 = 0;
    global.secrets_j1_s1 = 0;
    global.secrets_j1_r16 = 0;
    #endregion
    
    #region Головоломка
    global.maze_trigger1_j1_r13 = 0;
    global.maze_trigger2_j1_r13 = 0;
    global.maze_trigger3_j1_r13 = 0;
    global.maze_trigger4_j1_r13 = 0;
    
    #endregion

/* 2 УРОВЕНЬ */

    #region Сундуки
    global.chest_j2_r1 = 1;
    global.chest_j2_r3 = 1;
    global.chest_j2b_r4 = 1;
    global.chest_J2p_r3 = 1;
    #endregion
    
    #region Монеты
    global.secrets_j2_s1 = 0;
    global.secrets_j2p_r4 = 0;
    global.secrets_J2b_s1 = 0;
    #endregion
    
    #region Проходы
    global.secretpass_j2_r4 = 1;
    global.secretpass_j2b_r3 = 1;
    
    #endregion
    
    
/*  ENDURANCE JUNGLE */

    #region  Монета
    global.secrets_j2_endurance = 0;
    #endregion
    
/*  CUTSCENES  */    
    #region Важные катсцены F1
    global.Cutscene_f1_r33 = 1;
    #endregion
