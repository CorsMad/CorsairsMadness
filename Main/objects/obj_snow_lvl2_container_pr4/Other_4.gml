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
		
		var i4 = instance_create_depth(472,8 ,0,obj_destrutable_chain_block_simple);
		var i5 = instance_create_depth(472,24,0,obj_destrutable_chain_block_simple);
		var i6 = instance_create_depth(472,40,0,obj_destrutable_chain_block_simple);
		
		i1.depth = 100;
		i2.depth = 100;
		i3.sprite_index = spr_destructable_tile_snow;
		i3.image_index = 16;
		i4.depth = 100;
		i5.depth = 100;
		i6.sprite_index = spr_destructable_tile_snow;
		i6.image_index = 19;
	}
}