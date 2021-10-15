/// @description Insert description here
// You can write your code in this editor
//Player stats


global.hp = 4;
global.hp_max = 4;
global.choosed_item = 2;
global.mana = 3;
global.mana_max = 3;
global.gold = 0;
global.secrets = 0;

scr_create_array_objects();
scr_create_array_gold();
scr_chest_controller()

//ТЕСТ

#region Cutscenes
    global.Cutscene_f1_r33 = 1;
#endregion

#region Music
    global.Music_controller_f1_r32 = 1;
#endregion

#region Secrets in levels
global.secrets_l1_s1 = 1;
global.secrets_l1_s2 = 1
global.secrets_l1_s3 = 1;
#endregion

//Global transp

//First Room

global.TargetX = 32;
global.TargetY = 112;
global.TargetRoom = F1_r1;


/*
global.TargetX = 32
global.TargetY = 96
global.TargetRoom = F1_r36
*/
// TESTROOM

/*
global.TargetX = 48;
global.TargetY = 256;
global.TargetRoom = TESTROOM;
*/

var i = instance_create_depth(16,16,0,obj_Player);
i.state = 1;
instance_create_depth(16,16,0,obj_room_transition_to_loading);


