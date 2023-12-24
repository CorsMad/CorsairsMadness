

if global.key_green1 = 0 {
   instance_create_depth(0,0,0,obj_gui_controller_boss1);
   instance_create_depth(0,0,0,obj_boss1_controller); 
   fnc_msc_stop_play();
} else {
   instance_create_depth(0,0,0,obj_gui_controller);
   instance_create_depth(240,256,0,obj_chest_j2_boss);
}