/// @description Insert description here
// You can write your code in this editor

/*

0 - ожидание
1 - несколько выстрелов в игрока
2 - перемещение в середину
3 - выстрелы сверху вниз несколько раз
4 - перемещение влево
5 - стреляет распылением сверху вниз и потом снизу вверх
6 - стреляет в игрока несколько раз
7 - полет в середину
8 - выстрелы сверху вниз несколько раз
9 - перемещение вправо

*/



switch(state){
	case 0: // ожидание
		t++; 
		if t = 50 {
			t = 0;
			state = 1;
		}
		break;
	case 1: // несколько выстрелов в игрока
		t++;
		if t > 50 && t < 400
		if t mod 40 = 0 scr_finalboss_phase1_proj_l();
		if t = 500 {
			t = 0;
			state = 2;
		}
		break;
	case 2: // перемещение в середину
		x-=2;
		if x <= room_width/2 {
			x = room_width/2;
			state = 3;
		}
		break;
	case 3: // выстрелы сверху вниз несколько раз
	t++;
	switch(t)
	{
		case 49:
			rand_n1 = irandom(15);
			rand_n2 = irandom(15);
			break;
		case 50:
			for (var i = 0; i < 14; i += 1)
			{
			    if i!= rand_n1 && i!= rand_n2 {
			    instance_create_depth(32+32*i,592,0,obj_bossmerch_phase1_proj1_2);}
			} 
			break;
		case 199:
			rand_n1 = irandom(15);
			rand_n2 = irandom(15);
			break;
		case 200:
			for (var i = 0; i < 14; i += 1)
			{
			    if i!= rand_n1 && i!= rand_n2 {
			    instance_create_depth(32+32*i,592,0,obj_bossmerch_phase1_proj1_2);}
			} 
			break;
		case 349:
			rand_n1 = irandom(15);
			rand_n2 = irandom(15);
			break;
		case 350:
			for (var i = 0; i < 14; i += 1)
			{
			    if i!= rand_n1 && i!= rand_n2 {
			    instance_create_depth(32+32*i,592,0,obj_bossmerch_phase1_proj1_2);}
			} 
			break;
		case 500:
			state = 4;
			t = 0;
			break;
	}
		break;
	case 4: // перемещение влево
		x-=2; 
		if x <=48{
			x = 48;
			state = 5;
			t = 0;
		}
		break;
	case 5: // стреляет распылением сверху вниз и потом снизу вверх
		t++;
		if t > 50 && t < 400
		if t mod 40 = 0 scr_finalboss_phase1_proj();
		if t = 500 {
			t = 0;
			state = 7;
		}
		break;
	case 7: // полет в середину
		x+=2;
		if x > room_width/2{
			x = room_width/2;
			state = 8;
		}
		break;
	case 8: // выстрелы сверху вниз несколько раз
		t++;
	switch(t)
	{
		case 49:
			rand_n1 = irandom(15);
			rand_n2 = irandom(15);
			break;
		case 50:
			for (var i = 0; i < 14; i += 1)
			{
				if i!= rand_n1 && i!= rand_n2{
			    instance_create_depth(32+32*i,592,0,obj_bossmerch_phase1_proj1_2);}
			} 
			break;
		case 199:
			rand_n1 = irandom(15);
			rand_n2 = irandom(15);
			break;
		case 200:
			for (var i = 0; i < 14; i += 1)
			{
			    if i!= rand_n1 && i!= rand_n2{
			    instance_create_depth(32+32*i,592,0,obj_bossmerch_phase1_proj1_2);}
			} 
			break;
		case 349:
			rand_n1 = irandom(15);
			rand_n2 = irandom(15);
			break;
		case 350:
			for (var i = 0; i < 14; i += 1)
			{
			    if i!= rand_n1 && i!= rand_n2{
			    instance_create_depth(32+32*i,592,0,obj_bossmerch_phase1_proj1_2);}
			} 
			break;
		case 500:
			state = 9;
			t = 0;
			break;
	}
		break;
	case 9: // перемещение вправо
		x+=2;
		if x >= 432{
			x = 432;
			state = 1;
		}
		break;
}
	

#region получение урона
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
#endregion

#region Death
if enemy_hp<=0{
	instance_destroy();
	instance_create_depth(x,y,depth,obj_bossmerch_phase1_death);
}
#endregion