/// @description Insert description here
// You can write your code in this editor
//Player stats


//global.controlScheme = 1; //!!!!!!!!!!!!!!!!!!!!!



global.hp = 3;           // 4
global.hp_max = 3;       // 4
global.choosed_item = 0; // 1- бумер 2 -топ // 3 - бомба // 11 - арбалет
global.mana = 3;
global.mana_max = 3;
global.gold = global.money_saved;          // 0
global.darkessence = global.darkessence_saved;

scr_create_array_objects();
scr_create_array_gold();
scr_chest_controller();

global.TargetX = 32;
global.TargetY = 96;
global.TargetRoom = Devlog3;


var i = instance_create_depth(16,16,0,obj_Player);
i.state = 0;
instance_create_depth(16,16,0,obj_room_transition_to_loading);
