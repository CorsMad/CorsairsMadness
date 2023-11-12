fnc_msc_stop_play_slow()


if global.key_purple2 = 0 {
   instance_create_depth(0,0,0,obj_gui_controller_bosssh2);
   instance_create_depth(0,0,0,obj_boss_g2_phase1_controller);   
} else {
   instance_create_depth(0,0,0,obj_gui_controller);
   instance_create_depth(256,256,0,obj_chest_sh2_boss);
}