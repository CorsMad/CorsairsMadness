/// @description Insert description here
// You can write your code in this editor
fnc_achiev_get("ACH19");
fnc_achiev_all();
fnc_msc_stop_play_slow();                                  
 global.TargetX = 468;
 global.TargetY = 240;
 global.TargetRoom = Village_desert;  
 global.dia_desertComt = 0.5;
 room_goto(VillageDesertFirstLoading);      
 instance_destroy(obj_Player);
 
 