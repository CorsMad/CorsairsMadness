/// @description Insert description here
// You can write your code in this editor
/*
var a1 = instance_create_depth(120,184,100,obj_destrutable_chain_block_simple);
a1.sprite_index = spr_destructable_tile_sand;
a1.image_index = 5;
*/


var m = instance_create_depth(120,184,100,obj_destrutable_chain_block_simple);
    m.sprite_index = spr_destructable_tile_sand;
    m.image_index = 5;
var n = instance_create_depth(120,184+16,100,obj_destrutable_chain_block_simple);
    n.sprite_index = spr_destructable_tile_sand;
    n.image_index = 11;
var o = instance_create_depth(120,184+2*16,100,obj_destrutable_chain_block_simple);
    o.sprite_index = spr_destructable_tile_sand;
    o.image_index = 5;





for(var a = 3;a < 6;a+=1)
{
    var i = instance_create_depth(120,184+a*16,100,obj_destrutable_chain_block_simple);
    i.sprite_index = spr_destructable_tile_sand;
    i.image_index = 5;
}

for(var b = 0;b < 6;b+=1)
{
    var k = instance_create_depth(104,184+b*16,100,obj_destrutable_chain_block_simple);
    k.sprite_index = spr_destructable_tile_sand;
    k.image_index = 4;
}
for(var c = 0;c < 6;c+=1)
{
    var l = instance_create_depth(88,184+c*16,100,obj_destrutable_chain_block_simple);
    l.sprite_index = spr_destructable_tile_sand;
    l.image_index = 4;
}
