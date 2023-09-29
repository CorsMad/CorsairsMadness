/// @description Insert description here
// You can write your code in this editor

switch(state){
	case 0:
		t++;
		if t > 100 {
			t = 0;
			state = 1;
		}
	break;
	case 1:
	y+=vspd;
		vspd+=0.2;
		if y > room_width/2+128 {
			state = 2;
			t = 0;
			vspd = 0;
		}
		break;
	case 2:
		t++;
		if t = 50 {
			instance_create_depth(room_width/2,270,0,)	
		}
		break;
		
}
