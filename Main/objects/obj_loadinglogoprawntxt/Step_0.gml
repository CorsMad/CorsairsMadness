/// @description Insert description here
// You can write your code in this editor
switch(state){
	case 0:
		t++;
		switch(t){
			case 5:image_index = 1;break;	
			case 10:image_index = 2;break;	
			case 15:image_index = 3;break;	
			case 20:image_index = 4;break;	
			case 25:image_index = 5;break;	
			case 30:image_index = 6;break;	
			case 35:image_index = 7;break;	
			case 40:image_index = 8;break;	
			case 45:image_index = 9;break;	
			case 50:image_index = 10;break;	
			case 55:image_index = 11;break;	
			case 200:
				state = 2;
				obj_loadinglogoprawn.state = 2;	
				break;
		}
		break;
	case 2:	if image_alpha>0 image_alpha-=0.1;
		break;
}
