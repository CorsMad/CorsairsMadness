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
	var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    
	    if dis<360 
		{
	        a++;
	    } else a = 0;
	if a = 155
	{
		instance_create_depth(x,y+8,-2,obj_sfx1);	
	}
	if a = 160
	{
		instance_create_depth(x,y,1,obj_bird_vertical_coconut);
		a = 0;
	}
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
	instance_create_depth(x,y,1,obj_bird_red_dead)
}

#endregion

#region death

if state = 2
{
	instance_create_depth(x,y,-1,obj_sfx_explosion);
	instance_destroy();
}

#endregion