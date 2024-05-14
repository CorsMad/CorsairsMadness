/// @description Insert description here
// You can write your code in this editor

#region idle
	if state = 1
	{
		sprite_index = spr_plant_idle;
		timer ++;
		if timer = 100
		{
			state = 2;	
			image_index = 0;
			sprite_index = spr_plant_prepare 
		}
	}
#endregion

#region prepare

if state = 2 
{
	
	timer = 0;
	if (image_index > image_number - 1) 
	{
		state = 3;
		image_index = 0;
		sprite_index = spr_plant_attack;
		attack = 1;
	}
}

#endregion

#region attack

if state = 3 
{
	if attack = 1 
	{
		if (image_index > image_number - 1) 
		{
			image_speed = 0
			timer++;
			if timer = 10 
			{
				timer = 0;
				image_speed = 1;
				image_index = 0;
				attack = 2;
			}
		}
	}
	
	if attack = 2 
	{
		if (image_index > image_number - 1) 
		{
			state = 4;
			image_speed = 0;
		}
	}
	if image_index = 4
	{
        fnc_snd_play_near_player(snd_plant_shoot);
		if image_xscale = 1
		{  
			instance_create_depth(x-10,y-16,depth,obj_plant_projectile);
		}
		if image_xscale = -1 
		{
			var a = instance_create_depth(x+10,y-16,depth,obj_plant_projectile);
			a.spd = 2
		}
	}
	
}

#endregion

#region wait

	if state = 4
	{
		timer++;
		if timer = 10
		{
			image_index = 0;
			timer = 0;
			image_speed = 1;
			sprite_index = spr_plant_idle;
			state = 1;
		}
	}
#endregion

#region death

if state = 5
{
	mask_index = spr_blank;	
	image_speed = 0;
	b++;
	switch(b)
	{
		case 1: instance_create_depth(x,y-16,-1,obj_sfx_explosion);
                fnc_drop_mana_gold_after_death(30,45)
                break;
		case 5: instance_destroy();break;
	}
}

#endregion

#region #takedmg
	 
// Атака

    fnc_take_dmg_hitbox(-10,-8,-1,10,-8,-1);

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

#region #hp

if enemy_hp < 1
{
	state = 5;
	mask_index = spr_blank;	
	image_alpha = 0.5;
}

#endregion

#region взаимодействие с пружинами

if place_meeting(x,y,obj_abil_boots_hitbox)
{
    fnc_snd_play_onetime(snd_player_springboots);
    obj_Player.sbootsbuffer = 1;
    obj_Player.vspd = -6;
    obj_Player.dash_counts = 1;
    instance_create_depth(obj_abil_boots_hitbox.x,obj_abil_boots_hitbox.y+20,obj_abil_boots_hitbox.depth-1,obj_sfx4);
    instance_destroy(obj_abil_boots_hitbox);
}
    
#endregion