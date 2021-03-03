/// @description Insert description here
// You can write your code in this editor
#region movement
if state = 1
{
	if place_meeting(x,y+spd,obj_bird_limiter)
	{
		spd = -spd;	
	}
	y+=spd;
	
	if x > obj_Player.x
	{
		image_xscale = -1;	
	} else image_xscale = 1;
}
#endregion

#region #takedmg
  if place_meeting(x,y,obj_hitbox) && hit_cd = 0
		{
			instance_create_depth(x,y,1,obj_sfx_weapon_slash);
		}
	fnc_enemy_no_armor_dmg();

#endregion

#region #hp

if enemy_hp < 1
{
	state = 2;
	mask_index = spr_blank;	
	sprite_index = spr_bird_green_dead;
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