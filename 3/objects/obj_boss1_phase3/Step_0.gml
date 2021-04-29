/// @description Insert description here
// You can write your code in this editor

#region Состояния
#region Прибытие из-за экрана
if state = 1
{
	t1++;
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
#region Полет вверх влево + выстрелы
if state = 3
{
	t3++;	
	if t3 = 350 
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
		t2 = 0;
		state = 5;
	}
}
#endregion
#region Перелет по кругу
if state = 5
{
	t5++;	
	if t5 = 350
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
	if t6 = 40
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
#region Полет вправо + отдых
if state = 9
{
	t9++;	
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
	instance_create_depth(x,y,depth,obj_boss1_phase_death);
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
	if hit_cd !=0 
	{
		hit_cd++;	
	}
	if hit_cd = 20
	{
		hit_cd = 0;	
	}
}

#endregion

#region смерть
if enemy_hp <= 0 
{
	state = 15;	
}
#endregion