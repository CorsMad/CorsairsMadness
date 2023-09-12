/// @description Insert description here
// You can write your code in this editor
/*
  0 - начало
  1 - вылез из рандомной точки
  2 - ожидание
  3 - выстрел 
  
*/


if (state = 0) {
    t++;
	if t > 100
	{		
		place_appear = irandom(3);
		if place_appear!= place_appear_prev
		{
			switch(place_appear)
			{
				case 0: state = 1.2;break;	
				case 1: state = 1.4;break;	
				case 2: state = 1.6;break;	
				case 3: state = 1.8;break;	
			}
			place_appear_prev = place_appear;
			t = 0;
            sprite_index = spr_boss_g2_p1_appear;
            image_index =0 ;
            image_speed =0;
		}
	}		
}

if (state = 1.2) { // вверху слева
	t++;
    image_xscale = 1;
    switch(t) // ANIM
    {
        case 5: image_index = 1;break;
        case 10: image_index = 2;break;
        case 15: image_index = 3;break;
        case 20: image_index = 4;break;
        case 25: sprite_index = spr_boss_g2_p1_idle;image_speed = 1;break;        
        case 100: image_index = 0;sprite_index = spr_boss_g2_p1_attack;image_speed = 0;break;
        case 140: image_index = 1;break;
        case 145: image_index = 2;break;
        case 150: image_index = 3;break;
        case 155: image_index = 2;break;
        case 160: image_index = 1;break;
        case 170: sprite_index = spr_boss_g2_p1_idle;image_speed = 1;break;       
        case 175: sprite_index = spr_boss_g2_p1_appear;image_speed = 0;image_index = 4;break;
        case 180: image_index = 3;break;
        case 185: image_index = 2;break;
        case 190: image_index = 1;break;
        case 195: image_index = 0;break;        
    }
	x = 176;
	y = 128;
	if t = t_a1{
		instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_point)
	}	
	if t = t_a2{
		if shoot_time < 3 shoot_time++ else 
		{
			shoot_time = 0;
			if instance_exists(obj_boss_g2_phase_poison)
			{
				obj_boss_g2_phase_poison.state = 2;
			}	
		}
		t = 0;
		state = 0;
	}
}
	
if (state = 1.4) { // вверху справа
	x = 336;
    image_xscale = -1;
	y = 128;
	t++;
    switch(t) // ANIM
    {
        case 5: image_index = 1;break;
        case 10: image_index = 2;break;
        case 15: image_index = 3;break;
        case 20: image_index = 4;break;
        case 25: sprite_index = spr_boss_g2_p1_idle;image_speed = 1;break;        
        case 100: image_index = 0;sprite_index = spr_boss_g2_p1_attack;image_speed = 0;break;
        case 140: image_index = 1;break;
        case 145: image_index = 2;break;
        case 150: image_index = 3;break;
        case 155: image_index = 2;break;
        case 160: image_index = 1;break;
        case 170: sprite_index = spr_boss_g2_p1_idle;image_speed = 1;break;       
        case 175: sprite_index = spr_boss_g2_p1_appear;image_speed = 0;image_index = 4;break;
        case 180: image_index = 3;break;
        case 185: image_index = 2;break;
        case 190: image_index = 1;break;
        case 195: image_index = 0;break;        
    }
    if t = t_a1{
		instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_point)
	}
	if t = t_a2{
		if shoot_time < 3 shoot_time++ else 
		{
			shoot_time = 0;
			if instance_exists(obj_boss_g2_phase_poison)
			{
				obj_boss_g2_phase_poison.state = 2;
			}	
		}
		t = 0;
		state = 0;
	}
}	
	
if (state = 1.6) { // внизу слева
	x = 176;
	y = 208;
	t++;
    image_xscale = 1;
    switch(t) // ANIM
    {
        case 5: image_index = 1;break;
        case 10: image_index = 2;break;
        case 15: image_index = 3;break;
        case 20: image_index = 4;break;
        case 25: sprite_index = spr_boss_g2_p1_idle;image_speed = 1;break;        
        case 100: image_index = 0;sprite_index = spr_boss_g2_p1_attack;image_speed = 0;break;
        case 140: image_index = 1;break;
        case 145: image_index = 2;break;
        case 150: image_index = 3;break;
        case 155: image_index = 2;break;
        case 160: image_index = 1;break;
        case 170: sprite_index = spr_boss_g2_p1_idle;image_speed = 1;break;       
        case 175: sprite_index = spr_boss_g2_p1_appear;image_speed = 0;image_index = 4;break;
        case 180: image_index = 3;break;
        case 185: image_index = 2;break;
        case 190: image_index = 1;break;
        case 195: image_index = 0;break;        
    }
    if t = t_a1{
		instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_point)
	}
	if t = t_a2{
		if shoot_time < 3 shoot_time++ else 
		{
			shoot_time = 0;
			if instance_exists(obj_boss_g2_phase_poison)
			{
				obj_boss_g2_phase_poison.state = 2;
			}	
		}
		t = 0;
		state = 0;
	}
}

if (state = 1.8) { // вверху справа
    t++;
    image_xscale = -1;
    switch(t) // ANIM
    {
        case 5: image_index = 1;break;
        case 10: image_index = 2;break;
        case 15: image_index = 3;break;
        case 20: image_index = 4;break;
        case 25: sprite_index = spr_boss_g2_p1_idle;image_speed = 1;break;        
        case 100: image_index = 0;sprite_index = spr_boss_g2_p1_attack;image_speed = 0;break;
        case 140: image_index = 1;break;
        case 145: image_index = 2;break;
        case 150: image_index = 3;break;
        case 155: image_index = 2;break;
        case 160: image_index = 1;break;
        case 170: sprite_index = spr_boss_g2_p1_idle;image_speed = 1;break;       
        case 175: sprite_index = spr_boss_g2_p1_appear;image_speed = 0;image_index = 4;break;
        case 180: image_index = 3;break;
        case 185: image_index = 2;break;
        case 190: image_index = 1;break;
        case 195: image_index = 0;break;        
    }
	x = 336;
	y = 208;
	if t = t_a1{
		instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_point)
	}
	if t = t_a2{
		if shoot_time < 3 shoot_time++ else 
		{
			shoot_time = 0;
			if instance_exists(obj_boss_g2_phase_poison)
			{
				obj_boss_g2_phase_poison.state = 2;
			}	
		}
		t = 0;
		state = 0;
	}
}
	
    

#region TAKEDMG

if state = 0 mask_index = noone else mask_index = spr_boss_g2_phase1_mask;

if state!=0
{
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
    fnc_enemy_no_armor_dmg();
}

if enemy_hp <= 0
{
    var d = instance_create_depth(x,y,depth,obj_boss_g2_phase1_death)
    d.image_xscale = image_xscale;
    instance_destroy();
}


#endregion