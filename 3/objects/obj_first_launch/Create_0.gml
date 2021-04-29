/// @description Insert description here
// You can write your code in this editor
//Player stats

global.choosed_item = 2;
global.hp = 3;
global.hp_max = 4;
global.mana = 3;
global.mana_max = 3;
global.gold = 0;
global.secrets = 0;

#region Secrets in levels
global.secrets_l1_s1 = 1;
global.secrets_l1_s2 = 1
global.secrets_l1_s3 = 1;
#endregion

//Global transp
/*

global.TargetX = 16;
global.TargetY = 224;
global.TargetRoom = L1_r1;
*/
/*

global.TargetX = 960;
global.TargetY = 224;
global.TargetRoom = L1_s1_1;

*/


global.TargetX = 32;
global.TargetY = 256;
global.TargetRoom = L1_boss_room;


// TESTROOM

/*
global.TargetX = 98;
global.TargetY = 168;
global.TargetRoom = TESTROOM;
*/


instance_create_depth(16,16,0,obj_Player);
instance_create_depth(16,16,0,obj_room_transition_to_loading);