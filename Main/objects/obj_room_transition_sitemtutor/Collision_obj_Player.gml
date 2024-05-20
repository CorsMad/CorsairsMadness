/// @description Insert description here
// You can write your code in this editor
fnc_achiev_get("ACH20");
fnc_achiev_all();
fnc_msc_stop_play_slow();                                  
 global.TargetX = 352;
 global.TargetY = 240;
 global.TargetRoom = Village_snow;  
 global.dia_snowComt = 0.5;
 room_goto(VillageSnowFirstLoading);      
 instance_destroy(obj_Player);