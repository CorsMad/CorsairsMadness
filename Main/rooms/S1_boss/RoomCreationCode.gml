fnc_msc_stop_play_slow()

if global.key_blue1 = 0 {
   instance_create_depth(0,0,0,obj_gui_controller_s1_boss);
   instance_create_depth(0,0,0,obj_boss_s1_controller);  
   instance_create_depth(240,144,0,obj_boss_s1_phase1_appear)
} else {
   instance_create_depth(0,0,0,obj_gui_controller);
   instance_create_depth(160,256,0,obj_chest_s2_boss_start);
}