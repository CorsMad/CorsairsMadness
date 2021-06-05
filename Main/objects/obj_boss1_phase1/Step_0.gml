/// @description Insert description here
// You can write your code in this editor

#region Состояния
#region Прибытие из-за экрана
if state = 1
{
	t1++;
	if t1 mod 40 == 0 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}
	if t1 = 160
	{
		t1 = 0;
		state = 2;	
	}
}
#endregion
#region Ожидание1
if state = 2
{
	t2++;
	if t2 = 60
	{
		t2 = 0;
		state = 3;
	}
}

#endregion
#region Полет вниз вверх + выстрелы
if state = 3
{
	t3++;
	if t3 = 1 
	{
		instance_create_depth(x,y,depth-1,obj_boss1_big_projectile_creator);
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}
	if t3 mod 90 == 0 
	{
		instance_create_depth(x,y,depth-1,obj_boss1_big_projectile_creator);
	}
	if t3 mod 40 == 0 
	{	
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}

	if t3 = 319 
	{
		t3 = 0;
		state = 4;
	}
}

#endregion
#region Ожидание2
if state = 4
{
	t2++;
	if t2 = 60 
	{
		instance_create_depth(x,y,depth-1,obj_boss1_excl_mark);
	}
	if t2 = 140 
	{
		t2 = 0;
		state = 5;
	}
}
#endregion
#region Полет наискосок
if state = 5
{
	
	t5++;
	if t5 mod 40 == 0 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}
	if t5 = 1 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);;	
	}
	if t5 = 10 
	{
		instance_create_depth(x+32,y,depth-1,obj_sfx_boss1_dust);
	}
	if t5 = 159
	{
		t5 = 0;	
		state = 6;
	}
}

#endregion
#region Разворот
if state = 6
{
	t6++;
	if t6 = 60
	{
		t6 = 0;
		state = 7;
	}
}
#endregion
#region Полет вверх медленный + отдых
if state = 7
{
	t7++;
	if t7 mod 25 == 0 
	{
		instance_create_depth(x+random_range(-16,16),y+random_range(0,-16),depth-1,obj_sfx3);
	}
	if t7 mod 20 == 0 
	{
		instance_create_depth(x+random_range(-16,16),y+random_range(0,-16),depth-1,obj_sfx_boss1_stars);
	}
	if t7 = 1 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);	
	}
	if t7 mod 40 == 0 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}
	
	if t7 = 300
	{
		t7 = 0;
		state = 8;
	}
}
#endregion
#region Ожидание3
if state = 8
{
	t2++;
	if t2 = 60
	{
		t2 = 0;
		state = 9;
	}
}
#endregion
#region Полет вниз вверх + выстрел
if state = 9 
{
	t9++;
	if t9 mod 90 == 0 
	{
		instance_create_depth(x,y,depth-1,obj_boss1_big_projectile_creator);
	}
	if t9 = 1 
	{
		instance_create_depth(x,y,depth-1,obj_boss1_big_projectile_creator);
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}
	if t9 mod 40 == 0 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}
	if t9 = 319
	{
		t9 = 0;
		state = 10;
	}
}
#endregion
#region Ожидание4
if state = 10
{
	t2++;
	if t2 = 60 
	{
		instance_create_depth(x,y,depth-1,obj_boss1_excl_mark);
	}
	if t2 = 140 
	{
		t2 = 0;
		state = 11;
	}	
}
#endregion
#region Полет наискосок
if state = 11
{
	t11++;	
	if t11 mod 40 == 0 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}
	if t11 = 1 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);	
	}
	if t11 = 10 
	{
		var d1 = instance_create_depth(x-32,y,depth-1,obj_sfx_boss1_dust);
		d1.image_xscale = -1;
	}
	if t11 = 150
	{
		t11 = 0;	
		state = 12;
	}
}

#endregion
#region Ожидание
if state = 12
{
	t12++;
	if t12 = 40
	{
		t12 = 0;
		state = 13;
	}
}
#endregion
#region Полет вверх медленный + отдых
if state = 13
{
	t13++;
	if t13 mod 40 == 0 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}
	if t13 mod 25 == 0 
	{
		instance_create_depth(x+random_range(-16,16),y+random_range(0,-16),depth-1,obj_sfx3);
	}
	if t13 mod 20 == 0 
	{
		instance_create_depth(x+random_range(-16,16),y+random_range(0,-16),depth-1,obj_sfx_boss1_stars);
	}
	if t13 = 1
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);	
	}
	if t13 = 300
	{
		t13 = 0;
		state = 14;
	}
}
#endregion
#region Ожидание5
if state = 14
{
	t2++;
	if t2 = 60 
	{
		t2 = 0;
		state = 3;
	}	
}
#endregion
#region Смерть
if state = 15
{
	path_end();
	instance_create_depth(x,y,depth,obj_boss1_phase_death1);
	instance_destroy();
	
}
#endregion
#endregion

#region Попадание и кд

if state !=15
{
	if place_meeting(x,y,obj_hitbox) && hit_cd = 0
	{
		hit_cd = 1;
		enemy_hp -=1;
		if obj_Player.dir = 1
		{
			instance_create_depth(obj_hitbox.x+8,obj_hitbox.y-20,depth-1,obj_sfx_weapon_slash);
		} else instance_create_depth(obj_hitbox.x-8,obj_hitbox.y-20,depth-1,obj_sfx_weapon_slash);

	}
    if place_meeting(x,y,obj_item_axe) && hit_cd = 0
	{
		hit_cd = 1;
		enemy_hp -=2;
        instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-1,obj_sfx_weapon_slash);
	}
	
	if place_meeting(x,y,obj_hitbox_down) && hit_cd = 0
	{
		hit_cd = 1;
		enemy_hp -=1;
		instance_create_depth(obj_hitbox_down.x,obj_hitbox_down.y+18,depth-1,obj_sfx_weapon_slash);
	}
	
	if hit_cd !=0 
	{
		hit_cd++;	
	}
	if hit_cd = 20
	{
		hit_cd = 0;	
	}
	if hit_cd > 1 
	{
		image_blend = make_color_hsv(245,255,255);
	} else image_blend = c_white;
}

#endregion

#region смерть
if enemy_hp <= 0 
{
	state = 15;	
}
#endregion