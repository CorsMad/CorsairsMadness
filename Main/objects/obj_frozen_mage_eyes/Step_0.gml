/// @description Insert description here
// You can write your code in this editor

if instance_exists(fol)
{
	if (fol.place = 0 && fol.isAttacking = 0 ) || fol.place = 1
	{
		sprite_index = spr_frozenmage_eyes;	
		
		if instance_exists(obj_Player)
		{
			if (obj_Player.y-16 > y  && obj_Player.x <  x )  image_index = 3 else
			if (obj_Player.y-16 > y  && obj_Player.x >= x )  image_index = 2 else
			if (obj_Player.y-16 <=y  && obj_Player.x <  x )  image_index = 0 else
			if (obj_Player.y-16 <=y  && obj_Player.x >= x )  image_index = 1;

		}
	} else sprite_index = spr_blank;
} else instance_destroy();