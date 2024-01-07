/// @description Insert description here
// You can write your code in this editor

//spd -=0.5;

switch(state){
	case 1:	
		t++;
		if t = 50 {
			instance_create_depth(480,0,0,obj_credits_good_frame);
			state = 2;
		}
		break;
}