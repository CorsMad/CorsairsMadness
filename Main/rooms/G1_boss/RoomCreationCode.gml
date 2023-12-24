

if global.key_purple1 = 0 {
   instance_create_depth(0,0,0,obj_gui_controller_bosssh1);
   instance_create_depth(0,0,0,obj_des_lvl1_boss);   
   fnc_msc_stop_play_slow()
} else {
   instance_create_depth(0,0,0,obj_gui_controller);
   instance_create_depth(240,256,0,obj_chest_sh2_boss);
}