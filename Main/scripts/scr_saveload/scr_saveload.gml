// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_save_progress(){

// create var storage

var _saveStorage = 
{
    hp_max                      : global.hp_max, // max HP
    mana_max                    : global.mana_max,
    gold                        : global.gold,
    darkessence                 : global.darkessence,
    secrets                     : global.secrets,
    hp                          : global.hp,
    mana                        : global.mana,
    gold_prelevel               : global.gold_prelevel,
    choosed_item                : global.choosed_item, // 1- бумер 2 -топ // 3 - бомба // 11 - арбалет
    choosed_item_tier           : global.choosed_item_tier, // ТИР предмета
    choosed_itemboat            : global.choosed_itemboat, // 1 - ? 2 - 2пистолета 
    choosed_itemboat_tier       : global.choosed_itemboat_tier, // ТИП предмета для лодки
    money_saved                 : global.money_saved,
    darkessence_saved           : global.darkessence_saved ,
    PlayerOnIsland              : global.PlayerOnIsland,
    
    dash : global.dash ,
    hook : global.fhook,
    // Диалоги
    
    dia_jungleChief : global.dia_jungleChief,
    dia_jungleMerch : global.dia_jungleMerch, 
    dia_jungleComt  : global.dia_jungleComt, 
    
    // Пушки
    
    cannon_j2_r1  : global.cannon_j2_r1,
    cannon_d2_r1  : global.cannon_d2_r1,
    cannon_sn2_r1 : global.cannon_sn2_r1,
    cannon_l2_r1  : global.cannon_l2_r1,
    cannon_sh2_r1 : global.cannon_sh2_r1,
    
    //Ключи
    
    key_green1  : global.key_green1,
    key_green2  : global.key_green2,
    key_yellow1 : global.key_yellow1,
    key_yellow2 : global.key_yellow2,
    key_red1    : global.key_red1,
    key_red2    : global.key_red2,
    key_blue1   : global.key_blue1,
    key_blue2   : global.key_blue2,
    key_purple1 : global.key_purple1,
    key_purple2 : global.key_purple2,
    
    //АПГРЕЙДЫ
    
    //возможность апгрейда якоря
    
    shop_axe_can_upgrade1 : global.shop_axe_can_upgrade1,
    shop_axe_can_upgrade2 : global.shop_axe_can_upgrade2,

    // Апгрейд Якоря
    
    purch_anch1 : global.purch_anch1,
    purch_anch2 : global.purch_anch2,
    purch_anch3 : global.purch_anch3,
    
    // Возможность Апгрейда пистолета
    
    shop_dualpistols_can_upgrade1 : global.shop_dualpistols_can_upgrade1,
    shop_dualpistols_can_upgrade2 : global.shop_dualpistols_can_upgrade2,
    
    // Апгрейд пистолетов
    
    purch_dualpistols1 : global.purch_dualpistols1,
    purch_dualpistols2 : global.purch_dualpistols2,
    purch_dualpistols3 : global.purch_dualpistols3,
    
    // Завершенность уровней
    
    completed_JF1 : global.completed_JF1,
    completed_JF2 : global.completed_JF2,
    
    // Важные Катсцены
    
    Cutscene_f1_r33 : global.Cutscene_f1_r33,
    
    #region Jungle
    
    #region 1 уровень
    
    #region Сундуки
    chest_j1_r3  : global.chest_j1_r3, 
    chest_j1_r7  : global.chest_j1_r7, 
    chest_j1_r9  : global.chest_j1_r9, 
    chest_j1_r14 : global.chest_j1_r14, 
    #endregion
    
    #region Монеты
    secrets_j1_r5 :  global.secrets_j1_r5,
    secrets_j1_s1 :  global.secrets_j1_s1,
    secrets_j1_r16:  global.secrets_j1_r16,
    #endregion
    
    #region Головоломка
    maze_trigger1_j1_r13 : global.maze_trigger1_j1_r13,
    maze_trigger2_j1_r13 : global.maze_trigger2_j1_r13,
    maze_trigger3_j1_r13 : global.maze_trigger3_j1_r13,
    maze_trigger4_j1_r13 : global.maze_trigger4_j1_r13,
    
    #endregion
    
    #endregion
    
    #region/* 2 УРОВЕНЬ */

    #region Сундуки
    chest_j2_r1  : global.chest_j2_r1 ,
    chest_j2_r3  : global.chest_j2_r3 ,
    chest_j2b_r4 : global.chest_j2b_r4,
    chest_J2p_r3 : global.chest_J2p_r3,
    #endregion
    
    #region Монеты
    secrets_j2_s1  : global.secrets_j2_s1 ,
    secrets_j2p_r4 : global.secrets_j2p_r4,
    secrets_J2b_s1 : global.secrets_J2b_s1,
    #endregion
    
    #region Проходы
    secretpass_j2_r4  : global.secretpass_j2_r4 ,
    secretpass_j2b_r3 : global.secretpass_j2b_r3,
    
    #endregion
    
    #endregion
    
    #region /* ENDURANCE JUNGLE */

    #region  Монета
    secrets_j2_endurance : global.secrets_j2_endurance,
    #endregion
    
    #endregion
    
    #endregion
    
    
}

