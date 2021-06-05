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
		instance_create_depth(x,y,depth-1,obj_boss1_excl_mark);	
	}
	if t2 = 140
	{
		t2 = 0;
		state = 3;
	}
}

#endregion
#region Полет вверх влево + выстрелы
if state = 3
{
	t3++;
	if t3 = 1 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);	
	}
	switch(t3)
	{
		case 5 	:	var i1 = instance_create_depth(x,y,depth-1,obj_boss1_small_projectile_creator);
					i1.stage = 1;
					break;
		case 60 :	var i2 = instance_create_depth(x,y,depth-1,obj_boss1_small_projectile_creator);
					i2.stage = 2;
					break;
		case 120:	var i1 = instance_create_depth(x,y,depth-1,obj_boss1_small_projectile_creator);
					i1.stage = 1;
					break;
		case 180:	var i2 = instance_create_depth(x,y,depth-1,obj_boss1_small_projectile_creator);
					i2.stage = 2;
					break;
		case 240:	var i1 = instance_create_depth(x,y,depth-1,obj_boss1_small_projectile_creator);
					i1.stage = 1;
					break;
	}
	if t3 mod 40 == 0 
	{	
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}
	if t3 = 279 
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
#region Перелет по кругу
if state = 5
{
	t5++;	
	if t5 = 1 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);	
	}
	if t5 mod 40 == 0 
	{	
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}
	if t5 = 239
	{
		t5 = 0;	
		state = 6;
	}
}

#endregion
#region Ожидание
if state = 6
{
	t6++;
	if t6 = 60 
	{
		instance_create_depth(x,y,depth-1,obj_boss1_excl_mark);	
	}
	if t6 = 140
	{
		t6 = 0;
		state = 7;
	}
}
#endregion
#region Полет  влево вниз + выстрелы
if state = 7
{
	t7++;
	if t7 = 1 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);	
	}
	if t7 mod 40 == 0 
	{	
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}
	if t7 = 1 
	{
		instance_create_depth(x,y,depth-1,obj_boss1_big_projectile_creator);
	}
	if t7 mod 90 == 0 
	{
		instance_create_depth(x,y,depth-1,obj_boss1_big_projectile_creator);
	}
	if t7 = 279
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
	if t2 = 100
	{
		t2 = 0;
		state = 9;
	}
}
#endregion
#region Полет вправо + отдых
if state = 9
{
	t9++;
	if t9 = 1 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);	
	}
	if t9 mod 40 == 0 
	{	
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}
	if t9 mod 25 == 0 
		{
			instance_create_depth(x+random_range(-16,16),y+random_range(0,-16),depth-1,obj_sfx3);
		}
		if t9 mod 20 == 0 
		{
			instance_create_depth(x+random_range(-16,16),y+random_range(0,-16),depth-1,obj_sfx_boss1_stars);
		}	
	if t9 = 350 
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
		t2 = 0;
		state = 3;
	}	
}
#endregion
#region Смерть
if state = 15
{
	path_end();
	instance_create_depth(x,y,depth,obj_boss1_phase_death3);
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