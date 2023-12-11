/// @description Insert description here
// You can write your code in this editor
randomise();
global.TargetX      = 32;
global.TargetY      = 256;
global.TargetRoom   = TESTROOM;


global.fTargetX     = 32;
global.fTargetY     = 256;
global.fTargetRoom  = TESTROOM;


///////////////////* CHANGES Внести изменения в launch и saveload /////////////////////

global.dia_jnpc = 0;    //0
global.dia_dnpc = 0;    //0
global.dia_snpc = 0;    //0
global.dia_gnpc = 0;    //0
global.dia_lnpc = 0;    //0

global.dia_hpmana_jake   = 0;	 //0
global.dia_hpmana_pew    = 0;	 //0
global.dia_hpmana_sully  = 0;	 //0
global.dia_hpmana_petro  = 0;	 //0
global.dia_hpmana_bonnie = 0;	 //0

///////////////////////////////////////////////////////////////////////////////////////






instance_create_depth(0,0,0,obj_music_controller);

global.language = 0;

#region Завершеннсоть уровней
    
    global.completed_JF1 = 0;
    global.completed_JF2 = 0;
    
    global.completed_PD1 = 0;
    global.completed_PD2 = 0;
    
    global.completed_PS1 = 0;
    global.completed_PS2 = 0;
    
    global.completed_PG1 = 0;
    global.completed_PG2 = 0;
    
    global.completed_PL1 = 0;
    global.completed_PL2 = 0;
        
        
    global.completedJungle = 0;    
    global.completedDesert = 0;    
    global.completedSnow = 0;    
    global.completedShadow = 0;    
    global.completedLava = 0;    
        
    #endregion
    
#region ТЕСТ
    
    //0
    global.dia_jungleChief = 0; 
    global.dia_desertChief = 0;
    global.dia_snowChief = 0;
    global.dia_shadowChief = 0;
    global.dia_lavaChief = 0;
    
    //0
    global.dia_jungleMerch = 0; 
    global.dia_desertMerch = 0; 
    global.dia_snowMerch = 0;     
    global.dia_shadowMerch = 0; 
    global.dia_lavaMerch = 0; 
    
    //2
    global.dia_jungleComt = 2; 
    global.dia_desertComt = 2;  
    global.dia_snowComt = 2; 
    global.dia_shadowComt = 2; 
    global.dia_lavaComt = 2;
     
    //0
    
    global.saved_jungle  = 0;  //0
    global.saved_desert  = 0;  //0
    global.saved_snow    = 0;  //0
    global.saved_shadow  = 0;  //0
    global.saved_vulcano = 0;  //0
    
    
    
    
    
    
    //0
    global.dia_jungleMerch_f_talk = 0;
    global.dia_desertMerch_f_talk = 0;
    global.dia_snowMerch_f_talk = 0;
    global.dia_shadowMerch_f_talk = 0;
    global.dia_vulcanoMerch_f_talk = 0;

    //0
    global.dia_jake = 0;
    global.dia_pew = 0;
    global.dia_sully = 0;
    global.dia_petro = 0;
    global.dia_bonnie = 0;


#endregion


#region  ключи
global.key_green1 = 0;
global.key_green2 = 0;

global.key_yellow1 = 0;
global.key_yellow2 = 0;

global.key_blue1 = 0;
global.key_blue2 = 0;

global.key_purple1 = 0;
global.key_purple2 = 0;

global.key_red1 = 0;
global.key_red2 = 0;
#endregion

#region ТЕСТ Магазин

global.shop_axe_can_upgrade1 = 0;
global.shop_axe_can_upgrade2 = 0;
global.shop_bomb_can_upgrade1 = 0;
global.shop_bomb_can_upgrade2 = 0;
global.shop_sparkle_can_upgrade1 = 0;
global.shop_sparkle_can_upgrade2 = 0;
global.shop_eparrot_can_upgrade1 = 0;
global.shop_eparrot_can_upgrade2 = 0;

