/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if instance_exists(obj_Player)
{
    if (obj_Player.y < 224) {
        
        for (var i = 0; i<3; i++) {
            var i1 = instance_create_depth(104,216+16*i,200,obj_destrutable_chain_block_destr)
            i1.sprite_index= spr_destructable_tile_cemetery
            i1.image_index = 3;           
        }  
        
        for (var k = 0; k<3; k++) {
            var i2 = instance_create_depth(120,216+16*k,200,obj_destrutable_chain_block_destr)
            i2.sprite_index= spr_destructable_tile_cemetery
            i2.image_index = 4;           
        }  
        
        for (var l = 0; l<3; l++) {
            var i3 = instance_create_depth(136,216+16*l,200,obj_destrutable_chain_block_destr)
            i3.sprite_index= spr_destructable_tile_cemetery
            i3.image_index = 4;           
        }  
        
        for (var m = 0; m<4; m++) {
            var i4 = instance_create_depth(152,216+16*m,200,obj_destrutable_chain_block_destr)
            i4.sprite_index= spr_destructable_tile_cemetery
            i4.image_index = 4;           
        }  
        
        for (var n = 0; n<4; n++) {
            var i5 = instance_create_depth(168,216+16*n,200,obj_destrutable_chain_block_destr)
            i5.sprite_index= spr_destructable_tile_cemetery
            i5.image_index = 4;           
        }  
    }   
}