// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_save_progress(){
var _saveStorage = {
    
    Continue                    : global.Continue      ,
    
	TargetRoom                  : global.TargetRoom	   ,
	TargetX                     : global.TargetX	   ,
	TargetY                     : global.TargetY	   ,
	fTargetRoom                 : global.fTargetRoom   ,
	fTargetX                    : global.fTargetX	   ,
	fTargetY                    : global.fTargetY	   ,
	
    hp_max                      : global.hp_max, // max HP
    hp_add                      : global.hp_add, // max HP
    mana_max                    : global.mana_max,
    mana_add                    : global.mana_add,
    gold                        : global.gold,
    darkessence                 : global.darkessence,
    secrets                     : global.secrets,
    hp                          : global.hp,
    mana                        : global.mana,
    ftp                         : global.ftp,
    gold_prelevel               : global.gold_prelevel,
    choosed_item                : global.choosed_item, // 1- бумер 2 -топ // 3 - бомба // 11 - арбалет
    choosed_item_tier           : global.choosed_item_tier, // ТИР предмета
    choosed_itemboat            : global.choosed_itemboat, // 1 - ? 2 - 2пистолета 
    choosed_itemboat_tier       : global.choosed_itemboat_tier, // ТИП предмета для лодки
    money_saved                 : global.money_saved,
    darkessence_saved           : global.darkessence_saved ,
    PlayerOnIsland              : global.PlayerOnIsland,
    
    superattack1 : global.superattack1,
    superattack2 : global.superattack2,
    superattack3 : global.superattack3,
    
    dash : global.dash ,
    hook : global.fhook,
    
    PlayerTransition : global.PlayerTransition,        
    
    // Диалоги
    
    dia_jungleChief          :  global.dia_jungleChief             ,
    dia_desertChief          :  global.dia_desertChief             ,
    dia_snowChief            :  global.dia_snowChief               ,
    dia_shadowChief          :  global.dia_shadowChief             ,
    dia_lavaChief            :  global.dia_lavaChief               ,
    
    dia_jungleMerch          :  global.dia_jungleMerch             ,
    dia_desertMerch          :  global.dia_desertMerch             ,
    dia_snowMerch            :  global.dia_snowMerch               , 
    dia_shadowMerch          :  global.dia_shadowMerch             ,
    dia_lavaMerch            :  global.dia_lavaMerch               ,
    
    dia_jungleComt           :  global.dia_jungleComt              ,
    dia_desertComt           :  global.dia_desertComt              ,
    dia_snowComt             :  global.dia_snowComt                ,
    dia_shadowComt           :  global.dia_shadowComt              ,
    dia_lavaComt             :  global.dia_lavaComt                ,
    
    saved_jungle             :  global.saved_jungle                ,
    saved_desert             :  global.saved_desert                ,
    saved_snow               :  global.saved_snow                  ,
    saved_shadow             :  global.saved_shadow                ,
    saved_vulcano            :  global.saved_vulcano               ,
    
    dia_jungleMerch_f_talk   :  global.dia_jungleMerch_f_talk      ,
    dia_desertMerch_f_talk   :  global.dia_desertMerch_f_talk      ,
    dia_snowMerch_f_talk     :  global.dia_snowMerch_f_talk        ,
    dia_shadowMerch_f_talk   :  global.dia_shadowMerch_f_talk      ,
    dia_vulcanoMerch_f_talk  :  global.dia_vulcanoMerch_f_talk     ,
    
    dia_jake                 :  global.dia_jake                    ,
    dia_pew                  :  global.dia_pew                     ,
    dia_sully                :  global.dia_sully                   ,
    dia_petro                :  global.dia_petro                   ,
    dia_bonnie               :  global.dia_bonnie                  ,

    dia_jnpc                 :  global.dia_jnpc                    ,
    dia_dnpc                 :  global.dia_dnpc                    ,
    dia_snpc                 :  global.dia_snpc                    ,
    dia_gnpc                 :  global.dia_gnpc                    ,
    dia_lnpc                 :  global.dia_lnpc                    ,
    
    // Получение ХП
    
    dia_hpmana_jake          :  global.dia_hpmana_jake             ,
    dia_hpmana_pew           :  global.dia_hpmana_pew              ,
    dia_hpmana_sully         :  global.dia_hpmana_sully            ,
    dia_hpmana_petro         :  global.dia_hpmana_petro            ,
    dia_hpmana_bonnie        :  global.dia_hpmana_bonnie           ,
    
    
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
    
    //возможность апгрейда человек
    
    shop_axe_can_upgrade1        :    global.shop_axe_can_upgrade1     ,
    shop_axe_can_upgrade2        :    global.shop_axe_can_upgrade2     ,
    shop_bomb_can_upgrade1       :    global.shop_bomb_can_upgrade1    ,
    shop_bomb_can_upgrade2       :    global.shop_bomb_can_upgrade2    ,
    shop_sparkle_can_upgrade1    :    global.shop_sparkle_can_upgrade1 ,
    shop_sparkle_can_upgrade2    :    global.shop_sparkle_can_upgrade2 ,
    shop_eparrot_can_upgrade1    :    global.shop_eparrot_can_upgrade1 ,
    shop_eparrot_can_upgrade2    :    global.shop_eparrot_can_upgrade2 ,
    
    // Апгрейд Человек
    
    purch_anch1         : global.purch_anch1    ,
    purch_anch2         : global.purch_anch2    ,
    purch_anch3         : global.purch_anch3    ,
    purch_bomb1         : global.purch_bomb1    ,
    purch_bomb2         : global.purch_bomb2    ,
    purch_bomb3         : global.purch_bomb3    ,
    purch_sparkle1      : global.purch_sparkle1 ,
    purch_sparkle2      : global.purch_sparkle2 ,
    purch_sparkle3      : global.purch_sparkle3 ,
    purch_eparrot1      : global.purch_eparrot1 ,
    purch_eparrot2      : global.purch_eparrot2 ,
    purch_eparrot3      : global.purch_eparrot3 ,
    
    // Возможность Апгрейда лодки
    
    shop_dualpistols_can_upgrade1     : global.shop_dualpistols_can_upgrade1,
    shop_dualpistols_can_upgrade2     : global.shop_dualpistols_can_upgrade2,
    shop_rapidfire_can_upgrade1       : global.shop_rapidfire_can_upgrade1  ,
    shop_rapidfire_can_upgrade2       : global.shop_rapidfire_can_upgrade2  ,
    shop_dualpistols_can_upgrade1     : global.shop_dualpistols_can_upgrade1,
    shop_dualpistols_can_upgrade2     : global.shop_dualpistols_can_upgrade2,
    shop_blunderbuss_can_upgrade1     : global.shop_blunderbuss_can_upgrade1,
    shop_blunderbuss_can_upgrade2     : global.shop_blunderbuss_can_upgrade2,
    shop_parrotcage_can_upgrade1      : global.shop_parrotcage_can_upgrade1 ,
    shop_parrotcage_can_upgrade2      : global.shop_parrotcage_can_upgrade2 ,
    
    // Апгрейд лодки
        
    purch_rapidfire1    : global.purch_rapidfire1   ,
    purch_rapidfire2    : global.purch_rapidfire2   ,
    purch_rapidfire3    : global.purch_rapidfire3   ,
    purch_dualpistols1  : global.purch_dualpistols1 ,
    purch_dualpistols2  : global.purch_dualpistols2 ,
    purch_dualpistols3  : global.purch_dualpistols3 ,
    purch_blunderbuss1  : global.purch_blunderbuss1 ,
    purch_blunderbuss2  : global.purch_blunderbuss2 ,
    purch_blunderbuss3  : global.purch_blunderbuss3 ,
    purch_parrotcage1   : global.purch_parrotcage1  ,
    purch_parrotcage2   : global.purch_parrotcage2  ,
    purch_parrotcage3   : global.purch_parrotcage3  ,
    
    // Завершенность уровней
    
    completed_JF1 : global.completed_JF1,
    completed_JF2 : global.completed_JF2,
    
    completed_PD1 : global.completed_PD1,
    completed_PD2 : global.completed_PD2,
    
    completed_PS1 : global.completed_PS1,
    completed_PS2 : global.completed_PS2,
    
    completed_PG1 : global.completed_PG1,
    completed_PG2 : global.completed_PG2,
    
    completed_PL1 : global.completed_PL1,
    completed_PL2 : global.completed_PL2,
    
    completedJungle   : global.completedJungle  ,
    completedDesert   : global.completedDesert  ,
    completedSnow     : global.completedSnow    ,
    completedShadow   : global.completedShadow  ,
    completedLava     : global.completedLava    ,
    
    // Важные Катсцены
    
    Cutscene_f1_r33   :  global.Cutscene_f1_r33  ,
    Cutscene_dp1_r16  :  global.Cutscene_dp1_r16 ,
    Cutscene_sp1_r14  :  global.Cutscene_sp1_r14 ,
    Cutscene_pg1_r17  :  global.Cutscene_pg1_r17 ,
    Cutscene_pl1_r15  :  global.Cutscene_pl1_r15 ,
    
     
    Cutscene_jp2_r15  :  global.Cutscene_jp2_r15 ,
    Cutscene_pd2_r15  :  global.Cutscene_pd2_r15 ,
    Cutscene_sp2_r14  :  global.Cutscene_sp2_r14 ,
    Cutscene_gp2_r14  :  global.Cutscene_gp2_r14 ,
    Cutscene_lp2_r16  :  global.Cutscene_lp2_r16 ,
    
    Cutscene_di_lastboss :  global.Cutscene_di_lastboss,
    
    #region chest tutor
    itemtutor_chest_j  :  global.itemtutor_chest_j ,
    itemtutor_chest_d  :  global.itemtutor_chest_d ,
    itemtutor_chest_s  :  global.itemtutor_chest_s ,
    itemtutor_chest_g  :  global.itemtutor_chest_g ,
    itemtutor_chest_l  :  global.itemtutor_chest_l ,
    #endregion
    
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
    
    #region Desert
    
    #region Сундуки
    chest_d1_r2  : global.chest_d1_r2  ,
    chest_d1_r6  : global.chest_d1_r6  ,
    chest_d1_r10 : global.chest_d1_r10 ,
    chest_d1_r15 : global.chest_d1_r15 ,
    #endregion
    
    #region Монеты
    secrets_d1_s1        : global.secrets_d1_s1       ,
    secrets_d1_s2        : global.secrets_d1_s2       ,
    secrets_d1_s3        : global.secrets_d1_s3       ,
    secrets_d_endurance  : global.secrets_d_endurance ,
    #endregion
    
     /* 2 УРОВЕНЬ */
    #region Сундуки
    chest_d2_r3    :   global.chest_d2_r3  ,
    chest_d2_r7    :   global.chest_d2_r7  ,
    chest_d2b_r5   :   global.chest_d2b_r5 ,
    chest_d2p_r3   :   global.chest_d2p_r3 ,
    #endregion
     
    #region Монеты
    secrets_d2_r5    : global.secrets_d2_r5  ,
    secrets_d2b_s1   : global.secrets_d2b_s1 ,
    secrets_d2p_r4   : global.secrets_d2p_r4 ,
    #endregion
       
       
    #endregion
    
    #region Snow
    
    chest_s1_r3            : global.chest_s1_r3            ,
    chest_s1_r6            : global.chest_s1_r6            ,
    chest_s1_r11           : global.chest_s1_r11           ,
    chest_s1_r16           : global.chest_s1_r16           ,
                                                           
    secrets_s1_r7          : global.secrets_s1_r7          ,
    secrets_s1_r13         : global.secrets_s1_r13         ,
    secrets_s1_s1          : global.secrets_s1_s1          ,
                                                           
    secrets_sn_endurance   : global.secrets_sn_endurance   ,
                                                           
    chest_s2_r2            : global.chest_s2_r2            ,
    chest_s2_r7            : global.chest_s2_r7            ,
    chest_s2b_r3           : global.chest_s2b_r3           ,
    chest_s2p_r3           : global.chest_s2p_r3           ,
                                                           
    secrets_s2_s1          : global.secrets_s2_s1          ,
    secrets_s2b_r5         : global.secrets_s2b_r5         ,
    secrets_s2p_s          : global.secrets_s2p_s          ,
    
    #endregion
    
    #region Shadow
    
    chest_g1_r3          :  global.chest_g1_r3           ,
    chest_g1_r7          :  global.chest_g1_r7           ,
    chest_g1_r11         :  global.chest_g1_r11          ,
    chest_g1_r16         :  global.chest_g1_r16          ,
                                                         
    chest_g2_r4          :  global.chest_g2_r4           ,
    chest_g2_r7          :  global.chest_g2_r7           ,
    chest_g2b_r3         :  global.chest_g2b_r3          ,
    chest_g2p_r4         :  global.chest_g2p_r4          ,
                                                         
    secrets_g_endurance  :  global.secrets_g_endurance   ,
                                                         
    secrets_g1_s1        :  global.secrets_g1_s1         ,
    secrets_g1_r12       :  global.secrets_g1_r12        ,
    secrets_g1_s2        :  global.secrets_g1_s2         ,
                                                         
    secrets_g2_r6        :  global.secrets_g2_r6         ,
    secrets_g2b_s        :  global.secrets_g2b_s         ,
    secrets_g2p_r6       :  global.secrets_g2p_r6        ,
    
    #endregion
    
    #region Lava
    
    chest_l1_r3      :      global.chest_l1_r3         ,
    chest_l1_r5      :      global.chest_l1_r5         ,
    chest_l1_r10     :      global.chest_l1_r10        ,
    chest_l1_r15     :      global.chest_l1_r15        ,
                                                       
    chest_l2_r2      :      global.chest_l2_r2         ,
    chest_l2_r7      :      global.chest_l2_r7         ,
    chest_l2b_r3     :      global.chest_l2b_r3        ,
    chest_l2p_r4     :      global.chest_l2p_r4        ,
                                                       
    secrets_l_endurance  :  global.secrets_l_endurance ,
                                                       
    secrets_l1_r3      :    global.secrets_l1_r3       ,
    secrets_lava1_s1   :    global.secrets_lava1_s1    ,
    secrets_lava1_s2   :    global.secrets_lava1_s2    ,
                                                       
    secrets_l2_r3      :    global.secrets_l2_r3       ,
    secrets_l2b_r5     :    global.secrets_l2b_r5      ,
    secrets_l2p_s      :    global.secrets_l2p_s       ,
    
    #endregion
}