global.shop_rapidfire_can_upgrade1 = 0;
global.shop_rapidfire_can_upgrade2 = 0;
global.shop_dualpistols_can_upgrade1 = 0;
global.shop_dualpistols_can_upgrade2 = 0;
global.shop_blunderbuss_can_upgrade1 = 0;
global.shop_blunderbuss_can_upgrade2 = 0;
global.shop_parrotcage_can_upgrade1 = 0;
global.shop_parrotcage_can_upgrade2 = 0;

#region Покупки человека

//якорь
global.purch_anch1 = 1;			//0
global.purch_anch2 = 1;			//0
global.purch_anch3 = 1;			//0
// Бомба						
global.purch_bomb1 = 1;			//0
global.purch_bomb2 = 1;			//0
global.purch_bomb3 = 1;			//0
// Sparkle						
global.purch_sparkle1 = 1;		//0
global.purch_sparkle2 = 1;		//0
global.purch_sparkle3 = 1;		//0
// Eparrot						
global.purch_eparrot1 = 1;		//0
global.purch_eparrot2 = 1;		//0
global.purch_eparrot3 = 1;		//0

#endregion

#region Покупки Лодки
// Быстровыстр
global.purch_rapidfire1 = 0;
global.purch_rapidfire2 = 0;
global.purch_rapidfire3 = 0;

//двойные пистолеты
global.purch_dualpistols1 = 0;
global.purch_dualpistols2 = 0;
global.purch_dualpistols3 = 0;

// blunderbuss
global.purch_blunderbuss1 = 0;
global.purch_blunderbuss2 = 0;
global.purch_blunderbuss3 = 0;

// parrot cage
global.purch_parrotcage1 = 0;
global.purch_parrotcage2 = 0;
global.purch_parrotcage3 = 0;

#endregion

#endregion


#region Игрок
global.hp = 5;           // 5
global.hp_max = 5;       // 5
global.hp_add = 0;       // 0
global.mana_add = 0;       // 0
global.choosed_item = 5; // 2 -тоорп // 3 - бомба // 4 - eball // 5 - parrot 
global.choosed_item_tier = 3; // ТИР предмета
global.choosed_itemboat = 3; // 1 - быстровыстрел 2 - 2пистолета  3-бландербасс - 4 - попугай
global.choosed_itemboat_tier = 3 // ТИП предмета для лодки
global.superattack1 = 2;// Суператаки  max 2  default - 0
global.superattack2 = 0;// Суператаки  max 1  default - 0
global.superattack3 = 0;// Суператаки  max 1  default - 0
global.PlayerTransition = 0;
global.mana = 3//3;
global.mana_max = 3;
global.gold = 10000 //global.money_saved;          // 0
global.gold_prelevel = 0;
global.darkessence = 5000//global.darkessence_saved;

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





/*
    global.fTargetX = 80;
    global.fTargetY = 80;
    global.fTargetRoom = F1_r40;
*/

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


global.MSCvolume = 0.5; //0.5
global.MSCvolume_max = global.MSCvolume;
global.SFXvolume = 0.5; //0.5

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

global.secrets = 10;

// Установка ограничений игрока

global.dash = 0;
global.fhook = 0; //0
global.ftp = 0; //0

// Положение на карте

global.PlayerOnIsland = 0;
        
#region Управление default

//global.left_key = vk_left;
//global.right_key = vk_right;
//global.up_key = vk_up;
//global.down_key = vk_down;
//global.jump_key = ord("Z");
//global.attack_key = ord("X");
//global.dash_key = ord("C");
//global.item_key = ord("S");
//global.abil_key = ord("A");
global.left_key   = ord("A")
global.right_key  = ord("D")
global.up_key     = ord("W")
global.down_key   = ord("S")
global.jump_key   = ord("K")
global.attack_key = ord("J");
global.dash_key   = ord("L");
global.item_key   = ord("I");
global.abil_key   = ord("U");

