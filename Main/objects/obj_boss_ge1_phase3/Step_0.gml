/// @description Insert description here
// You can write your code in this editor

/*
  0 - ожидание
  1 - Выстрелы в игрока
  2 - ожидание
  2 - Перелет вправо
  3 - ожидание
  4 - выстрелы в игрока
  5 - ожидание
  6 - перелт влево -> 0
*/


if (state = 0) { // Ожидание
	t++;
	if t= 100
	{
		t = 0;
		state = 1;
	}    
}

if (state = 1) { // Выстрелы в игрока слева
    t++;
	if t = 100
	{
		instance_create_depth(x,y,depth-1,obj_boss1_big_projectile_creator);
	}
	if t = 250 t = 0;
	
	#region Игрок рядом
	if instance_exists(obj_Player)
	{
		if (abs(obj_Player.x-x) < 8*16) && (abs(obj_Player.y - y) < 5*16)
		{
			if t_nearby < t_nearby_max+1 t_nearby++;	
		}
	}
	
	if t_nearby >= t_nearby_max && !instance_exists(obj_boss1_big_projectile_creator) // и нет выстрелов
	{		
		t_nearby = 0;
		state = 2;
		t =0 ;
	}
	
	#endregion
	
	
}

if (state = 2) { // Перелет вправо
    t++;
	if t = 25
	{
		var em = instance_create_depth(x,y+48,depth,obj_graveyard_boss1_excl_mark);
		em.fol = id;
		em.image_speed = 0.1;	
	}
	if t > 75 //Воскл знак
	{
		t++;
		if t = 41 t = 0;
		if t mod 40 == 0 
		{
			var st = instance_create_depth(x,y,depth-1,obj_sfx_graveyard_boss1_steam);
			st.fol = id;
		}
		x +=4;	
	}
	if x >= 432
	{
		x = 432;
		t = 0;
		state = 3;
	}
}
	
if (state = 3) { // Ожидание
    t++;
	if t = 100
	{
		t = 0;
		state = 4;
	}
}	

if (state = 4) { // Выстрелы в игрока справа
    t++;
	if t = 100
	{
		instance_create_depth(x,y,depth-1,obj_boss1_big_projectile_creator);
	}
	if t = 250 t = 0;
	
	#region Игрок рядом
	if instance_exists(obj_Player)
	{
		if (abs(obj_Player.x-x) < 8*16) && (abs(obj_Player.y - y) < 5*16)
		{
			if t_nearby < t_nearby_max+1 t_nearby++;	
		}
	}
	
	if t_nearby >= t_nearby_max && !instance_exists(obj_boss1_big_projectile_creator) // и нет выстрелов
	{		
		t_nearby = 0;
		state = 5;
		t =0 ;
	}
	
	#endregion
}
	
if (state = 5) { // Перелт влево
    t++;
	if t = 25
	{
		var em = instance_create_depth(x,y+48,depth,obj_graveyard_boss1_excl_mark);
		em.fol = id;
		em.image_speed = 0.1;	
	}
	if t > 75 //Воскл знак
	{
		t++;
		if t = 41 t = 0;
		if t mod 40 == 0 
		{
			var st = instance_create_depth(x,y,depth-1,obj_sfx_graveyard_boss1_steam);
			st.fol = id;
		}
		x -=4;	
	}
	if x <= 48
	{
		x = 48;
		t = 0;
		state = 0;
	}
}	
	

#region Получение урона
    // получение урона
    	 
     // Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)
    

// Получение урона

    fnc_enemy_no_armor_dmg();
	
	if t_red!=0 t_red++;
	if t_red = 5 t_red = 0;



#endregion

#region Смерть

if enemy_hp <= 0
{
	instance_create_depth(x,y,depth,obj_boss_ge1_phase3_death)	;
	instance_destroy();
}
#endregion	