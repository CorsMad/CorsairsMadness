/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);
if (obj_Player.y > 80) {
    
#region 1

var i1 = instance_create_depth(440,104,100,obj_destrutable_chain_block_simple);
    i1.sprite_index = spr_destructable_tile_cemetery;
    i1.image_index = 3;

var i2 = instance_create_depth(440,120,100,obj_destrutable_chain_block_simple);
    i2.sprite_index = spr_destructable_tile_cemetery;
    i2.image_index = 6;

var i3 = instance_create_depth(440,136,100,obj_destrutable_chain_block_simple);
    i3.sprite_index = spr_destructable_tile_cemetery;
    i3.image_index = 3;
    
#endregion

#region 2
for (var k = 0; k<6; k+=1;) {
    var k1 = instance_create_depth(456,56+k*16,100,obj_destrutable_chain_block_simple);
    k1.sprite_index = spr_destructable_tile_cemetery;
    k1.image_index = 4;
}

for (var m = 0; m<6; m+=1;) {
    var m1 = instance_create_depth(472,56+m*16,100,obj_destrutable_chain_block_simple);
    m1.sprite_index = spr_destructable_tile_cemetery;
    m1.image_index = 4;
}

for (var n = 0; n<6; n+=1;) {
    var n1 = instance_create_depth(488,56+n*16,100,obj_destrutable_chain_block_simple);
    n1.sprite_index = spr_destructable_tile_cemetery;
    n1.image_index = 4;
}

for (var o = 0; o<6; o+=1;) {
    var o1 = instance_create_depth(504,56+o*16,100,obj_destrutable_chain_block_simple);
    o1.sprite_index = spr_destructable_tile_cemetery;
    o1.image_index = 4;
}
#endregion

#region 3

for (var p = 0; p<7; p+=1;) {
    var p1 = instance_create_depth(520,40+p*16,100,obj_destrutable_chain_block_simple);
    p1.sprite_index = spr_destructable_tile_cemetery;
    p1.image_index = 4;
}

for (var r = 0; r<7; r+=1;) {
    var r1 = instance_create_depth(536,40+r*16,100,obj_destrutable_chain_block_simple);
    r1.sprite_index = spr_destructable_tile_cemetery;
    r1.image_index = 4;
}
#endregion

#region 4
for (var s = 0; s<5; s+=1;) {
    var s1 = instance_create_depth(552,40+s*16,100,obj_destrutable_chain_block_simple);
    s1.sprite_index = spr_destructable_tile_cemetery;
    s1.image_index = 4;
}
#endregion
} 