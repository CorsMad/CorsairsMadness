/// @description Insert description here
// You can write your code in this editor
#region #movement

	if !position_meeting(bbox_left-1, bbox_bottom+1, obj_block) || !position_meeting(bbox_right+1, bbox_bottom+1, obj_block)
	{
		spd = -spd;
	}

	if place_meeting(x+spd,y,obj_block)
	{
		while(!place_meeting(x+sign(spd),y,obj_block))
		{
			x = x+sign(spd);	
		}
		spd = -spd;
	}
	x = x+spd;

#endregion
#region #animation

sprite_index = spr_snake_move;
image_xscale = -sign(spd);

#endregion
#region #takedmg
	fnc_enemy_no_armor_dmg();
		
		if place_meeting(x,y,obj_hitbox) && hit_cd = 0
		{
			instance_create_depth(x,y-16,-1,obj_sfx_weapon_slash);
		}

#endregion
#region #hp

if enemy_hp < 1
{
	instance_destroy();	
}

#endregion