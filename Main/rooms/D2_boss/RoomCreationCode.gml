fnc_msc_stop_play_slow()


if global.key_yellow2 = 0 {
   instance_create_depth(0,0,0,obj_gui_controller_d2_boss);
   instance_create_depth(0,0,0,obj_boss_d2_phase1_controller);   
} else {
   instance_create_depth(0,0,0,obj_gui_controller);
   instance_create_depth(240,256,0,obj_chest_d2_boss);
}