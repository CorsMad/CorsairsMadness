fnc_msc_stop_play_slow()

if global.key_red1 = 0 {
   instance_create_depth(0,0,0,obj_gui_controller_l1_boss);
   instance_create_depth(0,0,0,obj_lava_lvl1_container_boss);   
} else {
   instance_create_depth(0,0,0,obj_gui_controller);
   instance_create_depth(240,256,0,obj_chest_l2_boss);
}