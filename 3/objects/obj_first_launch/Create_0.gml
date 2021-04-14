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


//Global transp

/*
global.TargetX = 16;
global.TargetY = 224;
global.TargetRoom = L1_r1;
*/

/*
global.TargetX = 16;
global.TargetY = 128;
global.TargetRoom = L1_r25;
*/

// TESTROOM


global.TargetX = 98;
global.TargetY = 168;
global.TargetRoom = TESTROOM;



instance_create_depth(16,16,0,obj_Player);
instance_create_depth(16,16,0,obj_room_transition_to_loading);