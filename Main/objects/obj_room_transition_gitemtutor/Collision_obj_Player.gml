/// @description Insert description here
// You can write your code in this editor
fnc_achiev_get("ACH21");
fnc_achiev_all();
fnc_msc_stop_play_slow();                                  
global.TargetX = 512;
global.TargetY = 240;
global.TargetRoom = Village_shadow;  
global.dia_shadowComt = 0.5;
room_goto(VillageShadowFirstLoading);      
instance_destroy(obj_Player);