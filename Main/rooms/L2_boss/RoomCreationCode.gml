fnc_msc_stop_play_slow()

if global.key_red2 = 0 {
   instance_create_depth(240,96,0,obj_boss_l2_phase1);
} else {
   instance_create_depth(240,256,0,obj_chest_l2_boss);
}