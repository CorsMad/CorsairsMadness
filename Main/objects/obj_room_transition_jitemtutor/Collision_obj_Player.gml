/// @description Insert description here
// You can write your code in this editor

fnc_msc_stop_play_slow();
                                 
 global.TargetX = 448;
 global.TargetY = 240;
 global.TargetRoom = Village_jungle;  
 global.dia_jungleComt = 0.5;
 room_goto(VillageJunlgeFirstLoading);      
 instance_destroy(obj_Player);