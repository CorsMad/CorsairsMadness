/// @description Insert description here
// You can write your code in this editor
/*
var a1 = instance_create_depth(120,184,100,obj_destrutable_chain_block_simple);
a1.sprite_index = spr_destructable_tile_sand;
a1.image_index = 5;
*/
for(var a = 0;a < 7;a+=1)
{
    if a != 4
    {
        var i = instance_create_depth(24,56+a*16,100,obj_destrutable_chain_block_simple);
        i.sprite_index = spr_destructable_tile_sand;
        i.image_index = 5;  
    } 
    
}
for(var b = 0;b < 7;b+=1)
{

        var l = instance_create_depth(8,56+b*16,100,obj_destrutable_chain_block_simple);
        l.sprite_index = spr_destructable_tile_sand;
        l.image_index = 4;  

    
}

var k = instance_create_depth(24,56+4*16,100,obj_destrutable_chain_block_simple);
    k.sprite_index = spr_destructable_tile_sand;
    k.image_index = 11;  