// turn data into json

var _string = json_stringify(_saveStorage);
var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "save1.save");
buffer_delete(_buffer);

show_debug_message("Gave Saved! " + _string);

}

function scr_load_progress(){

    if file_exists("save1.save")
    {
        var _buffer = buffer_load("save1.save");
        var _string = buffer_read(_buffer, buffer_string);
        buffer_delete(_buffer);
        
        var _loadStorage = json_parse(_string);
        
        
            global.hp_max                   =   _loadStorage.hp_max                 ; // max HP
            global.mana_max                 =   _loadStorage.mana_max               ;  
            global.gold                     =   _loadStorage.gold                   ;
            global.darkessence              =   _loadStorage.darkessence            ;
            global.secrets                  =   _loadStorage.secrets                ;
            global.hp                       =   _loadStorage.hp                     ;      
            global.mana                     =   _loadStorage.mana                   ;      
            global.gold_prelevel            =   _loadStorage.gold_prelevel          ;     
            global.choosed_item             =   _loadStorage.choosed_item           ;     
            global.choosed_item_tier        =   _loadStorage.choosed_item_tier      ;
            global.choosed_itemboat         =   _loadStorage.choosed_itemboat       ; 
            global.choosed_itemboat_tier    =   _loadStorage.choosed_itemboat_tier  ;    
            global.money_saved              =   _loadStorage.money_saved            ;     
            global.darkessence_saved        =   _loadStorage.darkessence_saved      ;
            global.PlayerOnIsland           =   _loadStorage.PlayerOnIsland         ;   
            
            global.dash  = _loadStorage.dash ;
            global.fhook = _loadStorage.hook ;
            
            // Диалоги
            
            global.dia_jungleChief  =   _loadStorage.dia_jungleChief;
            global.dia_jungleMerch  =   _loadStorage.dia_jungleMerch;
            global.dia_jungleComt   =   _loadStorage.dia_jungleComt;
            
            // Пушки на уровнях с лодкой
            
            global.cannon_j2_r1     = _loadStorage.cannon_j2_r1;
            global.cannon_d2_r      = _loadStorage.cannon_d2_r;
            global.cannon_sn2_r1    = _loadStorage.cannon_sn2_r1;
            global.cannon_l2_r1     = _loadStorage.cannon_l2_r1;
            global.cannon_sh2_r1    = _loadStorage.cannon_sh2_r1;
            
            //Ключи
            
            
            // Ключи
            
            global.key_green1   = _loadStorage.key_green1;
            global.key_green2   = _loadStorage.key_green2;
            global.key_yellow1  = _loadStorage.key_yellow1;
            global.key_yellow2  = _loadStorage.key_yellow2;
            global.key_red1     = _loadStorage.key_red1;   
            global.key_red2     = _loadStorage.key_red2;  
            global.key_blue1    = _loadStorage.key_blue1;  
            global.key_blue2    = _loadStorage.key_blue2; 
            global.key_purple1  = _loadStorage.key_purple1;
            global.key_purple2  = _loadStorage.key_purple2;
            
            // апгрейды человек
            
            // Возможность апгрейда якоря
            
            global.shop_axe_can_upgrade1 = _loadStorage.shop_axe_can_upgrade1;
            global.shop_axe_can_upgrade2 = _loadStorage.shop_axe_can_upgrade2;
            
            // Апгрейды якоря
            
            global.purch_anch1 = _loadStorage.purch_anch1;
            global.purch_anch2 = _loadStorage.purch_anch2;
            global.purch_anch3 = _loadStorage.purch_anch3;
            
            // апгрейды лодка
            
            // возможность апгрейда лодки
            
            global.shop_dualpistols_can_upgrade1 = _loadStorage.shop_dualpistols_can_upgrade1;
            global.shop_dualpistols_can_upgrade2 = _loadStorage.shop_dualpistols_can_upgrade2;
    
            // Апгрейды парных пистолей
    
            global.purch_dualpistols1 = _loadStorage.purch_dualpistols1;
            global.purch_dualpistols2 = _loadStorage.purch_dualpistols2;
            global.purch_dualpistols3 = _loadStorage.purch_dualpistols3;
            
            // Завершенность уровней
            
            global.completed_JF1 = _loadStorage.completed_JF1;
            global.completed_JF2 = _loadStorage.completed_JF2;
            
            // Катсцены
            
            global.Cutscene_f1_r33 = _loadStorage.Cutscene_f1_r33;
        
            #region Jungle
        
            #region 1 уровень
    
            #region Сундуки
            global.chest_j1_r3      =   _loadStorage.chest_j1_r3  ;
            global.chest_j1_r7      =   _loadStorage.chest_j1_r7  ;
            global.chest_j1_r9      =   _loadStorage.chest_j1_r9  ;
            global.chest_j1_r14     =   _loadStorage.chest_j1_r14 ; 
            #endregion
    
            #region Монеты
            global.secrets_j1_r5    =     _loadStorage.secrets_j1_r5;  
            global.secrets_j1_s1    =     _loadStorage.secrets_j1_s1;  
            global.secrets_j1_r16   =     _loadStorage.secrets_j1_r16; 
            #endregion
    
            #region Головоломка
            global.maze_trigger1_j1_r13 = _loadStorage.maze_trigger1_j1_r13; 
            global.maze_trigger2_j1_r13 = _loadStorage.maze_trigger2_j1_r13; 
            global.maze_trigger3_j1_r13 = _loadStorage.maze_trigger3_j1_r13; 
            global.maze_trigger4_j1_r13 = _loadStorage.maze_trigger4_j1_r13; 
    
            #endregion
    
            #endregion
    
            #region/* 2 УРОВЕНЬ */

            #region Сундуки
            global.chest_j2_r1  = _loadStorage.chest_j2_r1  ;
            global.chest_j2_r3  = _loadStorage.chest_j2_r3  ;
            global.chest_j2b_r4 = _loadStorage.chest_j2b_r4 ;
            global.chest_J2p_r3 = _loadStorage.chest_J2p_r3 ;
            #endregion
    
            #region Монеты
            global.secrets_j2_s1  = _loadStorage.secrets_j2_s1  ;
            global.secrets_j2p_r4 = _loadStorage.secrets_j2p_r4 ;
            global.secrets_J2b_s1 = _loadStorage.secrets_J2b_s1 ;
            #endregion
    
            #region Проходы
            global.secretpass_j2_r4  = _loadStorage.secretpass_j2_r4  ;
            global.secretpass_j2b_r3 = _loadStorage.secretpass_j2b_r3 ;
    
            #endregion
    
            #endregion
    
            #region /* ENDURANCE JUNGLE */

            #region  Монета
            global.secrets_j2_endurance = _loadStorage.secrets_j2_endurance ;
            #endregion
    
            #endregion
        
            #endregion

        show_debug_message("game loaded!" + _string);
    }
    

}

