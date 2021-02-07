/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_sfx_explosion_bomb) && timer = 0
{	
	timer=1;	
	mask_index = spr_blank;
}


if place_meeting(x,y,obj_hitbox) && timer = 0
{
	timer=1;	
	mask_index = spr_blank;	
	if !instance_exists(obj_sfx_weapon_slash)
	{
		instance_create_depth(obj_hitbox.x+7,obj_hitbox.y-20,-1,obj_sfx_weapon_slash);
	}
}

if place_meeting(x,y,obj_hitbox_down) && timer = 0
{
	timer=1;	
	mask_index = spr_blank;	
	if !instance_exists(obj_sfx_weapon_slash)
	{
		instance_create_depth(obj_hitbox_down.x+7,obj_hitbox_down.y+16,-1,obj_sfx_weapon_slash);
	}
}


if timer > 0 
{
	timer++;	
}

switch(timer)
{
	case 2: instance_create_depth(x+20,y+20,-1,obj_sfx_dust_expl_big);break;
	case 5: if container = 2
			{
				instance_create_depth(x+8,y+24,1,obj_cr1);
				instance_create_depth(x+40,y+24,1,obj_cr2);
			}
			if container = 3
			{
				instance_create_depth(x+8,y+24,1,obj_cr1);
				instance_create_depth(x+24,y+24,1,obj_cr2);
				instance_create_depth(x+40,y+24,1,obj_cr3);
			}
			instance_destroy();break;
}
