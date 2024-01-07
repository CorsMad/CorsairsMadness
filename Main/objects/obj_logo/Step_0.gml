/// @description Insert description here
// You can write your code in this editor




switch(state){
	case 0:
		if alpha < 1 alpha+=0.05;
		t++;
		if ((t mod 3 = 0) && im_index<21) im_index +=1;
		if t  = 150 {state = 1;t = 0;}
		break;
	case 1:
		if offset_x!=0 offset_x=lerp(offset_x,0,0.01);
		if offset_y!=0 offset_y=lerp(offset_y,0,0.01);
		if t < 50 {
			if t mod 10 = 0 {offset_x = random_range(-1,1);offset_y = random_range(-1,1)} 
		}
		if t >= 50 && t < 100 {
			if t mod 5 = 0 {offset_x = random_range(-1,1);offset_y = random_range(-1,1)} 
		}		
		if t >= 100 {
			if t mod 2 = 0 {offset_x = random_range(-1,1);offset_y = random_range(-1,1)} 
		}		
		
		
		
		if t > 75 {
			if scale > 0.8 scale -=0.0005
			add +=0.01;
			
		}
		
		t++;
		break;
}





