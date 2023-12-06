/// @description Insert description here
// You can write your code in this editor

switch(state){
	case 1:
		t++;
		
		if t > 1 && t < 150 {
			if t mod 20 = 0 instance_create_depth(x,y-13,depth+choose(-1,1),obj_end_pew_puff)	
		}
		if t > 150 && t < 250 {
			if t mod 15 = 0 instance_create_depth(x,y-13,depth+choose(-1,1),obj_end_pew_puff)	
		}			
		if t > 250  {
			if t mod 10 = 0 instance_create_depth(x,y-13,depth+choose(-1,1),obj_end_pew_puff)		
		}
		if t > 250 && t < 400 {
			if t mod 20 = 0 instance_create_depth(x+random_range(-8,8),y+random_range(-10,-4),depth-1,choose(obj_sfx_electricity1,obj_sfx_electricity2));
		}	
		
		
		switch(t){
			case 1:
				sprite_index = spr_ending_pew_anim;
				image_speed = 0.5;
				break;
			case 50:	image_speed = 1;break;
			case 150:	image_speed = 2;break;
			case 250:	image_speed = 3;break;
			case 450: 
				sprite_index = spr_ending_pew_idle;
				image_speed = 1;
				state = 2
				t = 0;
				break;
		}
		break;
	case 2:
		t++;
		if t = 20{
			t = 0;
			state = 3;
			obj_ending.step+=0.5;
		}
		break;
}