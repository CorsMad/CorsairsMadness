/// @description Insert description here
// You can write your code in this editor

#region movement
if state = 1
{
	if place_meeting(x+hspd, y, obj_skeleton_limiter)
	{
		hspd = -hspd;	
	}
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
    var skel_d = instance_create_depth(x,y,-1,obj_skeleton_dead);
    skel_d.sprite_index = sprite_index;
    skel_d.image_index = image_index;
    skel_d.image_xscale = image_xscale;
    skel_d.image_alpha = 0.5;
    instance_destroy();
}

#endregion

#region #takedmg

// Атака

    fnc_take_dmg_hitbox(-10,-16,-1,10,-16,-1);
    
// Топор

    fnc_take_dmg_axe(-10,-16,-1,10,-16,-1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-32,-1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1);

// Eball

	fnc_take_dmg_eball(0,-16,-1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1)

// Получение урона

    fnc_enemy_no_armor_dmg();
    
#endregion

#region #hp

if enemy_hp < 1
{
	state = 2;
}

#endregion