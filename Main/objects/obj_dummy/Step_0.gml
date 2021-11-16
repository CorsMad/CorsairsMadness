/// @description Insert description here
// You can write your code in this editor
#region movement

#endregion

#region #takedmg
	fnc_take_dmg_axe(-10,-16,-1,10,-16,-1);
    fnc_take_dmg_hitbox(-10,-16,-1,10,-16,-1);
    fnc_take_dmg_hitbox_down(0,-32,-1);
	fnc_enemy_no_armor_dmg();

#endregion

#region #hp

if enemy_hp < 1
{
	state = 2;
	mask_index = spr_blank;	
	image_alpha = 0.8;
}

#endregion

#region death

if state = 2
{
	b++;
	switch(b)
	{
		case 1: instance_create_depth(x,y,-1,obj_sfx_explosion); break;
		case 10:	instance_destroy();break;
	}
}

#endregion