/// @description Insert description here
// You can write your code in this editor

#region walk
if state = 1 
{
	image_xscale = -sign(spd);
	sprite_index = spr_armored_thing_walk;
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
		
	if  instance_exists(obj_Player) 
	{
	    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    
	    if dis<80 
		{
			image_index = 0;
			sprite_index = spr_armored_thing_hide;
	        state = 2;
	    }
	}
}

#endregion

#region hide

if state = 2 
{	
	if (image_index > image_number - 1) 
	{
		image_index = 0;
		sprite_index = spr_armored_thing_in_shell;
		state = 3;	
	}
}

#endregion

#region in shell

if state = 3 
{
	a++;
	if place_meeting(x,y,obj_hitbox)
	{
		a = 60;
	}
	if a = 120 
	{
		image_index = 0;
		sprite_index = spr_armored_thing_prepare;
		state = 4;
		a = 0;
	}
}

#endregion

#region prepare

if state = 4 
{
	if obj_Player.x > x 
	{
		image_xscale = -1;
	} else image_xscale = 1;
	sprite_index = spr_armored_thing_prepare;
	a++;
	if a = 90 
	{
		image_index = 0;
		sprite_index = spr_armored_thing_attack;
		state = 5;
		a = 0;
	}
}

#endregion

#region attack

if state = 5 
{
	if obj_Player.x > x 
	{
		image_xscale = -1;
	} else image_xscale = 1;
	a++;
	if a = 1 || a = 59
	{
		instance_create_depth(x,y-16,1,obj_armored_thing_projectile); 	
	}
	if a = 60
	{
		if  instance_exists(obj_Player) 
		{
		    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    
		    if dis<80 
			{
				sprite_index = spr_armored_thing_hide;
				image_index = 0;
		        state = 2;
				a = 0;
		    }  
			if dis>80
			{
				sprite_index = spr_armored_thing_open;
				image_index = 0;
				state = 6;	
				a = 0;
			}
		}	
	}
}

#endregion

#region appear

if state = 6
{
	if (image_index > image_number - 1) 
	{
		sprite_index = spr_armored_thing_walk;
		image_index = 0;
		state = 1;	
	}	
}

#endregion

#region death

if state = 7 
{
	
}

#endregion

#region takedmg
           
        if state!=7 && state!=3
        {
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
                
        }
                    
		if hit_cd_sp = 0 && state != 7 && state = 3
		{
            if place_meeting(x,y,obj_hitbox) 
            {
    			instance_create_depth(x,y-16,-1,obj_sfx_weapon_slash);
                hit_cd_sp = 1;
            }
            if place_meeting(x,y,obj_hitbox_down)
            {
                instance_create_depth(x,y-20,-1,obj_sfx_weapon_slash);
                hit_cd_sp = 1;   
                obj_Player.isAttackingdown = 0;
        		obj_Player.attackingdown_timer = 0;
        		obj_Player.vspd = -5;  
            }
			
	
// Топор

    fnc_take_dmg_axe(-10,-16,-1,10,-16,-1,1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)
          
		}
        if hit_cd_sp!=0 hit_cd_sp++;
        if hit_cd_sp = 10 hit_cd_sp = 0;
		
#endregion

#region #hp

if state = 3 
{
	isVulnerable = 0;
}	else isVulnerable = 1;


if state != 7 && enemy_hp < 1 
{
	a = 0;	
}

if enemy_hp <=0
{
	var death = instance_create_depth(x,y,depth,obj_armored_thing_death);
	death.image_xscale = image_xscale;
	instance_destroy();
}

#endregion