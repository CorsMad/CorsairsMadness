/// @description Insert description here
// You can write your code in this editor


switch(state){
    case 2:
		y=144;
		t++;
		switch(t){
			case 1: 
				sprite_index = spr_bossmerch_transform;
				image_speed = 0;
				image_index = 0;
				break;
			case 5: image_index = 1;break;
			case 10: image_index = 2;break;
			case 15: image_index = 3;break;
			case 20: image_index = 4;break;
			case 25: image_index = 5;break;
			case 30: image_index = 6;break;
			case 35: image_index = 7;break;
			case 40:
				sprite_index = spr_bossmerch_phase1_idle;
				image_speed = 1;
				
				break;
			case 100:
				t = 0;
				state = 3;
				break;
		}
	break;
	case 3:
		sprite_index = spr_bossmerch_phase1_walk;
		image_speed = 1;
		image_xscale = -1;
        x+=2;
        if x > room_width+64 {
            instance_destroy();
            obj_ctsc_DI_intro_controller.state = 2;
            obj_ctsc_DI_intro_controller.t = 0;
        }
		break;
	
}







