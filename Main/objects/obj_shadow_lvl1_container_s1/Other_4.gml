/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.secrets_g1_s1 = 0 
{
	instance_create_depth(32,144,100,obj_secret_g1_s1);
}

if instance_exists(obj_Player)
{
    if obj_Player.x > 448
    {
        
        for (var i = 0; i<2; i++) {
            var i1 = instance_create_depth(360,56+16*i,0,obj_destrutable_chain_block_simple)
            i1.sprite_index= spr_destructable_tile_cemetery
            i1.image_index = 6;           
        }  
        
        for (var k = 0; k<3; k++) {
            var i2 = instance_create_depth(376,40+16*k,0,obj_destrutable_chain_block_simple)
            i2.sprite_index= spr_destructable_tile_cemetery
            i2.image_index = 4;           
        }  
        
        for (var l = 0; l<3; l++) {
            var i3 = instance_create_depth(392,40+16*l,0,obj_destrutable_chain_block_simple)
            i3.sprite_index= spr_destructable_tile_cemetery
            i3.image_index = 4;           
        }  
    }
}