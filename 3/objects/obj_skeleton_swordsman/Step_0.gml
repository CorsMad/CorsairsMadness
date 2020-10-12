/// @description Insert description here
// You can write your code in this editor

#region walk

if state = 1 
{
	sprite_index = spr_skeleton_swordsman_walk;
	image_xscale = sign(spd);
	if !position_meeting(bbox_left-1, bbox_bottom+1, obj_block) || !position_meeting(bbox_right+1, bbox_bottom+1, obj_block)
	{
		spd = -spd;
	}

	if place_meeting(x+spd,y,obj_block)
	{
		while(!place_meeting(x+sign(spd),y,obj_block))
		{
			x = x+sign(spd);	
		}
		spd = -spd;
	}
	x = x+spd;
	
	var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    
	    if dis<180 
		{
			image_index = 0;
	        state = 2;
	    }
	
}

#endregion

#region prepare to attack

if state = 2
{	
	a++;
	sprite_index = spr_skeleton_swordsman_prepare;
	if obj_Player.x < x
	{
		image_xscale = -1;	
	} else image_xscale = 1;
	if (image_index > image_number - 1) 
	{
		image_speed = 0;
	}
	if a = 90 
	{
		state = 3;
		image_index = 0;
		image_speed = 1;
		sprite_index = spr_skeleton_swordsman_attack;
	}
}	

#endregion

#region attack

if state = 3
{
	a++;
	if (image_index > image_number - 1) 
	{
		image_speed = 0;
	}
	
	if !position_meeting(bbox_left-1, bbox_bottom+1, obj_block) || !position_meeting(bbox_right+1, bbox_bottom+1, obj_block)
	{
		spd = -spd;
	}

	if place_meeting(x+spd,y,obj_block)
	{
		while(!place_meeting(x+sign(spd),y,obj_block))
		{
			x = x+sign(spd);	
		}
		spd = -spd;
	}
	x = x+spd;
	
}

#endregion

#region wait



#endregion