/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);


if instance_exists(obj_Player)
{
    if obj_Player.y < 208
    {
        for (var i = 0; i < 6; i+= 1) {
        var sp1 = instance_create_depth(376,184+i*16,0,obj_destrutable_chain_block_simple);
        sp1.sprite_index = spr_destructable_tile_vulcano;
        sp1.image_index = 4;          
        }

        for (var k = 0; k < 6; k+= 1) {
            var sp2 = instance_create_depth(392,184+k*16,0,obj_destrutable_chain_block_simple);
            sp2.sprite_index = spr_destructable_tile_vulcano;
            sp2.image_index = 4;          
        }

        for (var l = 0; l < 6; l+= 1) {
            var sp3 = instance_create_depth(408,184+l*16,0,obj_destrutable_chain_block_simple);
            sp3.sprite_index = spr_destructable_tile_vulcano;
            sp3.image_index = 4;          
        }

        for (var m = 0; m < 6; m+= 1) {
            var sp4 = instance_create_depth(424,184+m*16,0,obj_destrutable_chain_block_simple);
            sp4.sprite_index = spr_destructable_tile_vulcano;
            sp4.image_index = 4;          
        }

        for (var n = 0; n < 3; n+= 1) {
            var sp5 = instance_create_depth(440,184+n*16,0,obj_destrutable_chain_block_simple);
            sp5.sprite_index = spr_destructable_tile_vulcano;
            sp5.image_index = 4;          
        }


        var sp6 = instance_create_depth(456,184,0,obj_destrutable_chain_block_simple);
        sp6.sprite_index = spr_destructable_tile_vulcano;
        sp6.image_index = 5;
        var sp7 = instance_create_depth(456,200,0,obj_destrutable_chain_block_simple);
        sp7.sprite_index = spr_destructable_tile_vulcano;
        sp7.image_index = 19;   
    }
}