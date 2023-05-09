/*
  0 - Ожидание
  1 - атаки и бомба
*/
if (state = 0) { //ожидание
    t++;
	if t = 50
	{
		t = 0;
		state = 1;
	}
}

if (state = 1) {
    t++;
	switch(t)
	{
		case 50:	
			var b = instance_create_depth(x,y,depth-1,obj_boss_l2_bomb_small);
			b.hspd = irandom_range(-3,3);
			break; // бросок минибомб	
		case 100:	
			var b = instance_create_depth(x,y,depth-1,obj_boss_l2_bomb_small);
			b.hspd = irandom_range(-3,3);
			break; // бросок минибомб
		case 150:	var b = instance_create_depth(x,y,depth-1,obj_boss_l2_bomb_big);break; // Бросок большой бомбы	
		case 200:	state = 0;t = 0;break; 
	}
}

#region Получение урона
if ((bomb_hit >= 2) && (state < 2)) {
    if instance_exists(obj_boss_l2_bomb_big) instance_destroy(obj_boss_l2_bomb_big);
    if instance_exists(obj_boss_l2_bomb_small) instance_destroy(obj_boss_l2_bomb_small);
	state = 2;
}

if (state = 2) { // Падение
    y+=2;
	if y >=256
	{
		y = 256;
		state = 3;
		t = 0;
	}
}



#endregion

if (state = 3) {
    t++;
	if t = 50 {
		instance_create_depth(x+32,y,depth,obj_armor_skel);
		instance_create_depth(x-32,y,depth,obj_armor_skel);
		sprite_index = -1;
		image_speed = 0;	
		state = 4;
	}
}

if state = 4
{
	if !instance_exists(obj_armor_skel)
	{
		instance_create_depth(240,96,depth,obj_boss_l2_phase3_pre);
		instance_destroy()
	}
}
