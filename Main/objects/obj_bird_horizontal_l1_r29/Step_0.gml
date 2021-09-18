/// @description Insert description here
// You can write your code in this editor
#region movement
if state = 1
{
	if place_meeting(x+spd,y,obj_bird_limiter)
	{
		spd = -spd;	
	}
	x+=spd;
	image_xscale = sign(spd);
}
#endregion

#region #takedmg
	if (place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_item_axe)) && hit_cd = 0
	{
		if obj_Player.x < x 
		{
			instance_create_depth(x-10,y,-1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+10,y,-1,obj_sfx_weapon_slash);
	}
		
	if place_meeting(x,y,obj_item_axe) && hit_cd = 0
	{
		instance_create_depth(x,y,-1,obj_sfx_weapon_slash);
	}
		
	if place_meeting(x,y,obj_hitbox_down) && hit_cd = 0
	{
        if instance_exists(obj_hitbox_down)
        {
            obj_Player.isAttackingdown = 0;
    		obj_Player.attackingdown_timer = 0;
    		obj_Player.vspd = -5;
        }
		instance_create_depth(x,y-16,-1,obj_sfx_weapon_slash);
	}  
	fnc_enemy_no_armor_dmg();

#endregion

#region #hp

if enemy_hp < 1
{
	state = 2;
	instance_create_depth(x,y,1,obj_bird_green_dead);
}

#endregion

#region death

if state = 2
{
	instance_create_depth(x,y,-1,obj_sfx_explosion);
	instance_destroy();
}

#endregion