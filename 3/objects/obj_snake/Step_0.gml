/// @description Insert description here
// You can write your code in this editor

if state = 0
{
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
	#region #hp

	if enemy_hp < 1
	{
		vspd = -3;
		state = 1
	}

	#endregion
}

#region #takedmg
		fnc_enemy_no_armor_dmg();
		
			if (place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_hitbox_down) ) && hit_cd = 0
			{
				instance_create_depth(x,y-16,-1,obj_sfx_weapon_slash);
			}

	#endregion
	
#region death
	if state = 1
	{
		image_speed = 0;
		image_alpha -= 0.01;
		b++;
		switch(b)
		{
			case 1: instance_create_depth(x,y-16,1,obj_sfx_explosion);break;
		}
		vspd += 0.1;
	}
#endregion

y += vspd;
