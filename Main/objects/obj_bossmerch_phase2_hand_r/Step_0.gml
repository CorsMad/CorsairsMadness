/// @description Insert description here
// You can write your code in this editor
/*
0 - начало
1 - несколько выстрелов из руки
2 - удар вниз и волной влево
3 - полет влево, удар и волна вправо
4 - ожидание
5 - полет вправо, удар и волна влево
6 - долгое ожидание 
7 - подъем вверх и 0
*/


switch(state){
	case 1:
		t++;
		switch(t){
			case 50:
				instance_create_depth(x,y,depth,obj_bossmerch_phase1_proj1_1);
				break;
			case 100:
				instance_create_depth(x,y,depth,obj_bossmerch_phase1_proj1_1);
				break;
			case 150:
				instance_create_depth(x,y,depth,obj_bossmerch_phase1_proj1_1);
				break;
			case 200:
				t = 0;
				state = 2;
				break;
		}
		break;
	case 2:
		vspd=4;
		y+=vspd;
		if y>= room_height-32{
			vspd = 0;
			y =  room_height-32;
			state = 3;
			t = 0;
		}
		break;
	case 3:
		t++
		if t > 30 {
			if hspd > -8 hspd-=0.2;	
		}
		x+=hspd;
		if x <= 32{
			x = 32;
			hspd = 0;
			state = 4;
			t = 0;
		}
		break;
	case 4:
		t++;
		if t > 50 {
			if hspd < 8 hspd+=0.2;	
		}
		x+=hspd;
		if x >=448{
			x = 448;
			hspd = 0;
			state = 5;
			t = 0;
		}
		break;
	case 5:
		t++;
		if t = 200{
			t = 0;
			state = 6;	
		}
		break;
	case 6:
		y-=4;
		if y<= 112 {
			y = 112;
			state = 7;
		}
		break;
	case 7:
		x-=4;
		if x <= 384{
			x = 384;
			state = 0;
			t = 0;
			hspd = 0;
			vspd = 0;
			obj_bossmerch_phase2.state = 1;
			obj_bossmerch_phase2.t = 0;
		}
		break;
}
