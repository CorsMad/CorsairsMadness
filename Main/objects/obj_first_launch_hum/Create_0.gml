/// @description Insert description here
// You can write your code in this editor
//Player stats


//global.controlScheme = 1; //!!!!!!!!!!!!!!!!!!!!!



global.hp = 4;           // 4
global.hp_max = 4;       // 4
global.choosed_item = 0; // 1- бумер 2 -топ // 3 - бомба // 11 - арбалет
global.mana = 3;
global.mana_max = 3;
global.gold = global.money_saved;          // 0



scr_create_array_objects();
scr_create_array_gold();
scr_chest_controller();

// Разные чекпоинты
global.boatCheckpoint = 0;

//ТЕСТ

#region Secrets in levels
global.secrets_l1_s1 = 1;
global.secrets_l1_s2 = 1
global.secrets_l1_s3 = 1;
#endregion

//Global transp

//First Room
/*
global.TargetX = 32;
global.TargetY = 224;
global.TargetRoom = L1_r1;
*/
/*
global.TargetX = 32;
global.TargetY = 224;
global.TargetRoom = GlobalMap;
*/
/*
global.TargetX = 54;
global.TargetY = 221;
global.TargetRoom = L1_boss_room;
*/

/*
#region SteamSCR

global.TargetX = 176;
global.TargetY = 176;
global.TargetRoom = SteamP1; 

#endregion
*/


#region CLIPS

/*
//Clip4
global.TargetX = 544;
global.TargetY = 192;
global.TargetRoom = Clip1;
*/

/*
//Clip2
global.TargetX = 1808;
global.TargetY = 160;
global.TargetRoom = Clip2;
*/

/*
//ClipBomb
global.TargetX = 272;
global.TargetY = 176;
global.TargetRoom = ClipBomb;
*/



/*
//Clip4
global.TargetX = 32;
global.TargetY = 240;
global.TargetRoom = Clip3;
*/

/*
//Clip4
global.TargetX = 528;
global.TargetY = 144;
global.TargetRoom = Clip4;
*/

/*
//Clip8
global.TargetX = 96;
global.TargetY = 224;
global.TargetRoom = Clip8;
*/

/*
//Clip9
global.TargetX = 128;
global.TargetY = 144;
global.TargetRoom = Clip9;
*/

/*
//Clip10
global.TargetX = 112;
global.TargetY = 224;
global.TargetRoom = Clip10;
*/

/*
//Clip11
global.TargetX = 80;
global.TargetY = 192;
global.TargetRoom = Clip11;
*/

/*
//Clip12
global.TargetX = 48;
global.TargetY = 160;
global.TargetRoom = Clip12;
*/

/*
//Clip14
global.TargetX = 48;
global.TargetY = 176;
global.TargetRoom = Clip14;
*/

/*
//Clip16
global.TargetX = 48;
global.TargetY = 96;
global.TargetRoom = Clip16;
*/

/*
//Clip171
global.TargetX = 128;
global.TargetY = 128;
global.TargetRoom = Clip171;
*/

/*
//Clip172
global.TargetX = 128;
global.TargetY = 128;
global.TargetRoom = Clip172;
*/

/*
//Clip173
global.TargetX = 128;
global.TargetY = 128;
global.TargetRoom = Clip173;
*/

/*
//Clip18
global.TargetX = 64;
global.TargetY = 240;
global.TargetRoom = Clip18;
*/

/*
//NewClipSnow1
global.TargetX = 32;
global.TargetY = 176;
global.TargetRoom = New_clip_snow1;
*/

/*
//NewClipSnow2
global.TargetX = 320;
global.TargetY = 96;
global.TargetRoom = New_clip_snow2;
*/

/*
//NewClipSand1
global.TargetX = 144;
global.TargetY = 144;
global.TargetRoom = New_clip_sand1;
*/

/*
//NewClipSand1
global.TargetX = 32;
global.TargetY = 192;
global.TargetRoom = New_clip_sand2;
*/

/*
//NewClipCemet1
global.TargetX = 256;
global.TargetY = 48;
global.TargetRoom = New_clip_cemetery1;
*/

/*
//NewClipCemet2
global.TargetX = 448;
global.TargetY = 192;
global.TargetRoom = New_clip_cemetery2;
*/

#endregion

var i = instance_create_depth(16,16,0,obj_Player);
i.state = 0;
instance_create_depth(16,16,0,obj_room_transition_to_loading);
