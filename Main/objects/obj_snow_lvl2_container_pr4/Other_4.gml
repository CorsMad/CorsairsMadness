/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if instance_exists(obj_Player) 
{
	if obj_Player.x < room_width/2 
	{
		var i1 = instance_create_depth(456,8 ,0,obj_destrutable_chain_block_simple);
		var i2 = instance_create_depth(456,24,0,obj_destrutable_chain_block_simple);
		var i3 = instance_create_depth(456,40,0,obj_destrutable_chain_block_simple);
		var i7 = instance_create_depth(456,56,0,obj_destrutable_chain_block_simple);
		var i8 = instance_create_depth(456,72,0,obj_destrutable_chain_block_simple);
		var i9 = instance_create_depth(456,88,0,obj_destrutable_chain_block_simple);
		
		var i4 = instance_create_depth(472,8 ,0,obj_destrutable_chain_block_simple);
		var i5 = instance_create_depth(472,24,0,obj_destrutable_chain_block_simple);
		var i6 = instance_create_depth(472,40,0,obj_destrutable_chain_block_simple);
		var i10 = instance_create_depth(472,56,0,obj_destrutable_chain_block_simple);
		var i11 = instance_create_depth(472,72,0,obj_destrutable_chain_block_simple);
		var i12 = instance_create_depth(472,88,0,obj_destrutable_chain_block_simple);
		
		i1.depth = 100;
		i2.depth = 100;
		i3.sprite_index = spr_destructable_tile_snow;
		i3.image_index = 6;
		i7.sprite_index = spr_destructable_tile_snow;
		i7.image_index = 6;
		i8.sprite_index = spr_destructable_tile_snow;
		i8.image_index = 6;
		i9.sprite_index = spr_destructable_tile_snow;
		i9.image_index = 6;
        
        
        
        
		i4.depth = 100;
		i5.depth = 100;
		i6.sprite_index = spr_destructable_tile_snow;
		i6.image_index = 19;
		i10.sprite_index = spr_destructable_tile_snow;
		i10.image_index = 19;
		i11.sprite_index = spr_destructable_tile_snow;
		i11.image_index = 19;
		i12.sprite_index = spr_destructable_tile_snow;
		i12.image_index = 19;
	}
}