var _string = json_stringify(_saveStorage);
var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
var _bufferstring = buffer_base64_encode(_buffer,0,buffer_tell(_buffer));
//buffer_save(_buff_enconde, "EncodeBuff.save");
var _path = program_directory + "Progress.sav"
var _file = file_text_open_write(_path);
file_text_write_string(_file, _bufferstring);
file_text_close(_file);
buffer_delete(_buffer);	
}

function scr_load_progress(){
var _path = program_directory + "Progress.sav"
if file_exists(_path) {
	var _file = file_text_open_read(_path);
	var _bufferstring = file_text_read_string(_file);
	file_text_close(_file);
	var _buff = buffer_base64_decode(_bufferstring);
	// Check the buffer exists before reading from it
	var _string = buffer_read(_buff, buffer_string);
	show_debug_message("Decoded" + _string);
	var _loadStorage = json_parse(_string);
	
            global.Continue       =  _loadStorage.Continue;
            
			global.TargetRoom	  =  _loadStorage.TargetRoom  ;
			global.TargetX   	  =  _loadStorage.TargetX     ;
			global.TargetY   	  =  _loadStorage.TargetY     ;
			global.fTargetRoom	  =  _loadStorage.fTargetRoom ;
			global.fTargetX  	  =  _loadStorage.fTargetX    ;
			global.fTargetY  	  =  _loadStorage.fTargetY    ;
			
            global.hp_max                   =   _loadStorage.hp_max                 ; // max HP
            global.hp_add                   =   _loadStorage.hp_add                 ; 
            global.mana_max                 =   _loadStorage.mana_max               ;  
            global.mana_add                 =   _loadStorage.mana_add               ;  
            global.gold                     =   _loadStorage.gold                   ;
            global.darkessence              =   _loadStorage.darkessence            ;
            global.secrets                  =   _loadStorage.secrets                ;
            global.hp                       =   _loadStorage.hp                     ;                 
            global.mana                     =   _loadStorage.mana                   ;  
            global.ftp                      =   _loadStorage.ftp                    ;
            global.gold_prelevel            =   _loadStorage.gold_prelevel          ;     
            global.choosed_item             =   _loadStorage.choosed_item           ;     
            global.choosed_item_tier        =   _loadStorage.choosed_item_tier      ;
            global.choosed_itemboat         =   _loadStorage.choosed_itemboat       ; 
            global.choosed_itemboat_tier    =   _loadStorage.choosed_itemboat_tier  ;    
            global.money_saved              =   _loadStorage.money_saved            ;     
            global.darkessence_saved        =   _loadStorage.darkessence_saved      ;
            global.PlayerOnIsland           =   _loadStorage.PlayerOnIsland         ;   
            global.superattack1             =   _loadStorage.superattack1;
            global.superattack2             =   _loadStorage.superattack2;
            global.superattack3             =   _loadStorage.superattack3;
            global.dash  = _loadStorage.dash ;
            global.fhook = _loadStorage.hook ;
            
            global.PlayerTransition = _loadStorage.PlayerTransition;
            
            // Диалоги
            
            global.dia_jungleChief            = _loadStorage.dia_jungleChief         ;
            global.dia_desertChief            = _loadStorage.dia_desertChief         ;
            global.dia_snowChief              = _loadStorage.dia_snowChief           ;
            global.dia_shadowChief            = _loadStorage.dia_shadowChief         ;
            global.dia_lavaChief              = _loadStorage.dia_lavaChief           ;
                                                                                     
            global.dia_jungleMerch            = _loadStorage.dia_jungleMerch         ;
            global.dia_desertMerch            = _loadStorage.dia_desertMerch         ;
            global.dia_snowMerch              = _loadStorage.dia_snowMerch           ;
            global.dia_shadowMerch            = _loadStorage.dia_shadowMerch         ;
            global.dia_lavaMerch              = _loadStorage.dia_lavaMerch           ;
                                                                                     
            global.dia_jungleComt             = _loadStorage.dia_jungleComt          ;
            global.dia_desertComt             = _loadStorage.dia_desertComt          ;
            global.dia_snowComt               = _loadStorage.dia_snowComt            ;
            global.dia_shadowComt             = _loadStorage.dia_shadowComt          ;
            global.dia_lavaComt               = _loadStorage.dia_lavaComt            ;
                                                                                     
            global.saved_jungle               = _loadStorage.saved_jungle            ;
            global.saved_desert               = _loadStorage.saved_desert            ;
            global.saved_snow                 = _loadStorage.saved_snow              ;
            global.saved_shadow               = _loadStorage.saved_shadow            ;
            global.saved_vulcano              = _loadStorage.saved_vulcano           ;
                                                                                     
            global.dia_jungleMerch_f_talk     = _loadStorage.dia_jungleMerch_f_talk  ;
            global.dia_desertMerch_f_talk     = _loadStorage.dia_desertMerch_f_talk  ;
            global.dia_snowMerch_f_talk       = _loadStorage.dia_snowMerch_f_talk    ;
            global.dia_shadowMerch_f_talk     = _loadStorage.dia_shadowMerch_f_talk  ;
            global.dia_vulcanoMerch_f_talk    = _loadStorage.dia_vulcanoMerch_f_talk ;
    
            global.dia_jake                   = _loadStorage.dia_jake                ;
            global.dia_pew                    = _loadStorage.dia_pew                 ;
            global.dia_sully                  = _loadStorage.dia_sully               ;
            global.dia_petro                  = _loadStorage.dia_petro               ;
            global.dia_bonnie                 = _loadStorage.dia_bonnie              ;
            
            global.dia_jnpc                   = _loadStorage.dia_jnpc                ;
            global.dia_dnpc                   = _loadStorage.dia_dnpc                ;
            global.dia_snpc                   = _loadStorage.dia_snpc                ;
            global.dia_gnpc                   = _loadStorage.dia_gnpc                ;
            global.dia_lnpc                   = _loadStorage.dia_lnpc                ;
            
            global.dia_hpmana_jake            = _loadStorage.dia_hpmana_jake         ;
            global.dia_hpmana_pew             = _loadStorage.dia_hpmana_pew          ;
            global.dia_hpmana_sully           = _loadStorage.dia_hpmana_sully        ;
            global.dia_hpmana_petro           = _loadStorage.dia_hpmana_petro        ;
            global.dia_hpmana_bonnie          = _loadStorage.dia_hpmana_bonnie       ;
            
            
            
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
            
            global.shop_axe_can_upgrade1        = _loadStorage.shop_axe_can_upgrade1     ;
            global.shop_axe_can_upgrade2        = _loadStorage.shop_axe_can_upgrade2     ;
            global.shop_bomb_can_upgrade1       = _loadStorage.shop_bomb_can_upgrade1    ;
            global.shop_bomb_can_upgrade2       = _loadStorage.shop_bomb_can_upgrade2    ;
            global.shop_sparkle_can_upgrade1    = _loadStorage.shop_sparkle_can_upgrade1 ;
            global.shop_sparkle_can_upgrade2    = _loadStorage.shop_sparkle_can_upgrade2 ;
            global.shop_eparrot_can_upgrade1    = _loadStorage.shop_eparrot_can_upgrade1 ;
            global.shop_eparrot_can_upgrade2    = _loadStorage.shop_eparrot_can_upgrade2 ;
            
            // Апгрейды якоря
            
            global.purch_anch1    = _loadStorage.purch_anch1    ;
            global.purch_anch2    = _loadStorage.purch_anch2    ;
            global.purch_anch3    = _loadStorage.purch_anch3    ;
            global.purch_bomb1    = _loadStorage.purch_bomb1    ;
            global.purch_bomb2    = _loadStorage.purch_bomb2    ;
            global.purch_bomb3    = _loadStorage.purch_bomb3    ;
            global.purch_sparkle1 = _loadStorage.purch_sparkle1 ;
            global.purch_sparkle2 = _loadStorage.purch_sparkle2 ;
            global.purch_sparkle3 = _loadStorage.purch_sparkle3 ;
            global.purch_eparrot1 = _loadStorage.purch_eparrot1 ;
            global.purch_eparrot2 = _loadStorage.purch_eparrot2 ;
            global.purch_eparrot3 = _loadStorage.purch_eparrot3 ;
            
            // апгрейды лодка
            
            // возможность апгрейда лодки
            
            global.shop_dualpistols_can_upgrade1 = _loadStorage.shop_dualpistols_can_upgrade1;
            global.shop_dualpistols_can_upgrade2 = _loadStorage.shop_dualpistols_can_upgrade2;
            global.shop_rapidfire_can_upgrade1   = _loadStorage.shop_rapidfire_can_upgrade1  ;
            global.shop_rapidfire_can_upgrade2   = _loadStorage.shop_rapidfire_can_upgrade2  ;
            global.shop_dualpistols_can_upgrade1 = _loadStorage.shop_dualpistols_can_upgrade1;
            global.shop_dualpistols_can_upgrade2 = _loadStorage.shop_dualpistols_can_upgrade2;
            global.shop_blunderbuss_can_upgrade1 = _loadStorage.shop_blunderbuss_can_upgrade1;
            global.shop_blunderbuss_can_upgrade2 = _loadStorage.shop_blunderbuss_can_upgrade2;
            global.shop_parrotcage_can_upgrade1  = _loadStorage.shop_parrotcage_can_upgrade1 ;
            global.shop_parrotcage_can_upgrade2  = _loadStorage.shop_parrotcage_can_upgrade2 ;
            
            // Апгрейды парных пистолей
    
            global.purch_rapidfire1    = _loadStorage.purch_rapidfire1   ;
            global.purch_rapidfire2    = _loadStorage.purch_rapidfire2   ;
            global.purch_rapidfire3    = _loadStorage.purch_rapidfire3   ;
            global.purch_dualpistols1  = _loadStorage.purch_dualpistols1 ;
            global.purch_dualpistols2  = _loadStorage.purch_dualpistols2 ;
            global.purch_dualpistols3  = _loadStorage.purch_dualpistols3 ;
            global.purch_blunderbuss1  = _loadStorage.purch_blunderbuss1 ;
            global.purch_blunderbuss2  = _loadStorage.purch_blunderbuss2 ;
            global.purch_blunderbuss3  = _loadStorage.purch_blunderbuss3 ;
            global.purch_parrotcage1   = _loadStorage.purch_parrotcage1  ;
            global.purch_parrotcage2   = _loadStorage.purch_parrotcage2  ;
            global.purch_parrotcage3   = _loadStorage.purch_parrotcage3  ;
    
            
            // Завершенность уровней
            
            global.completed_JF1 = _loadStorage.completed_JF1;
            global.completed_JF2 = _loadStorage.completed_JF2;
            
            global.completed_PD1 = _loadStorage.completed_PD1;
            global.completed_PD2 = _loadStorage.completed_PD2; 
            
            global.completed_PS1 = _loadStorage.completed_PS1;
            global.completed_PS2 = _loadStorage.completed_PS2;
            
            global.completed_PG1 = _loadStorage.completed_PG1;
            global.completed_PG2 = _loadStorage.completed_PG2;
            
            global.completed_PL1 = _loadStorage.completed_PL1;
            global.completed_PL2 = _loadStorage.completed_PL2;
            
            global.completedJungle  = _loadStorage.completedJungle ;
            global.completedDesert  = _loadStorage.completedDesert ;
            global.completedSnow    = _loadStorage.completedSnow   ;
            global.completedShadow  = _loadStorage.completedShadow ;
            global.completedLava    = _loadStorage.completedLava   ;
            
            // Катсцены
            
            global.Cutscene_f1_r33   = _loadStorage.Cutscene_f1_r33;
            global.Cutscene_dp1_r16  =  _loadStorage.Cutscene_dp1_r16;
            global.Cutscene_sp1_r14  =  _loadStorage.Cutscene_sp1_r14;
            global.Cutscene_pg1_r17  =  _loadStorage.Cutscene_pg1_r17;
            global.Cutscene_pl1_r15  =  _loadStorage.Cutscene_pl1_r15;
                                                     
            global.Cutscene_jp2_r15  =  _loadStorage.Cutscene_jp2_r15;
            global.Cutscene_pd2_r15  =  _loadStorage.Cutscene_pd2_r15;
            global.Cutscene_sp2_r14  =  _loadStorage.Cutscene_sp2_r14;
            global.Cutscene_gp2_r14  =  _loadStorage.Cutscene_gp2_r14;
            global.Cutscene_lp2_r16  =  _loadStorage.Cutscene_lp2_r16;
        
            global.Cutscene_di_lastboss = _loadStorage.Cutscene_di_lastboss;
            
            #region tutor chest
            
            global.itemtutor_chest_j = _loadStorage.itemtutor_chest_j;
            global.itemtutor_chest_d = _loadStorage.itemtutor_chest_d;
            global.itemtutor_chest_s = _loadStorage.itemtutor_chest_s;
            global.itemtutor_chest_g = _loadStorage.itemtutor_chest_g;
            global.itemtutor_chest_l = _loadStorage.itemtutor_chest_l;
            
            #endregion
            
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
            
            #region Desert
            
            #region Сундуки
            global.chest_d1_r2  = _loadStorage.chest_d1_r2  ;
            global.chest_d1_r6  = _loadStorage.chest_d1_r6  ;
            global.chest_d1_r10 = _loadStorage.chest_d1_r10 ;
            global.chest_d1_r15 = _loadStorage.chest_d1_r15 ;
            #endregion
            
            #region Монеты
            global.secrets_d1_s1        = _loadStorage.secrets_d1_s1      ;
            global.secrets_d1_s2        = _loadStorage.secrets_d1_s2      ;
            global.secrets_d1_s3        = _loadStorage.secrets_d1_s3      ;
            global.secrets_d_endurance  = _loadStorage.secrets_d_endurance;
            #endregion
            
             /* 2 УРОВЕНЬ */
            #region Сундуки
            global.chest_d2_r3    =  _loadStorage.chest_d2_r3  ;
            global.chest_d2_r7    =  _loadStorage.chest_d2_r7  ;
            global.chest_d2b_r5   =  _loadStorage.chest_d2b_r5 ;
            global.chest_d2p_r3   =  _loadStorage.chest_d2p_r3 ;
            #endregion
             
            #region Монеты
            global.secrets_d2_r5  =  _loadStorage.secrets_d2_r5  ;
            global.secrets_d2b_s1 =  _loadStorage.secrets_d2b_s1 ;
            global.secrets_d2p_r4 =  _loadStorage.secrets_d2p_r4 ;
            #endregion            
            
            #endregion
            
            #region Snow
            
            global.chest_s1_r3            = _loadStorage.chest_s1_r3          ;
            global.chest_s1_r6            = _loadStorage.chest_s1_r6          ;
            global.chest_s1_r11           = _loadStorage.chest_s1_r11         ;
            global.chest_s1_r16           = _loadStorage.chest_s1_r16         ;
                                                                              
            global.secrets_s1_r7          = _loadStorage.secrets_s1_r7        ;
            global.secrets_s1_r13         = _loadStorage.secrets_s1_r13       ;
            global.secrets_s1_s1          = _loadStorage.secrets_s1_s1        ;
                                                                              
            global.secrets_sn_endurance   = _loadStorage.secrets_sn_endurance ;
                                                                              
            global.chest_s2_r2            = _loadStorage.chest_s2_r2          ;
            global.chest_s2_r7            = _loadStorage.chest_s2_r7          ;
            global.chest_s2b_r3           = _loadStorage.chest_s2b_r3         ;
            global.chest_s2p_r3           = _loadStorage.chest_s2p_r3         ;
                                                                              
            global.secrets_s2_s1          = _loadStorage.secrets_s2_s1        ;
            global.secrets_s2b_r5         = _loadStorage.secrets_s2b_r5       ;
            global.secrets_s2p_s          = _loadStorage.secrets_s2p_s        ;
            
            #endregion
            
            #region Shadow
            
            global.chest_g1_r3          =  _loadStorage.chest_g1_r3         ;
            global.chest_g1_r7          =  _loadStorage.chest_g1_r7         ;
            global.chest_g1_r11         =  _loadStorage.chest_g1_r11        ;
            global.chest_g1_r16         =  _loadStorage.chest_g1_r16        ;
                                       
            global.chest_g2_r4          =  _loadStorage.chest_g2_r4         ;
            global.chest_g2_r7          =  _loadStorage.chest_g2_r7         ;
            global.chest_g2b_r3         =  _loadStorage.chest_g2b_r3        ;
            global.chest_g2p_r4         =  _loadStorage.chest_g2p_r4        ;
                                       
            global.secrets_g_endurance  =  _loadStorage.secrets_g_endurance ;
                                     
            global.secrets_g1_s1        =  _loadStorage.secrets_g1_s1       ;
            global.secrets_g1_r12       =  _loadStorage.secrets_g1_r12      ;
            global.secrets_g1_s2        =  _loadStorage.secrets_g1_s2       ;
                                      
            global.secrets_g2_r6        =  _loadStorage.secrets_g2_r6       ;
            global.secrets_g2b_s        =  _loadStorage.secrets_g2b_s       ;
            global.secrets_g2p_r6       =  _loadStorage.secrets_g2p_r6      ;
            
            #endregion
            
            #region Lava
            
            global.chest_l1_r3          =  _loadStorage.chest_l1_r3          ;
            global.chest_l1_r5          =  _loadStorage.chest_l1_r5          ;
            global.chest_l1_r10         =  _loadStorage.chest_l1_r10         ;
            global.chest_l1_r15         =  _loadStorage.chest_l1_r15         ;
                                       
            global.chest_l2_r2          =  _loadStorage.chest_l2_r2          ;
            global.chest_l2_r7          =  _loadStorage.chest_l2_r7          ;
            global.chest_l2b_r3         =  _loadStorage.chest_l2b_r3         ;
            global.chest_l2p_r4         =  _loadStorage.chest_l2p_r4         ;
                                      
            global.secrets_l_endurance  =  _loadStorage.secrets_l_endurance  ;
                                       
            global.secrets_l1_r3        =  _loadStorage.secrets_l1_r3        ;
            global.secrets_lava1_s1     =  _loadStorage.secrets_lava1_s1     ;
            global.secrets_lava1_s2     =  _loadStorage.secrets_lava1_s2     ;
                                       
            global.secrets_l2_r3        =  _loadStorage.secrets_l2_r3        ;
            global.secrets_l2b_r5       =  _loadStorage.secrets_l2b_r5       ;
            global.secrets_l2p_s        =  _loadStorage.secrets_l2p_s        ;
                              
            #endregion
	
	buffer_delete(_buff);
	if buffer_exists(_buff) show_debug_message("exists") else  show_debug_message("not exists")
}		
}