global.select_key = ord("O");

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

#region Desert

 /* 1 УРОВЕНЬ */

 
    #region Сундуки
    global.chest_d1_r2 = 1;
    global.chest_d1_r6 = 1;
    global.chest_d1_r10 = 1;
    global.chest_d1_r15 = 1;
    #endregion
    
    #region Монеты
    global.secrets_d1_s1 = 0;
    global.secrets_d1_s2 = 0;
    global.secrets_d1_s3 = 0;
    global.secrets_d_endurance = 0;
    #endregion

 /* 2 УРОВЕНЬ */
#region Сундуки
	global.chest_d2_r3 = 1;
	global.chest_d2_r7 = 1;
	global.chest_d2b_r5 = 1;
	global.chest_d2p_r3 = 1;
#endregion
 
 #region Монеты
	global.secrets_d2_r5 = 0;
	global.secrets_d2b_s1 = 0;
	global.secrets_d2p_r4 = 0;
 #endregion
 
 

    
#endregion

/*  CUTSCENES  */    
    #region Важные катсцены 
	//1
    global.Cutscene_f1_r33 = 1;    
    global.Cutscene_dp1_r16 = 1;
    global.Cutscene_sp1_r14 = 1;
    global.Cutscene_pg1_r17 = 1;
    global.Cutscene_pl1_r15 = 1;
    
     
    global.Cutscene_jp2_r15 = 1;
    global.Cutscene_pd2_r15 = 1;
    global.Cutscene_sp2_r14 = 1;
    global.Cutscene_gp2_r14 = 1;
    global.Cutscene_lp2_r16 = 1;
    
	
	global.Cutscene_di_lastboss = 1; //1
    #endregion





/*  ТЕСТ  */
#region S1

global.chest_s1_r3 = 1;
global.chest_s1_r6 = 1
global.chest_s1_r11 = 1;
global.chest_s1_r16 = 1;

global.secrets_s1_r7 = 0;
global.secrets_s1_r13 = 0;
global.secrets_s1_s1 = 0 

#endregion

global.secrets_sn_endurance = 0;

#region S2


global.chest_s2_r2 = 1;
global.chest_s2_r7 = 1;
global.chest_s2b_r3 = 1;
global.chest_s2p_r3 = 1;

global.secrets_s2_s1 = 0;
global.secrets_s2b_r5 = 0;
global.secrets_s2p_s = 0 

#endregion

#region LAVA



#region сундуки
global.chest_l1_r3 = 1;
global.chest_l1_r5 = 1;
global.chest_l1_r10 = 1;
global.chest_l1_r15 = 1;

global.chest_l2_r2 = 1;
global.chest_l2_r7 = 1;
global.chest_l2b_r3 = 1;
global.chest_l2p_r4 = 1;
#endregion

#region секреты

global.secrets_l_endurance = 0;


global.secrets_l1_r3 = 0;
global.secrets_lava1_s1 = 0;
global.secrets_lava1_s2 = 0;

global.secrets_l2_r3 = 0;
global.secrets_l2b_r5 = 0;
global.secrets_l2p_s = 0;

#endregion

#endregion

#region SHADOW



#region Сундуки
global.chest_g1_r3 = 1;
global.chest_g1_r7 = 1;
global.chest_g1_r11 = 1;
global.chest_g1_r16 = 1;

global.chest_g2_r4 = 1;
global.chest_g2_r7 = 1;
global.chest_g2b_r3 = 1;
global.chest_g2p_r4 = 1;

#endregion

#region Секреты
global.secrets_g_endurance = 0;

global.secrets_g1_s1 = 0;
global.secrets_g1_r12 = 0;
global.secrets_g1_s2 = 0;

global.secrets_g2_r6 = 0;
global.secrets_g2b_s = 0;
global.secrets_g2p_r6 = 0;
#endregion

#endregion


//surface_resize(application_surface, display_get_width(), display_get_height());
//display_reset(0, false);