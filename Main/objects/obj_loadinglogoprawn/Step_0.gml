/// @description Insert description here
// You can write your code in this editor

switch(state){
	case 0:	
		t++;
		switch(t){
			case 20:
				image_alpha = 1;
				fnc_snd_play_onetime(snd_logo);
				break;
			case 50: image_index = 2;break;
			case 55: image_index = 3;break;
			case 100: image_index = 4;break;
			case 105: image_index = 5;break;
			case 110: image_index = 6;break;
			case 115: image_index = 7;break;
			case 120: image_index = 8;break;
			case 125: image_index = 9;break;
			case 130: image_index = 10;
				instance_create_depth(x,y+80,depth,obj_loadinglogoprawntxt);
				state = 1;
				break;
		}
		break;
		case 2:
			image_alpha-=0.1;
			if image_alpha<=0{
				room_goto(LogoTest)	
			}
			break;
}