function scr_save_progress_old(){

// create var storage

var _saveStorage = 
{
	TargetRoom                  : global.TargetRoom	   ,
	TargetX                     : global.TargetX	   ,
	TargetY                     : global.TargetY	   ,
	fTargetRoom                 : global.fTargetRoom   ,
	fTargetX                    : global.fTargetX	   ,
	fTargetY                    : global.fTargetY	   ,
	
    hp_max                      : global.hp_max, // max HP
    hp_add                      : global.hp_add, // max HP
    mana_max                    : global.mana_max,
    mana_add                    : global.mana_add,
    gold                        : global.gold,
    darkessence                 : global.darkessence,
    secrets                     : global.secrets,
    hp                          : global.hp,
    mana                        : global.mana,
    ftp                         : global.ftp,
    gold_prelevel               : global.gold_prelevel,
    choosed_item                : global.choosed_item, // 1- бумер 2 -топ // 3 - бомба // 11 - арбалет
    choosed_item_tier           : global.choosed_item_tier, // ТИР предмета
    choosed_itemboat            : global.choosed_itemboat, // 1 - ? 2 - 2пистолета 
    choosed_itemboat_tier       : global.choosed_itemboat_tier, // ТИП предмета для лодки
    money_saved                 : global.money_saved,
    darkessence_saved           : global.darkessence_saved ,
    PlayerOnIsland              : global.PlayerOnIsland,
    
    superattack1 : global.superattack1,
    superattack2 : global.superattack2,
    superattack3 : global.superattack3,
    
    dash : global.dash ,
    hook : global.fhook,
    
    PlayerTransition : global.PlayerTransition,        
    
    // Диалоги
    
    dia_jungleChief          :  global.dia_jungleChief             ,
    dia_desertChief          :  global.dia_desertChief             ,
    dia_snowChief            :  global.dia_snowChief               ,
    dia_shadowChief          :  global.dia_shadowChief             ,
    dia_lavaChief            :  global.dia_lavaChief               ,
    
    dia_jungleMerch          :  global.dia_jungleMerch             ,
    dia_desertMerch          :  global.dia_desertMerch             ,
    dia_snowMerch            :  global.dia_snowMerch               , 
    dia_shadowMerch          :  global.dia_shadowMerch             ,
    dia_lavaMerch            :  global.dia_lavaMerch               ,
    
    dia_jungleComt           :  global.dia_jungleComt              ,
    dia_desertComt           :  global.dia_desertComt              ,
    dia_snowComt             :  global.dia_snowComt                ,
    dia_shadowComt           :  global.dia_shadowComt              ,
    dia_lavaComt             :  global.dia_lavaComt                ,
    
    saved_jungle             :  global.saved_jungle                ,
    saved_desert             :  global.saved_desert                ,
    saved_snow               :  global.saved_snow                  ,
    saved_shadow             :  global.saved_shadow                ,
    saved_vulcano            :  global.saved_vulcano               ,
    
    dia_jungleMerch_f_talk   :  global.dia_jungleMerch_f_talk      ,
    dia_desertMerch_f_talk   :  global.dia_desertMerch_f_talk      ,
    dia_snowMerch_f_talk     :  global.dia_snowMerch_f_talk        ,
    dia_shadowMerch_f_talk   :  global.dia_shadowMerch_f_talk      ,
    dia_vulcanoMerch_f_talk  :  global.dia_vulcanoMerch_f_talk     ,
    
    dia_jake                 :  global.dia_jake                    ,
    dia_pew                  :  global.dia_pew                     ,
    dia_sully                :  global.dia_sully                   ,
    dia_petro                :  global.dia_petro                   ,
    dia_bonnie               :  global.dia_bonnie                  ,

    dia_jnpc                 :  global.dia_jnpc                    ,
    dia_dnpc                 :  global.dia_dnpc                    ,
    dia_snpc                 :  global.dia_snpc                    ,
    dia_gnpc                 :  global.dia_gnpc                    ,
    dia_lnpc                 :  global.dia_lnpc                    ,
    
    // Получение ХП
    
    dia_hpmana_jake          :  global.dia_hpmana_jake             ,
    dia_hpmana_pew           :  global.dia_hpmana_pew              ,
    dia_hpmana_sully         :  global.dia_hpmana_sully            ,
    dia_hpmana_petro         :  global.dia_hpmana_petro            ,
    dia_hpmana_bonnie        :  global.dia_hpmana_bonnie           ,
    
    
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
    
    //возможность апгрейда человек
    
    shop_axe_can_upgrade1        :    global.shop_axe_can_upgrade1     ,
    shop_axe_can_upgrade2        :    global.shop_axe_can_upgrade2     ,
    shop_bomb_can_upgrade1       :    global.shop_bomb_can_upgrade1    ,
    shop_bomb_can_upgrade2       :    global.shop_bomb_can_upgrade2    ,
    shop_sparkle_can_upgrade1    :    global.shop_sparkle_can_upgrade1 ,
    shop_sparkle_can_upgrade2    :    global.shop_sparkle_can_upgrade2 ,
    shop_eparrot_can_upgrade1    :    global.shop_eparrot_can_upgrade1 ,
    shop_eparrot_can_upgrade2    :    global.shop_eparrot_can_upgrade2 ,
    
    // Апгрейд Человек
    
    purch_anch1         : global.purch_anch1    ,
    purch_anch2         : global.purch_anch2    ,
    purch_anch3         : global.purch_anch3    ,
    purch_bomb1         : global.purch_bomb1    ,
    purch_bomb2         : global.purch_bomb2    ,
    purch_bomb3         : global.purch_bomb3    ,
    purch_sparkle1      : global.purch_sparkle1 ,
    purch_sparkle2      : global.purch_sparkle2 ,
    purch_sparkle3      : global.purch_sparkle3 ,
    purch_eparrot1      : global.purch_eparrot1 ,
    purch_eparrot2      : global.purch_eparrot2 ,
    purch_eparrot3      : global.purch_eparrot3 ,
    
    // Возможность Апгрейда лодки
    
    shop_dualpistols_can_upgrade1     : global.shop_dualpistols_can_upgrade1,
    shop_dualpistols_can_upgrade2     : global.shop_dualpistols_can_upgrade2,
    shop_rapidfire_can_upgrade1       : global.shop_rapidfire_can_upgrade1  ,
    shop_rapidfire_can_upgrade2       : global.shop_rapidfire_can_upgrade2  ,
    shop_dualpistols_can_upgrade1     : global.shop_dualpistols_can_upgrade1,
    shop_dualpistols_can_upgrade2     : global.shop_dualpistols_can_upgrade2,
    shop_blunderbuss_can_upgrade1     : global.shop_blunderbuss_can_upgrade1,
    shop_blunderbuss_can_upgrade2     : global.shop_blunderbuss_can_upgrade2,
    shop_parrotcage_can_upgrade1      : global.shop_parrotcage_can_upgrade1 ,
    shop_parrotcage_can_upgrade2      : global.shop_parrotcage_can_upgrade2 ,
    
    // Апгрейд лодки
        
    purch_rapidfire1    : global.purch_rapidfire1   ,
    purch_rapidfire2    : global.purch_rapidfire2   ,
    purch_rapidfire3    : global.purch_rapidfire3   ,
    purch_dualpistols1  : global.purch_dualpistols1 ,
    purch_dualpistols2  : global.purch_dualpistols2 ,
    purch_dualpistols3  : global.purch_dualpistols3 ,
    purch_blunderbuss1  : global.purch_blunderbuss1 ,
    purch_blunderbuss2  : global.purch_blunderbuss2 ,
    purch_blunderbuss3  : global.purch_blunderbuss3 ,
    purch_parrotcage1   : global.purch_parrotcage1  ,
    purch_parrotcage2   : global.purch_parrotcage2  ,
    purch_parrotcage3   : global.purch_parrotcage3  ,
    
    // Завершенность уровней
    
    completed_JF1 : global.completed_JF1,
    completed_JF2 : global.completed_JF2,
    
    completed_PD1 : global.completed_PD1,
    completed_PD2 : global.completed_PD2,
    
    completed_PS1 : global.completed_PS1,
    completed_PS2 : global.completed_PS2,
    
    completed_PG1 : global.completed_PG1,
    completed_PG2 : global.completed_PG2,
    
    completed_PL1 : global.completed_PL1,
    completed_PL2 : global.completed_PL2,
    
    completedJungle   : global.completedJungle  ,
    completedDesert   : global.completedDesert  ,
    completedSnow     : global.completedSnow    ,
    completedShadow   : global.completedShadow  ,
    completedLava     : global.completedLava    ,
    
    // Важные Катсцены
    
    Cutscene_f1_r33   :  global.Cutscene_f1_r33  ,
    Cutscene_dp1_r16  :  global.Cutscene_dp1_r16 ,
    Cutscene_sp1_r14  :  global.Cutscene_sp1_r14 ,
    Cutscene_pg1_r17  :  global.Cutscene_pg1_r17 ,
    Cutscene_pl1_r15  :  global.Cutscene_pl1_r15 ,
    
     
    Cutscene_jp2_r15  :  global.Cutscene_jp2_r15 ,
    Cutscene_pd2_r15  :  global.Cutscene_pd2_r15 ,
    Cutscene_sp2_r14  :  global.Cutscene_sp2_r14 ,
    Cutscene_gp2_r14  :  global.Cutscene_gp2_r14 ,
    Cutscene_lp2_r16  :  global.Cutscene_lp2_r16 ,
    
    Cutscene_di_lastboss :  global.Cutscene_di_lastboss,
    
    #region chest tutor
    itemtutor_chest_j  :  global.itemtutor_chest_j ,
    itemtutor_chest_d  :  global.itemtutor_chest_d ,
    itemtutor_chest_s  :  global.itemtutor_chest_s ,
    itemtutor_chest_g  :  global.itemtutor_chest_g ,
    itemtutor_chest_l  :  global.itemtutor_chest_l ,
    #endregion
    
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
    
    #region Desert
    
    #region Сундуки
    chest_d1_r2  : global.chest_d1_r2  ,
    chest_d1_r6  : global.chest_d1_r6  ,
    chest_d1_r10 : global.chest_d1_r10 ,
    chest_d1_r15 : global.chest_d1_r15 ,
    #endregion
    
    #region Монеты
    secrets_d1_s1        : global.secrets_d1_s1       ,
    secrets_d1_s2        : global.secrets_d1_s2       ,
    secrets_d1_s3        : global.secrets_d1_s3       ,
    secrets_d_endurance  : global.secrets_d_endurance ,
    #endregion
    
     /* 2 УРОВЕНЬ */
    #region Сундуки
    chest_d2_r3    :   global.chest_d2_r3  ,
    chest_d2_r7    :   global.chest_d2_r7  ,
    chest_d2b_r5   :   global.chest_d2b_r5 ,
    chest_d2p_r3   :   global.chest_d2p_r3 ,
    #endregion
     
    #region Монеты
    secrets_d2_r5    : global.secrets_d2_r5  ,
    secrets_d2b_s1   : global.secrets_d2b_s1 ,
    secrets_d2p_r4   : global.secrets_d2p_r4 ,
    #endregion
       
       
    #endregion
    
    #region Snow
    
    chest_s1_r3            : global.chest_s1_r3            ,
    chest_s1_r6            : global.chest_s1_r6            ,
    chest_s1_r11           : global.chest_s1_r11           ,
    chest_s1_r16           : global.chest_s1_r16           ,
                                                           
    secrets_s1_r7          : global.secrets_s1_r7          ,
    secrets_s1_r13         : global.secrets_s1_r13         ,
    secrets_s1_s1          : global.secrets_s1_s1          ,
                                                           
    secrets_sn_endurance   : global.secrets_sn_endurance   ,
                                                           
    chest_s2_r2            : global.chest_s2_r2            ,
    chest_s2_r7            : global.chest_s2_r7            ,
    chest_s2b_r3           : global.chest_s2b_r3           ,
    chest_s2p_r3           : global.chest_s2p_r3           ,
                                                           
    secrets_s2_s1          : global.secrets_s2_s1          ,
    secrets_s2b_r5         : global.secrets_s2b_r5         ,
    secrets_s2p_s          : global.secrets_s2p_s          ,
    
    #endregion
    
    #region Shadow
    
    chest_g1_r3          :  global.chest_g1_r3           ,
    chest_g1_r7          :  global.chest_g1_r7           ,
    chest_g1_r11         :  global.chest_g1_r11          ,
    chest_g1_r16         :  global.chest_g1_r16          ,
                                                         
    chest_g2_r4          :  global.chest_g2_r4           ,
    chest_g2_r7          :  global.chest_g2_r7           ,
    chest_g2b_r3         :  global.chest_g2b_r3          ,
    chest_g2p_r4         :  global.chest_g2p_r4          ,
                                                         
    secrets_g_endurance  :  global.secrets_g_endurance   ,
                                                         
    secrets_g1_s1        :  global.secrets_g1_s1         ,
    secrets_g1_r12       :  global.secrets_g1_r12        ,
    secrets_g1_s2        :  global.secrets_g1_s2         ,
                                                         
    secrets_g2_r6        :  global.secrets_g2_r6         ,
    secrets_g2b_s        :  global.secrets_g2b_s         ,
    secrets_g2p_r6       :  global.secrets_g2p_r6        ,
    
    #endregion
    
    #region Lava
    
    chest_l1_r3      :      global.chest_l1_r3         ,
    chest_l1_r5      :      global.chest_l1_r5         ,
    chest_l1_r10     :      global.chest_l1_r10        ,
    chest_l1_r15     :      global.chest_l1_r15        ,
                                                       
    chest_l2_r2      :      global.chest_l2_r2         ,
    chest_l2_r7      :      global.chest_l2_r7         ,
    chest_l2b_r3     :      global.chest_l2b_r3        ,
    chest_l2p_r4     :      global.chest_l2p_r4        ,
                                                       
    secrets_l_endurance  :  global.secrets_l_endurance ,
                                                       
    secrets_l1_r3      :    global.secrets_l1_r3       ,
    secrets_lava1_s1   :    global.secrets_lava1_s1    ,
    secrets_lava1_s2   :    global.secrets_lava1_s2    ,
                                                       
    secrets_l2_r3      :    global.secrets_l2_r3       ,
    secrets_l2b_r5     :    global.secrets_l2b_r5      ,
    secrets_l2p_s      :    global.secrets_l2p_s       ,
    
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

function scr_load_progress_old(){

    if file_exists("save1.save")
    {
        var _buffer = buffer_load("save1.save");
        var _string = buffer_read(_buffer, buffer_string);
        buffer_delete(_buffer);
        
        var _loadStorage = json_parse(_string);
        
			global.TargetRoom	  =  _loadStorage.TargetRoom
			global.TargetX   	  =  _loadStorage.TargetX   
			global.TargetY   	  =  _loadStorage.TargetY   
			global.fTargetRoom	  =  _loadStorage.fTargetRoom
			global.fTargetX  	  =  _loadStorage.fTargetX  
			global.fTargetY  	  =  _loadStorage.fTargetY  
			
            global.hp_max                   =   _loadStorage.hp_max                 ; // max HP
            global.hp_add                   =   _loadStorage.hp_add                 ; 
            global.mana_max                 =   _loadStorage.mana_max               ;  
            global.mana_add                 =   _loadStorage.mana_add               ;  
            global.gold                     =   _loadStorage.gold                   ;
            global.darkessence              =   _loadStorage.darkessence            ;
            global.secrets                  =   _loadStorage.secrets                ;
            global.hp                       =   _loadStorage.hp                     ;                 
            global.mana                     =   _loadStorage.mana                   ;  
            global.ftp                      =   _loadStorage.ftp                    ;
            global.gold_prelevel            =   _loadStorage.gold_prelevel          ;     
            global.choosed_item             =   _loadStorage.choosed_item           ;     
            global.choosed_item_tier        =   _loadStorage.choosed_item_tier      ;
            global.choosed_itemboat         =   _loadStorage.choosed_itemboat       ; 
            global.choosed_itemboat_tier    =   _loadStorage.choosed_itemboat_tier  ;    
            global.money_saved              =   _loadStorage.money_saved            ;     
            global.darkessence_saved        =   _loadStorage.darkessence_saved      ;
            global.PlayerOnIsland           =   _loadStorage.PlayerOnIsland         ;   
            global.superattack1             =   _loadStorage.superattack1;
            global.superattack2             =   _loadStorage.superattack2;
            global.superattack3             =   _loadStorage.superattack3;
            global.dash  = _loadStorage.dash ;
            global.fhook = _loadStorage.hook ;
            
            global.PlayerTransition = _loadStorage.PlayerTransition;
            
            // Диалоги
            
            global.dia_jungleChief            = _loadStorage.dia_jungleChief         ;
            global.dia_desertChief            = _loadStorage.dia_desertChief         ;
            global.dia_snowChief              = _loadStorage.dia_snowChief           ;
            global.dia_shadowChief            = _loadStorage.dia_shadowChief         ;
            global.dia_lavaChief              = _loadStorage.dia_lavaChief           ;
                                                                                     
            global.dia_jungleMerch            = _loadStorage.dia_jungleMerch         ;
            global.dia_desertMerch            = _loadStorage.dia_desertMerch         ;
            global.dia_snowMerch              = _loadStorage.dia_snowMerch           ;
            global.dia_shadowMerch            = _loadStorage.dia_shadowMerch         ;
            global.dia_lavaMerch              = _loadStorage.dia_lavaMerch           ;
                                                                                     
            global.dia_jungleComt             = _loadStorage.dia_jungleComt          ;
            global.dia_desertComt             = _loadStorage.dia_desertComt          ;
            global.dia_snowComt               = _loadStorage.dia_snowComt            ;
            global.dia_shadowComt             = _loadStorage.dia_shadowComt          ;
            global.dia_lavaComt               = _loadStorage.dia_lavaComt            ;
                                                                                     
            global.saved_jungle               = _loadStorage.saved_jungle            ;
            global.saved_desert               = _loadStorage.saved_desert            ;
            global.saved_snow                 = _loadStorage.saved_snow              ;
            global.saved_shadow               = _loadStorage.saved_shadow            ;
            global.saved_vulcano              = _loadStorage.saved_vulcano           ;
                                                                                     
            global.dia_jungleMerch_f_talk     = _loadStorage.dia_jungleMerch_f_talk  ;
            global.dia_desertMerch_f_talk     = _loadStorage.dia_desertMerch_f_talk  ;
            global.dia_snowMerch_f_talk       = _loadStorage.dia_snowMerch_f_talk    ;
            global.dia_shadowMerch_f_talk     = _loadStorage.dia_shadowMerch_f_talk  ;
            global.dia_vulcanoMerch_f_talk    = _loadStorage.dia_vulcanoMerch_f_talk ;
    
            global.dia_jake                   = _loadStorage.dia_jake                ;
            global.dia_pew                    = _loadStorage.dia_pew                 ;
            global.dia_sully                  = _loadStorage.dia_sully               ;
            global.dia_petro                  = _loadStorage.dia_petro               ;
            global.dia_bonnie                 = _loadStorage.dia_bonnie              ;
            
            global.dia_jnpc                   = _loadStorage.dia_jnpc                ;
            global.dia_dnpc                   = _loadStorage.dia_dnpc                ;
            global.dia_snpc                   = _loadStorage.dia_snpc                ;
            global.dia_gnpc                   = _loadStorage.dia_gnpc                ;
            global.dia_lnpc                   = _loadStorage.dia_lnpc                ;
            
            global.dia_hpmana_jake            = _loadStorage.dia_hpmana_jake         ;
            global.dia_hpmana_pew             = _loadStorage.dia_hpmana_pew          ;
            global.dia_hpmana_sully           = _loadStorage.dia_hpmana_sully        ;
            global.dia_hpmana_petro           = _loadStorage.dia_hpmana_petro        ;
            global.dia_hpmana_bonnie          = _loadStorage.dia_hpmana_bonnie       ;
            
            
            
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
            
            global.shop_axe_can_upgrade1        = _loadStorage.shop_axe_can_upgrade1     ;
            global.shop_axe_can_upgrade2        = _loadStorage.shop_axe_can_upgrade2     ;
            global.shop_bomb_can_upgrade1       = _loadStorage.shop_bomb_can_upgrade1    ;
            global.shop_bomb_can_upgrade2       = _loadStorage.shop_bomb_can_upgrade2    ;
            global.shop_sparkle_can_upgrade1    = _loadStorage.shop_sparkle_can_upgrade1 ;
            global.shop_sparkle_can_upgrade2    = _loadStorage.shop_sparkle_can_upgrade2 ;
            global.shop_eparrot_can_upgrade1    = _loadStorage.shop_eparrot_can_upgrade1 ;
            global.shop_eparrot_can_upgrade2    = _loadStorage.shop_eparrot_can_upgrade2 ;
            
            // Апгрейды якоря
            
            global.purch_anch1    = _loadStorage.purch_anch1    ;
            global.purch_anch2    = _loadStorage.purch_anch2    ;
            global.purch_anch3    = _loadStorage.purch_anch3    ;
            global.purch_bomb1    = _loadStorage.purch_bomb1    ;
            global.purch_bomb2    = _loadStorage.purch_bomb2    ;
            global.purch_bomb3    = _loadStorage.purch_bomb3    ;
            global.purch_sparkle1 = _loadStorage.purch_sparkle1 ;
            global.purch_sparkle2 = _loadStorage.purch_sparkle2 ;
            global.purch_sparkle3 = _loadStorage.purch_sparkle3 ;
            global.purch_eparrot1 = _loadStorage.purch_eparrot1 ;
            global.purch_eparrot2 = _loadStorage.purch_eparrot2 ;
            global.purch_eparrot3 = _loadStorage.purch_eparrot3 ;
            
            // апгрейды лодка
            
            // возможность апгрейда лодки
            
            global.shop_dualpistols_can_upgrade1 = _loadStorage.shop_dualpistols_can_upgrade1;
            global.shop_dualpistols_can_upgrade2 = _loadStorage.shop_dualpistols_can_upgrade2;
            global.shop_rapidfire_can_upgrade1   = _loadStorage.shop_rapidfire_can_upgrade1  ;
            global.shop_rapidfire_can_upgrade2   = _loadStorage.shop_rapidfire_can_upgrade2  ;
            global.shop_dualpistols_can_upgrade1 = _loadStorage.shop_dualpistols_can_upgrade1;
            global.shop_dualpistols_can_upgrade2 = _loadStorage.shop_dualpistols_can_upgrade2;
            global.shop_blunderbuss_can_upgrade1 = _loadStorage.shop_blunderbuss_can_upgrade1;
            global.shop_blunderbuss_can_upgrade2 = _loadStorage.shop_blunderbuss_can_upgrade2;
            global.shop_parrotcage_can_upgrade1  = _loadStorage.shop_parrotcage_can_upgrade1 ;
            global.shop_parrotcage_can_upgrade2  = _loadStorage.shop_parrotcage_can_upgrade2 ;
            
            // Апгрейды парных пистолей
    
            global.purch_rapidfire1    = _loadStorage.purch_rapidfire1   ;
            global.purch_rapidfire2    = _loadStorage.purch_rapidfire2   ;
            global.purch_rapidfire3    = _loadStorage.purch_rapidfire3   ;
            global.purch_dualpistols1  = _loadStorage.purch_dualpistols1 ;
            global.purch_dualpistols2  = _loadStorage.purch_dualpistols2 ;
            global.purch_dualpistols3  = _loadStorage.purch_dualpistols3 ;
            global.purch_blunderbuss1  = _loadStorage.purch_blunderbuss1 ;
            global.purch_blunderbuss2  = _loadStorage.purch_blunderbuss2 ;
            global.purch_blunderbuss3  = _loadStorage.purch_blunderbuss3 ;
            global.purch_parrotcage1   = _loadStorage.purch_parrotcage1  ;
            global.purch_parrotcage2   = _loadStorage.purch_parrotcage2  ;
            global.purch_parrotcage3   = _loadStorage.purch_parrotcage3  ;
    
            
            // Завершенность уровней
            
            global.completed_JF1 = _loadStorage.completed_JF1;
            global.completed_JF2 = _loadStorage.completed_JF2;
            
            global.completed_PD1 = _loadStorage.completed_PD1;
            global.completed_PD2 = _loadStorage.completed_PD2; 
            
            global.completed_PS1 = _loadStorage.completed_PS1;
            global.completed_PS2 = _loadStorage.completed_PS2;
            
            global.completed_PG1 = _loadStorage.completed_PG1;
            global.completed_PG2 = _loadStorage.completed_PG2;
            
            global.completed_PL1 = _loadStorage.completed_PL1;
            global.completed_PL2 = _loadStorage.completed_PL2;
            
            global.completedJungle  = _loadStorage.completedJungle ;
            global.completedDesert  = _loadStorage.completedDesert ;
            global.completedSnow    = _loadStorage.completedSnow   ;
            global.completedShadow  = _loadStorage.completedShadow ;
            global.completedLava    = _loadStorage.completedLava   ;
            
            // Катсцены
            
            global.Cutscene_f1_r33   = _loadStorage.Cutscene_f1_r33;
            global.Cutscene_dp1_r16  =  _loadStorage.Cutscene_dp1_r16;
            global.Cutscene_sp1_r14  =  _loadStorage.Cutscene_sp1_r14;
            global.Cutscene_pg1_r17  =  _loadStorage.Cutscene_pg1_r17;
            global.Cutscene_pl1_r15  =  _loadStorage.Cutscene_pl1_r15;
                                                     
            global.Cutscene_jp2_r15  =  _loadStorage.Cutscene_jp2_r15;
            global.Cutscene_pd2_r15  =  _loadStorage.Cutscene_pd2_r15;
            global.Cutscene_sp2_r14  =  _loadStorage.Cutscene_sp2_r14;
            global.Cutscene_gp2_r14  =  _loadStorage.Cutscene_gp2_r14;
            global.Cutscene_lp2_r16  =  _loadStorage.Cutscene_lp2_r16;
        
            global.Cutscene_di_lastboss = _loadStorage.Cutscene_di_lastboss;
            
            #region tutor chest
            
            global.itemtutor_chest_j = _loadStorage.itemtutor_chest_j;
            global.itemtutor_chest_d = _loadStorage.itemtutor_chest_d;
            global.itemtutor_chest_s = _loadStorage.itemtutor_chest_s;
            global.itemtutor_chest_g = _loadStorage.itemtutor_chest_g;
            global.itemtutor_chest_l = _loadStorage.itemtutor_chest_l;
            
            #endregion
            
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
            
            #region Desert
            
            #region Сундуки
            global.chest_d1_r2  = _loadStorage.chest_d1_r2  ;
            global.chest_d1_r6  = _loadStorage.chest_d1_r6  ;
            global.chest_d1_r10 = _loadStorage.chest_d1_r10 ;
            global.chest_d1_r15 = _loadStorage.chest_d1_r15 ;
            #endregion
            
            #region Монеты
            global.secrets_d1_s1        = _loadStorage.secrets_d1_s1      ;
            global.secrets_d1_s2        = _loadStorage.secrets_d1_s2      ;
            global.secrets_d1_s3        = _loadStorage.secrets_d1_s3      ;
            global.secrets_d_endurance  = _loadStorage.secrets_d_endurance;
            #endregion
            
             /* 2 УРОВЕНЬ */
            #region Сундуки
            global.chest_d2_r3    =  _loadStorage.chest_d2_r3  ;
            global.chest_d2_r7    =  _loadStorage.chest_d2_r7  ;
            global.chest_d2b_r5   =  _loadStorage.chest_d2b_r5 ;
            global.chest_d2p_r3   =  _loadStorage.chest_d2p_r3 ;
            #endregion
             
            #region Монеты
            global.secrets_d2_r5  =  _loadStorage.secrets_d2_r5  ;
            global.secrets_d2b_s1 =  _loadStorage.secrets_d2b_s1 ;
            global.secrets_d2p_r4 =  _loadStorage.secrets_d2p_r4 ;
            #endregion            
            
            #endregion
            
            #region Snow
            
            global.chest_s1_r3            = _loadStorage.chest_s1_r3          ;
            global.chest_s1_r6            = _loadStorage.chest_s1_r6          ;
            global.chest_s1_r11           = _loadStorage.chest_s1_r11         ;
            global.chest_s1_r16           = _loadStorage.chest_s1_r16         ;
                                                                              
            global.secrets_s1_r7          = _loadStorage.secrets_s1_r7        ;
            global.secrets_s1_r13         = _loadStorage.secrets_s1_r13       ;
            global.secrets_s1_s1          = _loadStorage.secrets_s1_s1        ;
                                                                              
            global.secrets_sn_endurance   = _loadStorage.secrets_sn_endurance ;
                                                                              
            global.chest_s2_r2            = _loadStorage.chest_s2_r2          ;
            global.chest_s2_r7            = _loadStorage.chest_s2_r7          ;
            global.chest_s2b_r3           = _loadStorage.chest_s2b_r3         ;
            global.chest_s2p_r3           = _loadStorage.chest_s2p_r3         ;
                                                                              
            global.secrets_s2_s1          = _loadStorage.secrets_s2_s1        ;
            global.secrets_s2b_r5         = _loadStorage.secrets_s2b_r5       ;
            global.secrets_s2p_s          = _loadStorage.secrets_s2p_s        ;
            
            #endregion
            
            #region Shadow
            
            global.chest_g1_r3          =  _loadStorage.chest_g1_r3         ;
            global.chest_g1_r7          =  _loadStorage.chest_g1_r7         ;
            global.chest_g1_r11         =  _loadStorage.chest_g1_r11        ;
            global.chest_g1_r16         =  _loadStorage.chest_g1_r16        ;
                                       
            global.chest_g2_r4          =  _loadStorage.chest_g2_r4         ;
            global.chest_g2_r7          =  _loadStorage.chest_g2_r7         ;
            global.chest_g2b_r3         =  _loadStorage.chest_g2b_r3        ;
            global.chest_g2p_r4         =  _loadStorage.chest_g2p_r4        ;
                                       
            global.secrets_g_endurance  =  _loadStorage.secrets_g_endurance ;
                                     
            global.secrets_g1_s1        =  _loadStorage.secrets_g1_s1       ;
            global.secrets_g1_r12       =  _loadStorage.secrets_g1_r12      ;
            global.secrets_g1_s2        =  _loadStorage.secrets_g1_s2       ;
                                      
            global.secrets_g2_r6        =  _loadStorage.secrets_g2_r6       ;
            global.secrets_g2b_s        =  _loadStorage.secrets_g2b_s       ;
            global.secrets_g2p_r6       =  _loadStorage.secrets_g2p_r6      ;
            
            #endregion
            
            #region Lava
            
            global.chest_l1_r3          =  _loadStorage.chest_l1_r3          ;
            global.chest_l1_r5          =  _loadStorage.chest_l1_r5          ;
            global.chest_l1_r10         =  _loadStorage.chest_l1_r10         ;
            global.chest_l1_r15         =  _loadStorage.chest_l1_r15         ;
                                       
            global.chest_l2_r2          =  _loadStorage.chest_l2_r2          ;
            global.chest_l2_r7          =  _loadStorage.chest_l2_r7          ;
            global.chest_l2b_r3         =  _loadStorage.chest_l2b_r3         ;
            global.chest_l2p_r4         =  _loadStorage.chest_l2p_r4         ;
                                      
            global.secrets_l_endurance  =  _loadStorage.secrets_l_endurance  ;
                                       
            global.secrets_l1_r3        =  _loadStorage.secrets_l1_r3        ;
            global.secrets_lava1_s1     =  _loadStorage.secrets_lava1_s1     ;
            global.secrets_lava1_s2     =  _loadStorage.secrets_lava1_s2     ;
                                       
            global.secrets_l2_r3        =  _loadStorage.secrets_l2_r3        ;
            global.secrets_l2b_r5       =  _loadStorage.secrets_l2b_r5       ;
            global.secrets_l2p_s        =  _loadStorage.secrets_l2p_s        ;
                              
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
        select_key : global.select_key ,
        
        #endregion
        
        #region language
        
        language :  global.language ,
        
        #endregion
    }
    
// turn data into json 

    var _string = json_stringify(_saveSettings);
    var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
    buffer_write(_buffer, buffer_string, _string);
    buffer_save(_buffer, "CMsettingsN1.save");
	buffer_delete(_buffer);
    show_debug_message("Settings Saved! " + _string);
}

function scr_load_settings(){

if file_exists("CMsettingsN1.save")
    {
        var _buffer = buffer_load("CMsettingsN1.save");
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
        global.select_key =  _loadStorageSet.select_key ;
        #endregion
        
        #region Language
        
        global.language = _loadStorageSet.language ;
        
        #endregion
        
        show_debug_message("Settings Loaded! " + _string);
    }  

}
