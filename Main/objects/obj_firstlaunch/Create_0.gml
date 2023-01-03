/// @description Insert description here
// You can write your code in this editor
//Player stats


//global.controlScheme = 1; //!!!!!!!!!!!!!!!!!!!!!



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

#region Объявление переменных
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
     

    #region Завершеннсоть уровней
    
    global.completed_JF1 = 0;
    global.completed_JF2 = 0;
    
    #endregion
    
    #region Важные катсцены 
    global.Cutscene_f1_r33 = 1;
    #endregion



global.TargetX = 64;
global.TargetY = 224;
global.TargetRoom = T1_r1;



