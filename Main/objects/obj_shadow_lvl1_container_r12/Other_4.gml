/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.secrets_g1_r12 = 0 
{
	instance_create_depth(752,80,100,obj_secret_g1_r12);
}

var i1 = instance_create_depth(696,56,0,obj_destrutable_chain_block_simple);
i1.sprite_index = spr_destructable_tile_cemetery;
i1.image_index = 3;

var i2 = instance_create_depth(696,72,0,obj_destrutable_chain_block_simple);
i2.sprite_index = spr_destructable_tile_cemetery;
i2.image_index = 6;

var i3 = instance_create_depth(696,88,0,obj_destrutable_chain_block_simple);
i3.sprite_index = spr_destructable_tile_cemetery;
i3.image_index = 3;

for (var k = 0; k<3; k+=1;) {
    var k1 = instance_create_depth(712,56+k*16,0,obj_destrutable_chain_block_simple);
    k1.sprite_index = spr_destructable_tile_cemetery;
    k1.image_index = 4;
}

for (var m = 0; m<3; m+=1;) {
    var m1 = instance_create_depth(728,56+m*16,0,obj_destrutable_chain_block_simple);
    m1.sprite_index = spr_destructable_tile_cemetery;
    m1.image_index = 4;
}

for (var n = 0; n<3; n+=1;) {
    var n1 = instance_create_depth(744,56+n*16,0,obj_destrutable_chain_block_simple);
    n1.sprite_index = spr_destructable_tile_cemetery;
    n1.image_index = 4;
}

for (var o = 0; o<3; o+=1;) {
    var o1 = instance_create_depth(760,56+o*16,0,obj_destrutable_chain_block_simple);
    o1.sprite_index = spr_destructable_tile_cemetery;
    o1.image_index = 4;
}