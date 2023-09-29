/// @description Insert description here
// You can write your code in this editor

/*
 0 - начало
 1 - перемещение в выбранную сторону
 2 - удар плоский
 3 - подъем
 4 - движение к игроку
 5 - удар вниз кулаком
 6 - подъем 
 7 - движение к игроку
 8 - удар вниз кулаком
 9 - подъем 
 10- движение к игроку
 11- удар вниз кулаком
 12- ожидание
 13- подъем вверх
 14 - возвращение на место и 0 
*/

switch(state){
	case 0:
		if instance_exists(obj_Player){
			if obj_Player.x > room_width/2{
				side = 1 
			} else side = 0;
		}
		break;
	case 1:
		t++;
		if side = 0{
			x = lerp(x,136,0.1);
			if t = 40 {
				t = 0;
				state = 2;
				x = 136;
			}	
		}
		if side = 1{
			x = lerp(x,344,0.1);
			if t = 60 {
				t = 0;
				state = 2;
				x = 344;
			}	
		}
		break;
	case 2:
		t++;
		switch(t){
			case 50:
				sprite_index = spr_bossmerch_phase2_hand_big;
				mask_index = spr_bossmerch_phase2_hand_big;
				break;
			case 100:
				vspd = 4;
				
				break;
		}
		y+=vspd;
		if y >= room_height-32 {
			state = 3;	
			t = 0;
			vspd = -4;
		}
		break;
	case 3:
		y+=vspd;
		if y <= 112{
			y = 112;
			vspd = 0;
			state = 4;
		}
		break;
	case 4:
		t++;
		if t < 100 x = lerp(x,obj_Player.x,0.1);
		switch(t){
			case 5:
				sprite_index = spr_bossmerch_phase2_hand_small;
				mask_index = spr_bossmerch_phase2_hand_small;
				break;
			case 120:
				t = 0;
				state = 5;
				vspd = 4;
				break;	
		}
		break;
	case 5:
		y+=vspd;
		if y >= room_height-32 {
			state = 6;	
			t = 0;
			vspd = -4;
		}
		break;
	case 6:
		y+=vspd;
		if y <= 112 {
			y = 112;
			state = 7;	
			t = 0;
			vspd = 0;
		}
		break;
	case 7:
		t++;
		if t < 100 x = lerp(x,obj_Player.x,0.1);
		switch(t){
			case 120:
				t = 0;
				state = 8;
				vspd = 4;
				break;	
		}
		break;
	case 8:
		y+=vspd;
		if y >= room_height-32 {
			state = 9;	
			t = 0;
			vspd = -4;
		}
		break;
	case 9:
		y+=vspd;
		if y <= 112 {
			y = 112;
			state = 10;	
			t = 0;
			vspd = 0;
		}
		break;
	case 10:
		t++;
		if t < 100 x = lerp(x,obj_Player.x,0.1);
		switch(t){
			case 120:
				t = 0;
				state = 11;
				vspd = 4;
				break;	
		}
		break;
	case 11:
		y+=vspd;
		if y >= room_height-32 {
			state = 12;	
			t = 0;
			vspd = 0;
		}
		break;
	case 12:
		t++;
		if t = 200{
			t = 0;
			state = 13;
			vspd = -4;
		}
		break;
	case 13:
		y+=vspd;
		if y <= 112 {
			y = 112;
			state = 14;	
			t = 0;
			vspd = 0;
		}
		break;
	case 14:
		x = lerp(x,96,0.1);
		if abs(x-96) < 1 {
			x = 96;
			state = 0;
			obj_bossmerch_phase2.state = 1;
			obj_bossmerch_phase2.t = 0;
		}
		break;
		
}


#region получение урона

// если уничтожен то глав - стейт 0
#endregion