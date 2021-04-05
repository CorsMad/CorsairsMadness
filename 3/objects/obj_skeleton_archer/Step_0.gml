/// @description Insert description here
// You can write your code in this editor

#region wait/check

if state = 1 
{
	sprite_index = spr_skeleton_archer_walk;
	image_index = 0;
	image_speed = 0;
	if  instance_exists(obj_Player) 
	{
	    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    
	    if dis<180 
		{
	        state = 2;
			sprite_index = spr_skeleton_archer_attack;
	    }
	}
}

#endregion

#region attack

if state = 2
{
	a++;
	
	switch(a)
	{
		case 1:		image_index = 0;break;
		case 5:		image_index = 1;break;
		case 10:	image_index = 2;break;
		case 55:	image_index = 3;
					var i = instance_create_depth(x,y-16,1,obj_skeleton_archer_arrow);
					if image_xscale = 1
					{
						i.hspd = 5;
					}
					if image_xscale = -1
					{
						i.hspd = -5;	
					}
					break;
		case 75:	image_index = 4;break;
		case 90:	if  instance_exists(obj_Player) 
					{
				    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    
					    if dis<80 
						{
					        state = 3;
							sprite_index = spr_skeleton_archer_walk;
							image_speed = 0;
							a = 0;
					    } 
						if dis >=80 &&  dis < 180
						{
							a = 0;
							image_speed =0;
						}
						if dis >= 180 
						{
							a = 0;
							state = 1;
						}
					}
					break;	
	}
}	
	
#endregion

#region run

if state = 3
{
	if spd != 0 
	{
		image_speed = 1;	
	} else 
	{
		image_speed = 0;
		image_index = 0;
	}
	a++;
	x = x+spd;
	if (x > obj_Player.x) 
	{
		if !place_meeting(x+1,y,obj_block) && position_meeting(bbox_right+1, bbox_bottom+1, obj_block)
		{
			spd = 1;
		} else spd = 0;
	} 
	
	if (x <= obj_Player.x)
	{
		if !place_meeting(x-1,y,obj_block) && position_meeting(bbox_left-1, bbox_bottom+1, obj_block)
		{
			spd = -1;
		} else spd = 0;	
	}	
	
	if a = 120 
	{
		a = 0;
		spd = 0;
		state = 1;
	}
	
}


#endregion

#region #animation

if x > obj_Player.x
{
	image_xscale = -1;	
}
if x <= obj_Player.x
{
	image_xscale = 1;
}

#endregion

#region #death

	if state = 4
	{
		b++;
		switch(b)
		{
			case 1 : instance_create_depth(x,y-16,1,obj_skeleton_bone);instance_create_depth(x,y-16,1,obj_sfx_sparkle_creator);break;
			case 10: instance_create_depth(x,y-16,1,obj_skeleton_bone);break;
			case 15: instance_create_depth(x,y-16,1,obj_skeleton_bone);break;
			case 20: instance_create_depth(x,y-16,1,obj_skeleton_bone);break;
			case 25: instance_create_depth(x,y-16,1,obj_skeleton_bone);break;
			case 30: instance_create_depth(x,y-16,1,obj_skeleton_bone);break;
			case 45: instance_destroy();break;
			
		}
		image_alpha = 0.5;	
	}

#endregion

#region takedmg

	fnc_enemy_no_armor_dmg();
		
		if place_meeting(x,y,obj_hitbox) && hit_cd = 0
		{
			instance_create_depth(x,y-16,-1,obj_sfx_weapon_slash);
		}
		if enemy_hp < 0
		{
			a = 0;
			state = 4;
			mask_index = spr_blank;
			image_speed = 0;
			hspd = 0;
			vspd = 0;
		}
		

#endregion