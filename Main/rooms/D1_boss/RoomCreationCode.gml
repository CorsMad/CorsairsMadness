fnc_msc_stop_play_slow()

if global.key_yellow1 = 0 {
   instance_create_depth(0,0,0,obj_gui_controller_d1_boss);
   instance_create_depth(0,0,0,obj_boss1_d_controller);   
} else {
   instance_create_depth(0,0,0,obj_gui_controller);
   instance_create_depth(224,256,0,obj_chest_d2_boss);
}