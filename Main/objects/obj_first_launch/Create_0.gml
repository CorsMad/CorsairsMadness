/// @description Insert description here
// You can write your code in this editor
//Player stats

global.choosed_item = 2;
global.hp = 5;
global.hp_max = 5;
global.mana = 3;
global.mana_max = 3;
global.gold = 0;
global.secrets = 0;

scr_create_array_objects();
scr_create_array_gold();
scr_chest_controller()

#region Secrets in levels
global.secrets_l1_s1 = 1;
global.secrets_l1_s2 = 1
global.secrets_l1_s3 = 1;
#endregion

//Global transp

/*
global.TargetX = 16;
global.TargetY = 224;
global.TargetRoom = TEST;
*/

/*
global.TargetX = 166;
global.TargetY = 128;
global.TargetRoom = L1_r11;
*/

/*
global.TargetX = 48;
global.TargetY = 176;
global.TargetRoom = VID;
*/

// TESTROOM


global.TargetX = 48;
global.TargetY = 256;
global.TargetRoom = TESTROOM;


instance_create_depth(16,16,0,obj_Player);
instance_create_depth(16,16,0,obj_room_transition_to_loading);