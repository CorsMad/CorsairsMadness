
#region верхние

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

#endregion

#region нижние


for (var m1 = 0; m1 < 9; m1++;) {
    
   var n1 = instance_create_depth(408,616+16*m1,0,obj_block_boss_s2_floor_s2);
       n1.sprite_index = spr_destructable_tile_snow;
       n1.image_index = 19;      
    
   var n2 = instance_create_depth(424,616+16*m1,0,obj_block_boss_s2_floor_s2);
       n2.sprite_index = spr_destructable_tile_snow;
       n2.image_index = 19;  
    
   var n3 = instance_create_depth(440,616+16*m1,0,obj_block_boss_s2_floor_s2);
       n3.sprite_index = spr_destructable_tile_snow;
       n3.image_index = 19;  
    
   var n4 = instance_create_depth(456,616+16*m1,0,obj_block_boss_s2_floor_s2);
       n4.sprite_index = spr_destructable_tile_snow;
       n4.image_index = 19;  
    
   var n5 = instance_create_depth(472,616+16*m1,0,obj_block_boss_s2_floor_s2);
       n5.sprite_index = spr_destructable_tile_snow;
       n5.image_index = 19;  
 
}

for (var m2 = 0; m2 < 9; m2++;) {
    var o3 = instance_create_depth(384+8,608+8+16*m2,0,obj_block_boss_s2_floor_s2);
    o3.sprite_index = spr_destructable_tile_snow;
    o3.image_index = 6;
}


#endregion


state = 0;