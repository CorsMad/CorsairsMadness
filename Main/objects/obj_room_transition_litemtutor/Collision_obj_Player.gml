/// @description Insert description here
// You can write your code in this editor
fnc_achiev_get("ACH22");
fnc_achiev_all();
fnc_msc_stop_play_slow();                                  
global.TargetX = 528;
global.TargetY = 240;
global.TargetRoom = Village_lava;  
global.dia_lavaComt = 0.5;
room_goto(VillageLavaFirstLoading);      
instance_destroy(obj_Player);