/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.TargetRoom = S1_r19 && !instance_exists(obj_checkpoint_projectile)
{
    var ch_off = instance_create_depth(336,240,0,obj_checkpoint_projectile);
    ch_off.isOn = 2;
} else instance_create_depth(336,240,0,obj_checkpoint_projectile);



if instance_exists(obj_Player)
{
	if obj_Player.x > 384
	{
		
	}	else 
	{
		var i1  = instance_create_depth(424,168,0,obj_destrutable_chain_block_simple);
		var i2  = instance_create_depth(424,184,0,obj_destrutable_chain_block_simple);
			    
		i1.sprite_index = spr_destructable_tile_snow;
		i1.image_index = 6;		
		
		i2.sprite_index = spr_destructable_tile_snow;
		i2.image_index = 16;		
				
		var i3  = instance_create_depth(440,168,0,obj_destrutable_chain_block_simple);
		var i4  = instance_create_depth(440,184,0,obj_destrutable_chain_block_simple);
		var i5  = instance_create_depth(440,200,0,obj_destrutable_chain_block_simple);
		var i6  = instance_create_depth(440,216,0,obj_destrutable_chain_block_simple);
		var i7  = instance_create_depth(440,232,0,obj_destrutable_chain_block_simple);		
			    
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
				
		var i8  = instance_create_depth(456,168,0,obj_destrutable_chain_block_simple);
		var i9  = instance_create_depth(456,184,0,obj_destrutable_chain_block_simple);
		var i10 = instance_create_depth(456,200,0,obj_destrutable_chain_block_simple);
		var i11 = instance_create_depth(456,216,0,obj_destrutable_chain_block_simple);
		var i12 = instance_create_depth(456,232,0,obj_destrutable_chain_block_simple);		
		
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
		
		var i13 = instance_create_depth(472,200,0,obj_destrutable_chain_block_simple);
		var i14 = instance_create_depth(472,216,0,obj_destrutable_chain_block_simple);
		var i15 = instance_create_depth(472,232,0,obj_destrutable_chain_block_simple);
		
		i13.sprite_index = spr_destructable_tile_snow;
		i13.image_index = 19;		
		i14.sprite_index = spr_destructable_tile_snow;
		i14.image_index = 19;		
		i15.sprite_index = spr_destructable_tile_snow;
		i15.image_index = 19;		
		
	}
}