function scr_save_settings(){
    
    var _saveSettings = 
    {
        #region Resolution
        
        resolution   : global.resolution  ,
        windowWidth  : global.windowWidth ,
        windowHeight : global.windowHeight,
        
        #endregion
        
        #region Music & SFX
        
        MSCvolume       : global.MSCvolume,
        MSCvolume_max   : global.MSCvolume_max,
        SFXvolume       : global.SFXvolume,
        
        #endregion
        
        #region Controls
        
        left_key   : global.left_key   ,
        right_key  : global.right_key  ,
        up_key     : global.up_key     ,
        down_key   : global.down_key   ,
        jump_key   : global.jump_key   ,
        attack_key : global.attack_key ,
        dash_key   : global.dash_key   ,
        item_key   : global.item_key   ,
        abil_key   : global.abil_key   ,
        
        #endregion
        
        #region language
        
        language :  global.language ,
        
        #endregion
    }
    
// turn data into json 

    var _string = json_stringify(_saveSettings);
    var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
    buffer_write(_buffer, buffer_string, _string);
    buffer_save(_buffer, "CMsettings.save");
    buffer_delete(_buffer);

    show_debug_message("Settings Saved! " + _string);
}

function scr_load_settings(){

if file_exists("CMsettings.save")
    {
        var _buffer = buffer_load("CMsettings.save");
        var _string = buffer_read(_buffer, buffer_string);
        buffer_delete(_buffer);
        
        var _loadStorageSet = json_parse(_string);
        
        #region Resolution
        
        global.resolution    = _loadStorageSet.resolution   ;
        global.windowWidth   = _loadStorageSet.windowWidth  ;
        global.windowHeight  = _loadStorageSet.windowHeight ;
        
        #endregion
        
        #region Music & SFX
        
        global.MSCvolume        = _loadStorageSet.MSCvolume ;
        global.MSCvolume_max    = _loadStorageSet.MSCvolume_max;
        global.SFXvolume        = _loadStorageSet.SFXvolume ;
        
        
        #endregion
        
        #region Controls
        
        global.left_key   =  _loadStorageSet.left_key   ;
        global.right_key  =  _loadStorageSet.right_key  ;
        global.up_key     =  _loadStorageSet.up_key     ;
        global.down_key   =  _loadStorageSet.down_key   ;
        global.jump_key   =  _loadStorageSet.jump_key   ;
        global.attack_key =  _loadStorageSet.attack_key ;
        global.dash_key   =  _loadStorageSet.dash_key   ;
        global.item_key   =  _loadStorageSet.item_key   ;
        global.abil_key   =  _loadStorageSet.abil_key   ;
        
        #endregion
        
        #region Language
        
        global.language = _loadStorageSet.language ;
        
        #endregion
        
        show_debug_message("Settings Loaded! " + _string);
    }  

}
