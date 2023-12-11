/// @description Insert description here
// You can write your code in this editor


switch(state){
	case 0:
		t++;
		if t = 40{
			t = 0;
			state = 1;
		}
		break;
	case 1:
		if image_alpha < 1 image_alpha +=0.1; else state = 2;
		break;
	case 2:
		t++;
		if t mod 50 = 0 {
			if image_alpha = 0 image_alpha = 1; else image_alpha = 0;	
		}
		if t = 249 {
			t = 0;
			image_alpha = 1;
			state = 3;
		}
		break;
	case 3:
		image_alpha -= 0.1;
		if image_alpha < 0 instance_destroy();
		break;
}