/// @description Insert description here
// You can write your code in this editor
/*
  0 - ожидание
  1 - полет вправо
  2 - ожидание
  3 - подлет вверх
  4 - ожидание
  5 - полет влево
  6 - ожидание
  7 - подллет вверх
  8 - ожидание
*/

if (state = 0) { // Ожидание
    t++;
	if t = 25
	{
		var em = instance_create_depth(x,y+48,depth,obj_graveyard_boss1_excl_mark);
		em.fol = id;
		em.image_speed = 0.1;	
	}
	if t = 75
	{
		t = 0;
		state = 1;
	}
}
	
if (state = 1) { // Полет вправо
	
	t++;
	if t = 41 t = 0;
	if t mod 40 == 0 
	{
		var st = instance_create_depth(x,y,depth-1,obj_sfx_graveyard_boss1_steam);
		st.fol = id;
	}
    x+=hspd;
	if vert = 1
	{
		y+=vspd;	
		if y >= 224 
		{
			var expl = instance_create_depth(x,256,depth-1,obj_sfx4);
			expl.image_xscale = 2;
			expl.image_yscale = 2;
			instance_create_depth(x-16,256-4,depth-2,obj_sfx_dust_expl_small)
			instance_create_depth(x,256-4,depth-2,obj_sfx_dust_expl_small)
			instance_create_depth(x+16,256-4,depth-2,obj_sfx_dust_expl_small)
			y = 224;
			vert = -1;
			if hspd=0 hspd = 1.3;
			if x >=432
			{
				state = 2;
				t = 0;
				hspd = 0;
			}
		}
		
	}
	if vert = -1
	{
		y-=vspd;	
		if y <= 64
		{
			var expl = instance_create_depth(x,32,depth-1,obj_sfx4);
			expl.image_xscale = 2;
			expl.image_yscale = -2;
			instance_create_depth(x-16,32+4,depth-2,obj_sfx_dust_expl_small)
			instance_create_depth(x,32+4,depth-2,obj_sfx_dust_expl_small)
			instance_create_depth(x+16,32+4,depth-2,obj_sfx_dust_expl_small)
			y = 64;
			vert = 1;
		}
	}
	if x >= 432
	{
		x = 432;
		hspd = 0;		
	}
}	
	
if (state = 2) { // Ожидание
    t++;
	if t = 100
	{
		t = 0;
		state = 3;
		t = 0;
	}
}	
	
if (state = 3) { // Подлет вверх
	t++;
	if t = 41 t = 0;
	if t mod 40 == 0 
	{
		var st = instance_create_depth(x,y,depth-1,obj_sfx_graveyard_boss1_steam);
		st.fol = id;
	}
    y-= 3
	if y <= 64
	{
		y = 64;
		state = 4;
	}
}	

if (state = 4) { // Ожидание
    t++;
	if t = 25
	{
		var em = instance_create_depth(x,y+48,depth,obj_graveyard_boss1_excl_mark);
		em.fol = id;
		em.image_speed = 0.1;	
	}
	if t = 75
	{
		t = 0;
		state = 5;
		vert = 1;
		hspd = 0;
	}
}
	
if (state = 5) { // Полет влево
	t++;
	if t = 41 t = 0;
	if t mod 40 == 0 
	{
		var st = instance_create_depth(x,y,depth-1,obj_sfx_graveyard_boss1_steam);
		st.fol = id;
	}
    x+=hspd;
	if vert = 1
	{
		y+=vspd;	
		if y >= 224 
		{
			var expl = instance_create_depth(x,256,depth-1,obj_sfx4);
			expl.image_xscale = 2;
			expl.image_yscale = 2;
			instance_create_depth(x-16,256-4,depth-2,obj_sfx_dust_expl_small)
			instance_create_depth(x,256-4,depth-2,obj_sfx_dust_expl_small)
			instance_create_depth(x+16,256-4,depth-2,obj_sfx_dust_expl_small)
			y = 224;
			vert = -1;
			if hspd=0 hspd = -1.3;
			if x <=48
			{
				t = 0;
				state = 6;
				hspd = 0;
			}
		}
		
	}
	if vert = -1
	{
		y-=vspd;	
		if y <= 64
		{
			var expl = instance_create_depth(x,32,depth-1,obj_sfx4);
			expl.image_xscale = 2;
			expl.image_yscale = -2;
			instance_create_depth(x-16,32+4,depth-2,obj_sfx_dust_expl_small)
			instance_create_depth(x,32+4,depth-2,obj_sfx_dust_expl_small)
			instance_create_depth(x+16,32+4,depth-2,obj_sfx_dust_expl_small)
			y = 64;
			vert = 1;
		}
	}
	if x <= 48
	{
		x = 48;
		hspd = 0;		
	}
}	
	
if (state = 6) { // Ожидание
    t++;
	if t = 100
	{
		t = 0;
		state = 7;
	}
}	
	
if (state = 7) { // Подлет вверх
    y-= 3
	t++;
	if t = 41 t = 0;
	if t mod 40 == 0 
	{
		var st = instance_create_depth(x,y,depth-1,obj_sfx_graveyard_boss1_steam);
		st.fol = id;
	}
	if y <= 64
	{
		y = 64;
		state = 8;
		t = 0;
	}
}	
	
if (state = 8) { // Ожидание
    t++;
	if t = 50
	{
		t = 0;
		state = 1;
		vert = 1;
		hspd = 0;
	}
}	
	
	

#region Получение урона
    // получение урона
    	 
// Атака

    fnc_take_dmg_hitbox(-10,-16,-1,10,-16,-1);
    
// Топор

    fnc_take_dmg_axe(-10,-16,-1,10,-16,-1);
    
// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1);

// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-32,-1);
    

// Получение урона

    fnc_enemy_no_armor_dmg();
	
	if t_red!=0 t_red++;
	if t_red = 5 t_red = 0;



#endregion

#region Смерть

if enemy_hp <= 0
{
	instance_create_depth(x,y,depth,obj_boss_ge1_phase2_death)	;
	instance_destroy();
}
#endregion	