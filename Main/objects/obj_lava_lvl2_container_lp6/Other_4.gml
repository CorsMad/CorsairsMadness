/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);


if instance_exists(obj_Player)
{
    if obj_Player.y <  144 
    {
        for (var i = 0; i <5; i+=1) {
            var sp1 = instance_create_depth(24,200+16*i,0,obj_destrutable_chain_block_simple);
            sp1.sprite_index = spr_destructable_tile_vulcano;
            sp1.image_index = 4;
        }
        
        for (var k = 0; k <5; k+=1) {
            var sp2 = instance_create_depth(40,200+16*k,0,obj_destrutable_chain_block_simple);
            sp2.sprite_index = spr_destructable_tile_vulcano;
            sp2.image_index = 4;
        }
        
        for (var l = 0; l <5; l+=1) {
            var sp3 = instance_create_depth(56,200+16*l,0,obj_destrutable_chain_block_simple);
            sp3.sprite_index = spr_destructable_tile_vulcano;
            sp3.image_index = 4;
        }
        
        for (var m = 0; m <5; m+=1) {
            var sp5 = instance_create_depth(72,200+16*m,0,obj_destrutable_chain_block_simple);
            sp5.sprite_index = spr_destructable_tile_vulcano;
            sp5.image_index = 4;
        }  
        
        for (var n = 0; n <2; n+=1) {
            var sp6 = instance_create_depth(88,200+16*n,0,obj_destrutable_chain_block_simple);
            sp6.sprite_index = spr_destructable_tile_vulcano;
            sp6.image_index = 4;
        }  
        
        var sp7 = instance_create_depth(104,200,0,obj_destrutable_chain_block_simple);
        var sp8 = instance_create_depth(104,216,0,obj_destrutable_chain_block_simple);
        sp7.sprite_index = spr_destructable_tile_vulcano;
        sp7.image_index = 5;
        sp8.sprite_index = spr_destructable_tile_vulcano;
        sp8.image_index = 19;
        
        
    }
}























