/// @description Insert description here
// You can write your code in this editor
if state != 4
{
	if (obj_Player.x >= x) 
	{
		image_xscale = -1	
	} else image_xscale = 1;
}


#region walk

if state = 1 
{
	if spd != 0 
	{
		image_speed = 1;	
	} else 
	{
		image_speed = 0;
		image_index = 0;
	}
	sprite_index = spr_skeleton_thrower_walk;
	image_speed = 0.5;
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
	
	
	
	if a = 60 
	{
		a = 0;
		state = 2;
		spd = 0;
		image_index = 0;
		sprite_index = spr_skeleton_thrower_attack;
		image_speed = 0;
	}
}

#endregion

#region attack

if state = 2
{
	a++;	
	switch(a)
	{
		case 30:image_index = 1;
				var i = instance_create_depth(x,y-16,-1,obj_skeleton_thrower_axe);
				if obj_Player.x > x
				{
					i.image_xscale = 1;	
				} else i.image_xscale = -1;
				break;
		case 50:image_index = 0;break;
		case 90:image_index = 1;
				var i = instance_create_depth(x,y-16,-1,obj_skeleton_thrower_axe);
				if obj_Player.x > x
				{
					i.image_xscale = 1;	
				} else i.image_xscale = -1;
				break;
				break;
		case 110:sprite_index = spr_skeleton_thrower_walk;image_index = 0;break;
		case 130:a = 0;
				 var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
				 if dis > 180 
				 {
					state = 3;	 
				 } else state = 1;
				 break;
	}
	
}

#endregion

#region wait

if state = 3
{
	sprite_index = spr_skeleton_thrower_walk;
	image_index = 0;
	image_speed = 0;
	var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
	if dis < 180 
	{
		state = 1;	
	}
}

#endregion

#region #death

	if state = 4
	{
		var skel_d = instance_create_depth(x,y,-1,obj_skeleton_archer_dead);
        skel_d.sprite_index = sprite_index;
        skel_d.image_index = image_index;
        skel_d.image_xscale = image_xscale;
        skel_d.image_alpha = 0.5;
        instance_destroy();
	}

#endregion

#region takedmg

// Атака

    fnc_take_dmg_hitbox(-10,-16,-1,10,-16,-1);
    
// Топор

    fnc_take_dmg_axe(-10,-16,-1,10,-16,-1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-32,-1);

// Получение урона

    fnc_enemy_no_armor_dmg();	
		
		if enemy_hp <= 0
		{
			state = 4;
		}
	
		

#endregion