fnc_msc_stop_play_slow()


if global.key_green2 = 0 {
   instance_create_depth(0,0,0,obj_gui_controller_bossj2);
   instance_create_depth(0,0,0,obj_boss2_controller);   
} else {
   instance_create_depth(0,0,0,obj_gui_controller);
   instance_create_depth(240,240,0,obj_chest_j2_boss);
}