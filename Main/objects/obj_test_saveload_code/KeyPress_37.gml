/// @description Insert description here
// You can write your code in this editor


///SAVE

//var _path = program_directory + "hi.txt"
//var _txt = file_text_open_write(_path);
//file_text_write_string(_txt, "Hi!");
//file_text_close(_txt);
var _saveStorage = {
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





/*
var _string = json_stringify(_saveStorage);
var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
var _bufferstring = buffer_base64_encode(_buffer,0,buffer_tell(_buffer));
//buffer_save(_buff_enconde, "EncodeBuff.save");
var _file = file_text_open_write("EncodeBuff.sav");
file_text_write_string(_file, _bufferstring);
file_text_close(_file);
buffer_delete(_buffer);

show_debug_message("Gave Saved! " + _string);




