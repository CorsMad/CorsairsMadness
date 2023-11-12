fnc_msc_stop_play_slow();

if global.key_blue2 = 0 {
   instance_create_depth(0,0,0,obj_gui_controller_s2_boss);
   instance_create_depth(0,0,0,obj_snow_boss_controller); 
   instance_create_depth(336,224,201,obj_boss_s2_phase_appear);
} else {
   for (var i = 0; i < 28; i+=1) {
    var b1 = instance_create_depth(24+16*i,224+8,0,obj_block_boss_s2_floor_s1);
    b1.sprite_index = spr_destructable_tile_snow;
    b1.image_index = 1;
    }
    for (var k = 0; k < 28; k+=1) {
        var b2 = instance_create_depth(24+16*k,224+8+16,0,obj_block_boss_s2_floor_s1);
        b2.sprite_index = spr_destructable_tile_snow;
        b2.image_index = 4;
    
    } 
    
    
   instance_create_depth(0,0,0,obj_gui_controller);
   instance_create_depth(240,224,0,obj_chest_s2_boss_start);
}