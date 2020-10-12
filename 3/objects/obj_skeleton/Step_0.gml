/// @description Insert description here
// You can write your code in this editor

#region movement
if state = 1
{
	if place_meeting(x+hspd, y, obj_block) 
		{
		while (!place_meeting(x+sign(hspd), y, obj_block )) 
		{
		    x+= sign(hspd);
		}
		hspd = -hspd;
	}
	x += hspd;

	if place_meeting(x, y+vspd, obj_block) 
	{
	    while (!place_meeting(x,y+sign(vspd), obj_block )) 
		{
	        y+= sign(vspd);
	    }
	    vspd = 0;
	}
	y += vspd;

	if !place_meeting(x,y+vspd, obj_block)
	{
		vspd +=0.2;	
	}
	if place_meeting(x,y, obj_skeleton_jump_block)
	{
		vspd = -4;	
	}
}
#endregion

#region animation


if !place_meeting(x,y+1,obj_block)
{
	sprite_index = spr_skeleton_jump;	
} else sprite_index = spr_skeleton_walk;

image_xscale = sign(hspd);

#endregion

#region death

if state = 2
{
	b++;
	switch(b)
	{
		case 1: instance_create_depth(x,y-16,1,obj_sfx_explosion);
				instance_create_depth(x,y-16,1,obj_skeleton_bone);
				instance_create_depth(x,y-16,1,obj_skeleton_bone);
				instance_create_depth(x,y-16,1,obj_skeleton_bone);		
				break;
		case 5: instance_destroy();break;
	}
}

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
	state = 2;
	mask_index = spr_blank;	
	image_alpha = 0.5;
}

#endregion

