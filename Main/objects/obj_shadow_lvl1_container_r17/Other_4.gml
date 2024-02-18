/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if instance_exists(obj_Player)
{
    if (obj_Player.y < 240) {
        
        
        var sp1 = instance_create_depth(968,168,100,obj_destrutable_chain_block_simple)
        sp1.sprite_index= spr_destructable_tile_cemetery
        sp1.image_index = 3;           
        
        var sp1 = instance_create_depth(968,184,100,obj_destrutable_chain_block_simple)
        sp1.sprite_index= spr_destructable_tile_cemetery
        sp1.image_index = 6;
        
        var sp1 = instance_create_depth(968,200,100,obj_destrutable_chain_block_simple)
        sp1.sprite_index= spr_destructable_tile_cemetery
        sp1.image_index = 3;
          
        
        for (var k = 0; k<7; k++) {
            var i2 = instance_create_depth(984,168+16*k,100,obj_destrutable_chain_block_simple)
            i2.sprite_index= spr_destructable_tile_cemetery
            i2.image_index = 4;           
        }  
        
        for (var l = 0; l<7; l++) {
            var i3 = instance_create_depth(1000,168+16*l,100,obj_destrutable_chain_block_simple)
            i3.sprite_index= spr_destructable_tile_cemetery
            i3.image_index = 4;           
        }  
        
        for (var m = 0; m<7; m++) {
            var i4 = instance_create_depth(1016,168+16*m,100,obj_destrutable_chain_block_simple)
            i4.sprite_index= spr_destructable_tile_cemetery
            i4.image_index = 4;           
        }  
        
        for (var n = 0; n<7; n++) {
            var i5 = instance_create_depth(1032,168+16*n,100,obj_destrutable_chain_block_simple)
            i5.sprite_index= spr_destructable_tile_cemetery
            i5.image_index = 4;           
        }  
    }   
}