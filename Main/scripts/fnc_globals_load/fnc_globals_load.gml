// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_globals_load()
{
    #region Игрок
    global.hp = 4;           // 4
    global.hp_max = 4;       // 4
    global.choosed_item = 0; // 1- бумер 2 -топ // 3 - бомба // 11 - арбалет
    global.choosed_item_tier = 0; // ТИР предмета
    global.choosed_itemboat = 0; // 1 - ? 2 - 2пистолета 
    global.choosed_itemboat_tier = 0; // ТИП предмета для лодки
    global.mana = 3;
    global.mana_max = 3;
    global.gold = 0; //global.money_saved;          // 0
    global.gold_prelevel = 0; //global.money_saved;          // 0
    global.darkessence = 0//global.darkessence_saved;

    #endregion
    
    #region Объявление переменных // УТОЧНИТЬ
    scr_create_array_objects();
    scr_create_array_gold();
    scr_chest_controller();
    #endregion
    
    #region Диалоги

    global.dia_jungleChief = 0; 
    global.dia_jungleMerch = 0; 
    global.dia_jungleComt = 2; 
    
    #endregion

    #region Разрешение на пушку 

    global.cannon_j2_r1 = 0;

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
    
    #region Тестовая отправка
    global.TargetX = 96;
    global.TargetY = 240;
    global.TargetRoom = TESTROOM;


    global.fTargetX = 96;
    global.fTargetY = 128;
    global.fTargetRoom = T2_r6;
    #endregion

    #region Загрузки

    // Загрузка музыки
    audio_group_load(MusicVolume);
    audio_group_load(SFXvolume);

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
     
     
    

    #endregion

    #region Завершеннсоть уровней
    
    global.completed_JF1 = 0;
    global.completed_JF2 = 0;
    
    #endregion
    
    #region Важные катсцены 
    global.Cutscene_f1_r33 = 1;
    #endregion
    
    t1 = 0;
    t2 = 0;
}

function fnc_settings_load()
{
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
    
}