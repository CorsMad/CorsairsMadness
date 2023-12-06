/// @description Insert description here
// You can write your code in this editor

switch(state){
	case 1:
		t++;
		switch(t){
			case 1:
				sprite_index = spr_ending_sully_anim;
				image_index = 0;
				image_speed = 0;
				break;
			case 5:	image_index = 1;break;
			case 50: image_index = 2;break;
			case 55: image_index = 3;break;
			case 90: image_index = 2;break;
			case 95:
				sprite_index = spr_ending_sully_idle;
				image_speed = 1;
				//obj_ending.step+=0.5;
				break;
				
		}
		break;
}