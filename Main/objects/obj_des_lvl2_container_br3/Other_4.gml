/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if instance_exists(obj_Player)
{
	if obj_Player.x > room_width/2
	{
		var i1 = instance_create_depth(8,200,0,obj_destrutable_chain_block_simple);
		var i2 = instance_create_depth(8,216,0,obj_destrutable_chain_block_simple);
		var i3 = instance_create_depth(8,232,0,obj_destrutable_chain_block_simple);
		
		var i4 = instance_create_depth(24,200,0,obj_destrutable_chain_block_simple);
		var i5 = instance_create_depth(24,216,0,obj_destrutable_chain_block_simple);
		var i6 = instance_create_depth(24,232,0,obj_destrutable_chain_block_simple);
		
		var i7 = instance_create_depth(40,200,0,obj_destrutable_chain_block_simple);
		var i8 = instance_create_depth(40,216,0,obj_destrutable_chain_block_simple);
		var i9 = instance_create_depth(40,232,0,obj_destrutable_chain_block_simple);
		
		var i10 = instance_create_depth(56,200,0,obj_destrutable_chain_block_simple);
		var i11 = instance_create_depth(56,216,0,obj_destrutable_chain_block_simple);
		var i12 = instance_create_depth(56,232,0,obj_destrutable_chain_block_simple);
		
		i1.sprite_index = spr_destructable_tile_sand;
		i1.image_index = 4;
		i2.sprite_index = spr_destructable_tile_sand;
		i2.image_index = 4;
		i3.sprite_index = spr_destructable_tile_sand;
		i3.image_index = 4;
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
		
		i10.sprite_index = spr_destructable_tile_sand;
		i10.image_index = 5;
		i11.sprite_index = spr_destructable_tile_sand;
		i11.image_index = 11;
		i12.sprite_index = spr_destructable_tile_sand;
		i12.image_index = 5;		
	}
}