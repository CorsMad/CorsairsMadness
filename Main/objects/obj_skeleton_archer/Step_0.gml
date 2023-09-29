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
		case 85:	image_index = 3;
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
		case 95:	image_index = 4;break;
		case 105:	if  instance_exists(obj_Player) 
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
		var skel_d = instance_create_depth(x,y,-1,obj_skeleton_archer_dead);
        skel_d.sprite_index = sprite_index;
        skel_d.image_index = image_index;
        skel_d.image_xscale = image_xscale;
        skel_d.image_alpha = 0.5;
        instance_destroy();
    }

#endregion

#region takedmg
 
 #region #takedmg

// Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);

// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-32,-1);
	
// Топор

    fnc_take_dmg_axe(-10,-16,-1,10,-16,-1,1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)

// Получение урона

    fnc_enemy_no_armor_dmg();

#endregion
 
 
 
		if enemy_hp < 0
		{
			state = 4;
		}
		

#endregion