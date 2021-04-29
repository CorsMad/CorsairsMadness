/// @description Insert description here
// You can write your code in this editor

#region Состояния
#region Прибытие из-за экрана
if state = 1
{
	t1++;
	
	switch(t1)
	{
		case 1  :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 20 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 40 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 60 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 80 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 90 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 110:	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 130:	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 150:	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
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
	if t3 mod 40 == 0 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}
	/*
	switch(t3)
	{
		case 1  :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 40 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 80 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 120 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 160 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 200 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 240:	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 280:	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 320:	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;		
	}
	*/
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
#region Полет наискосок
if state = 5
{
	
	t5++;
	switch(t5)
	{
		case 1  :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 40 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 80 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 120 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;			
	}
	if t5 = 10 
	{
		instance_create_depth(x+32,y,depth-1,obj_sfx_boss1_dust);
	}
	if t5 = 200
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
	if t6 = 40
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
	switch(t7)
	{
		case 1  :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 40 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 80 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 120 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 160 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 200 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 240:	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 280:	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;		
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
	switch(t9)
	{
		case 1  :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 40 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 80 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 120 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 160 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 200 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 240:	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 280:	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
				
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
		state = 11;
	}	
}
#endregion
#region Полет наискосок
if state = 11
{
	t11++;	
	switch(t11)
	{
		case 1  :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 40 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 80 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 120 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;			
	}
	if t11 = 10 
	{
		var d1 = instance_create_depth(x-32,y,depth-1,obj_sfx_boss1_dust);
		d1.image_xscale = -1;
	}
	if t11 = 200
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
	switch(t13)
	{
		case 1  :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 40 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 80 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 120 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 160 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 200 :	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 240:	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;
		case 280:	instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);break;		
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