/// @description Insert description here
// You can write your code in this editor
#region death

if state = 2
{
	b++;
	switch(b)
	{
		case 1: instance_create_depth(x,y-16,1,obj_sfx_explosion);	
				break;
		case 2: instance_destroy();break;
	}
}

#endregion

#region #takedmg
	fnc_enemy_no_armor_dmg();
		
		if (place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_item_axe)) && hit_cd = 0
		{
			instance_create_depth(x,y-16,-1,obj_sfx_weapon_slash);
		}

#endregion

#region #hp

if enemy_hp < 1
{
	state = 2;
	mask_index = spr_blank;	
	image_alpha = 0.5;
}
#endregion