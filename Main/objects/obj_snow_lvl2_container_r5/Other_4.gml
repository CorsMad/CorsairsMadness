/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if instance_exists(obj_Player)
{
	if obj_Player.x < 1024 && obj_Player.x > 896
	{
			
	} else 
	{
		var i1  = instance_create_depth(936,168,1,obj_destrutable_chain_block_destr)	;
		var i2  = instance_create_depth(936,184,1,obj_destrutable_chain_block_destr)	;			   
		var i3  = instance_create_depth(936,200,1,obj_destrutable_chain_block_destr)	;
		var i4  = instance_create_depth(936,216,1,obj_destrutable_chain_block_destr)	;
		var i5  = instance_create_depth(936,232,1,obj_destrutable_chain_block_destr)	;			   
		var i6  = instance_create_depth(936,248,1,obj_destrutable_chain_block_destr)	;
		var i7  = instance_create_depth(936,264,1,obj_destrutable_chain_block_destr)	;
		
		var i8  = instance_create_depth(952,168,1,obj_destrutable_chain_block_destr)	;		
		var i9  = instance_create_depth(952,184,1,obj_destrutable_chain_block_destr)	;
		var i10 = instance_create_depth(952,200,1,obj_destrutable_chain_block_destr)	;
		var i11 = instance_create_depth(952,216,1,obj_destrutable_chain_block_destr)	;		
		var i12 = instance_create_depth(952,232,1,obj_destrutable_chain_block_destr)	;
		var i13 = instance_create_depth(952,248,1,obj_destrutable_chain_block_destr)	;
		var i14 = instance_create_depth(952,264,1,obj_destrutable_chain_block_destr)	;
		
		var i15 = instance_create_depth(968,168,1,obj_destrutable_chain_block_destr)	;		
		var i16 = instance_create_depth(968,184,1,obj_destrutable_chain_block_destr)	;
		var i17 = instance_create_depth(968,200,1,obj_destrutable_chain_block_destr)	;
		var i18 = instance_create_depth(968,216,1,obj_destrutable_chain_block_destr)	;		
		var i19 = instance_create_depth(968,232,1,obj_destrutable_chain_block_destr)	;
		var i20 = instance_create_depth(968,248,1,obj_destrutable_chain_block_destr)	;
		var i21 = instance_create_depth(968,264,1,obj_destrutable_chain_block_destr)	;
		
		var i22 = instance_create_depth(984,168,1,obj_destrutable_chain_block_destr)	;		
		var i23 = instance_create_depth(984,184,1,obj_destrutable_chain_block_destr)	;
		var i24 = instance_create_depth(984,200,1,obj_destrutable_chain_block_destr)	;
		var i25 = instance_create_depth(984,216,1,obj_destrutable_chain_block_destr)	;		
		var i26 = instance_create_depth(984,232,1,obj_destrutable_chain_block_destr)	;
		var i27 = instance_create_depth(984,248,1,obj_destrutable_chain_block_destr)	;
		var i28 = instance_create_depth(984,264,1,obj_destrutable_chain_block_destr)	;
		
		var i29 = instance_create_depth(1000,168,1,obj_destrutable_chain_block_destr)	;
		var i30 = instance_create_depth(1000,184,1,obj_destrutable_chain_block_destr)	;
		var i31 = instance_create_depth(1000,200,1,obj_destrutable_chain_block_destr)	;
		
		i1.sprite_index = spr_destructable_tile_snow;
		i1.image_index = 4;		
		i2.sprite_index = spr_destructable_tile_snow;
		i2.image_index = 19;
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
		i8.image_index = 4;		
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
		
		i15.sprite_index = spr_destructable_tile_snow;
		i15.image_index = 4;		
		i16.sprite_index = spr_destructable_tile_snow;
		i16.image_index = 19;
		i17.sprite_index = spr_destructable_tile_snow;
		i17.image_index = 19;
		i18.sprite_index = spr_destructable_tile_snow;
		i18.image_index = 19;
		i19.sprite_index = spr_destructable_tile_snow;
		i19.image_index = 19;
		i20.sprite_index = spr_destructable_tile_snow;
		i20.image_index = 19;
		i21.sprite_index = spr_destructable_tile_snow;
		i21.image_index = 19;
		
		i22.sprite_index = spr_destructable_tile_snow;
		i22.image_index = 4;		
		i23.sprite_index = spr_destructable_tile_snow;
		i23.image_index = 19;
		i24.sprite_index = spr_destructable_tile_snow;
		i24.image_index = 19;
		i25.sprite_index = spr_destructable_tile_snow;
		i25.image_index = 19;
		i26.sprite_index = spr_destructable_tile_snow;
		i26.image_index = 19;
		i27.sprite_index = spr_destructable_tile_snow;
		i27.image_index = 19;
		i28.sprite_index = spr_destructable_tile_snow;
		i28.image_index = 19;
		
		i29.sprite_index = spr_destructable_tile_snow;
		i29.image_index = 5;
		i30.sprite_index = spr_destructable_tile_snow;
		i30.image_index = 7;
		i31.sprite_index = spr_destructable_tile_snow;
		i31.image_index = 7;
		
		
		
	}
}