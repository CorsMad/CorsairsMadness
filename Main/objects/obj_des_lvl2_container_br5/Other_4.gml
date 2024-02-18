/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);


if global.chest_d2b_r5 = 1
{
    instance_create_depth(448,160,200,obj_chest_d2b_r5);
}

#region up
var i1 = instance_create_depth(424,120,100,obj_destrutable_chain_block_simple);
var i2 = instance_create_depth(424,136,100,obj_destrutable_chain_block_simple);
var i3 = instance_create_depth(424,152,100,obj_destrutable_chain_block_simple);

var i4 = instance_create_depth(440,120,100,obj_destrutable_chain_block_simple);
var i5 = instance_create_depth(440,136,100,obj_destrutable_chain_block_simple);
var i6 = instance_create_depth(440,152,100,obj_destrutable_chain_block_simple);

var i7 = instance_create_depth(456,120,100,obj_destrutable_chain_block_simple);
var i8 = instance_create_depth(456,136,100,obj_destrutable_chain_block_simple);
var i9 = instance_create_depth(456,152,100,obj_destrutable_chain_block_simple);

i1.sprite_index = spr_destructable_tile_sand;
i1.image_index = 3;
i2.sprite_index = spr_destructable_tile_sand;
i2.image_index = 10;
i3.sprite_index = spr_destructable_tile_sand;
i3.image_index = 3;

i4.sprite_index = spr_destructable_tile_sand;
i4.image_index = 4;
i5.sprite_index = spr_destructable_tile_sand;
i5.image_index = 4;
i6.sprite_index = spr_destructable_tile_sand;
i6.image_index = 4;

i7.sprite_index = spr_destructable_tile_sand;
i7.image_index = 4;
i8.sprite_index = spr_destructable_tile_sand;
i8.image_index = 4;
i9.sprite_index = spr_destructable_tile_sand;
i9.image_index = 4;

#endregion

#region down

var k1 = instance_create_depth(424,184,100,obj_destrutable_chain_block_simple);
var k2 = instance_create_depth(424,200,100,obj_destrutable_chain_block_simple);
var k3 = instance_create_depth(424,216,100,obj_destrutable_chain_block_simple);
var k4 = instance_create_depth(424,232,100,obj_destrutable_chain_block_simple);
var k5 = instance_create_depth(424,248,100,obj_destrutable_chain_block_simple);
var k6 = instance_create_depth(424,264,100,obj_destrutable_chain_block_simple);


k1.sprite_index = spr_destructable_tile_sand;
k1.image_index = 3;
k2.sprite_index = spr_destructable_tile_sand;
k2.image_index = 10;
k3.sprite_index = spr_destructable_tile_sand;
k3.image_index = 3;
k4.sprite_index = spr_destructable_tile_sand;
k4.image_index = 12;
k5.sprite_index = spr_destructable_tile_sand;
k5.image_index = 4;
k6.sprite_index = spr_destructable_tile_sand;
k6.image_index = 4;


var l1 = instance_create_depth(440,184,100,obj_destrutable_chain_block_simple);
var l2 = instance_create_depth(440,200,100,obj_destrutable_chain_block_simple);
var l3 = instance_create_depth(440,216,100,obj_destrutable_chain_block_simple);
var l4 = instance_create_depth(440,232,100,obj_destrutable_chain_block_simple);
var l5 = instance_create_depth(440,248,100,obj_destrutable_chain_block_simple);
var l6 = instance_create_depth(440,264,100,obj_destrutable_chain_block_simple);


l1.sprite_index = spr_destructable_tile_sand;
l1.image_index = 4;
l2.sprite_index = spr_destructable_tile_sand;
l2.image_index = 4;
l3.sprite_index = spr_destructable_tile_sand;
l3.image_index = 4;
l4.sprite_index = spr_destructable_tile_sand;
l4.image_index = 4;
l5.sprite_index = spr_destructable_tile_sand;
l5.image_index = 4;
l6.sprite_index = spr_destructable_tile_sand;
l6.image_index = 4;

var m1 = instance_create_depth(456,184,100,obj_destrutable_chain_block_simple);
var m2 = instance_create_depth(456,200,100,obj_destrutable_chain_block_simple);
var m3 = instance_create_depth(456,216,100,obj_destrutable_chain_block_simple);
var m4 = instance_create_depth(456,232,100,obj_destrutable_chain_block_simple);
var m5 = instance_create_depth(456,248,100,obj_destrutable_chain_block_simple);
var m6 = instance_create_depth(456,264,100,obj_destrutable_chain_block_simple);


m1.sprite_index = spr_destructable_tile_sand;
m1.image_index = 4;
m2.sprite_index = spr_destructable_tile_sand;
m2.image_index = 4;
m3.sprite_index = spr_destructable_tile_sand;
m3.image_index = 4;
m4.sprite_index = spr_destructable_tile_sand;
m4.image_index = 4;
m5.sprite_index = spr_destructable_tile_sand;
m5.image_index = 4;
m6.sprite_index = spr_destructable_tile_sand;
m6.image_index = 4;



#endregion