/// @description Insert description here
// You can write your code in this editor

/*
  0 - появление
  1 - ожидание
  2 - полет наверху
  3 - остановка
  4 - удар вниз
  5 - приземление
  6 - сильное приземление
  7 - полет вверх
  8 - ожидание -> 1
*/

if (state = 0) { // Появление
    x +=2;
	t++;
	if t mod 40 == 0 
	{
		var st = instance_create_depth(x,y,depth-1,obj_sfx_graveyard_boss1_steam);
		st.fol = id;
	}
	if x >= 240
	{
		x = 240;
		state = 1;
		t = 0;
	}
}
	
if (state = 1) { // Ожидание
    t++;
	if t = 26 {
		var em = instance_create_depth(x,y+48,depth,obj_graveyard_boss1_excl_mark);
		em.fol = id;
		em.image_speed = 0.1;
	}
	if t = 75
	{
		t = 0;
		state = 2;
		if instance_exists(obj_Player) player_x = obj_Player.x;
	}
}	
	
if (state = 2) { // Полет наверху
	t++;
	if t mod 40 == 0 
	{
		var st = instance_create_depth(x,y,depth-1,obj_sfx_graveyard_boss1_steam);
		st.fol = id;
	}
	x = lerp(x,player_x,0.1)
	if t > 10
	{
		if abs(x - player_x) < 8
		{
			t = 0;
			state = 3;
		}
	}	
}

if (state = 3) { // Остановка 
    t++;
	if t = 2
	{
		state = 4;
		t = 0;
	}
}

if (state = 4) { // Удар вниз
    y+=7;
	t++;
	if t mod 10 == 0 
	{
		var st = instance_create_depth(x,y,depth-1,obj_sfx_graveyard_boss1_steam);
		st.fol = id;
	}
	if (y>= 224) {
	    y = 224;
		t = 0;
        fnc_snd_play_onetime(snd_enemy_boss1_dust);
		var expl = instance_create_depth(x,256,depth-1,obj_sfx4);
		expl.image_xscale = 2;
		expl.image_yscale = 2;
		instance_create_depth(x-16,256-4,depth-2,obj_sfx_dust_expl_small)
		instance_create_depth(x,256-4,depth-2,obj_sfx_dust_expl_small)
		instance_create_depth(x+16,256-4,depth-2,obj_sfx_dust_expl_small)
		if groundHit < 3 
		{
			groundHit += 1;
			state = 5;			
		} else 
		{
			groundHit = 0;
			state = 6;
		}
	}
}
	
if (state = 5) { // приземление
    t++;
	if t = 2
	{
		t = 0;
		state = 7;
	}
}	
	
if (state = 6) { // Сильное приземление
    t++;
	if (t mod 10 = 0) && t < 100
	{
		instance_create_depth(x+random_range(-16,16),y+random_range(-16,16),depth-1,obj_sfx_desert_boss1_stars);
	}
	if t = 150
	{
		t = 0;
		state = 7;
	}
}	
	
if (state = 7) { // полет вверх
    y-=4;
	t++;
	if t mod 10 == 0 
	{
		var st = instance_create_depth(x,y,depth-1,obj_sfx_graveyard_boss1_steam);
		st.fol = id;
	}
	if y <=64 
	{
		y = 64;
		state = 1;
		t = 25;
	}
}	
	


#region Получение урона
    // получение урона
    	 
     // Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,0);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,0);

// Eball

	fnc_take_dmg_eball(0,-16,-1,0);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,0)
    

// Получение урона

    fnc_enemy_no_armor_dmg();
	
	if t_red!=0 t_red++;
	if t_red = 5 t_red = 0;



#endregion

#region Смерть

if enemy_hp <= 0
{
	instance_create_depth(x,y,depth,obj_boss_g1_phase1_death)	;
	instance_destroy();
}
#endregion