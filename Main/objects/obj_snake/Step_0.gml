 /// @description Insert description here
// You can write your code in this editor

if state = 0
{
	#region #movement

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

	#endregion
	#region #animation

	sprite_index = spr_snake_move;
	image_xscale = -sign(spd);

	#endregion
	#region #hp

	if enemy_hp < 1
	{
		vspd = -3;
		state = 1
	}

	#endregion
}

#region #takedmg
if state != 1 
{
        
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
}
#endregion
	
#region death
	if state = 1
	{
		image_speed = 0;
		image_alpha -= 0.01;
		b++;
		switch(b)
		{
			case 1: instance_create_depth(x,y-16,-1,obj_sfx_explosion);break;
			case 2: instance_destroy();
					if obj_Player.x <= x 
					{
						var c = instance_create_depth(x,y-16,1,obj_snake_death);
						c.image_xscale = facing;
						c.hspd = 3;
					} else 
					{
						var c = instance_create_depth(x,y-16,1,obj_snake_death);
						c.image_xscale = facing;
						c.hspd = -3;		
					}
					break;	
		}
		vspd += 0.1;
	}
#endregion

y += vspd;
facing = image_xscale;
