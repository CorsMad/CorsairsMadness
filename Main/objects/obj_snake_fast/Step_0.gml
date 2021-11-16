/// @description Insert description here
// You can write your code in this editor

#region movement
if state = 0
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

}
#endregion

#region animation


sprite_index = spr_snake_fast;

image_xscale = sign(hspd);

#endregion

#region death
	if state = 1
	{
		image_speed = 0;
		image_alpha -= 0.01;
		b++;
		switch(b)
		{
			case 1: instance_create_depth(x,y-16,-1,obj_sfx_explosion);
			        instance_destroy();
					if obj_Player.x <= x 
					{
						var c = instance_create_depth(x,y-16,depth,obj_snake_fast_death);
						c.image_xscale = image_xscale;
						c.hspd = 3;
					} else 
					{
						var c = instance_create_depth(x,y-16,depth,obj_snake_fast_death);
						c.image_xscale = image_xscale;
						c.hspd = -3;		
					}
                    break;			
		}
		vspd += 0.1;
	}
#endregion

#region #takedmg

// Атака

    fnc_take_dmg_hitbox(-10,-16,-1,10,-16,-1);
    
// Топор

    fnc_take_dmg_axe(-10,-16,-1,10,-16,-1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-32,-1);

// Получение урона

    fnc_enemy_no_armor_dmg();
    
#endregion

#region #hp

if enemy_hp < 1
{
	state = 1;
}

#endregion