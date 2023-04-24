/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.secrets_s2_s1 = 0 
{
	instance_create_depth(32,176,100,obj_secret_s2_s1);
}

if instance_exists(obj_Player)
{
	if obj_Player.x < 465
	{
			
	} else 
	{
		var i1  = instance_create_depth(328,56,0,obj_destrutable_chain_block_expl)	;
		var i2  = instance_create_depth(328,72,0,obj_destrutable_chain_block_expl)	;
			    
		var i3  = instance_create_depth(344,40,0,obj_destrutable_chain_block_destr)	;
		var i4  = instance_create_depth(344,56,0,obj_destrutable_chain_block_destr)	;
		var i5  = instance_create_depth(344,72,0,obj_destrutable_chain_block_destr)	;
			    
		var i6  = instance_create_depth(360,40,0,obj_destrutable_chain_block_destr)	;
		var i7  = instance_create_depth(360,56,0,obj_destrutable_chain_block_destr)	;
		var i8  = instance_create_depth(360,72,0,obj_destrutable_chain_block_destr)	;
		
		var i9 = instance_create_depth(376,40,0,obj_destrutable_chain_block_destr)	;
		var i10 = instance_create_depth(376,56,0,obj_destrutable_chain_block_destr)	;
		var i11 = instance_create_depth(376,72,0,obj_destrutable_chain_block_destr)	;
		
		var i12 = instance_create_depth(392,40,0,obj_destrutable_chain_block_destr)	;
		var i13 = instance_create_depth(392,56,0,obj_destrutable_chain_block_destr)	;
		var i14 = instance_create_depth(392,72,0,obj_destrutable_chain_block_destr)	;
		
		i1.sprite_index = spr_destructable_tile_snow;
		i1.image_index = 6;
		i2.sprite_index = spr_destructable_tile_snow;
		i2.image_index = 16;
		
		i3.sprite_index = spr_destructable_tile_snow;
		i3.image_index = 19;
		i4.sprite_index = spr_destructable_tile_snow;
		i4.image_index = 19;
		i5.sprite_index = spr_destructable_tile_snow;
		i5.image_index = 19;
		i6.sprite_index = spr_destructable_tile_snow;
		i6.image_index = 19;
		i7.sprite_index = spr_destructable_tile_snow;
		i7.image_index = 19;
		i8.sprite_index = spr_destructable_tile_snow;
		i8.image_index = 19;
		i9.sprite_index = spr_destructable_tile_snow;
		i9.image_index = 19;
		i10.sprite_index = spr_destructable_tile_snow;
		i10.image_index = 19;
		i11.sprite_index = spr_destructable_tile_snow;
		i11.image_index = 19;
		i12.sprite_index = spr_destructable_tile_snow;
		i12.image_index = 19;
		i13.sprite_index = spr_destructable_tile_snow;
		i13.image_index = 19;
		i14.sprite_index = spr_destructable_tile_snow;
		i14.image_index = 19;
		
		
		
	}
}