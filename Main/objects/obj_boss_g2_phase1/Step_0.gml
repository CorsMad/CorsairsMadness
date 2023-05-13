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
		}
	}		
}

if (state = 1.2) { // вверху слева
	t++;
	x = 176;
	y = 128;
	if t = 50{
		instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_point)
	}	
	if t = 100{
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
	y = 128;
	t++;
    if t = 50{
		instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_point)
	}
	if t = 100{
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
    if t = 50{
		instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_point)
	}
	if t = 100{
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
	x = 336;
	y = 208;
	if t = 50{
		instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_point)
	}
	if t = 100{
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
	
