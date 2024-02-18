/// @description Insert description here
// You can write your code in this editor


switch(state){
	case 0:
		t++; 
		if t = t_max { state = 1;t = 0;}
		break;
	case 1:
		t++
		if t mod 2 = 0 {
			instance_create_depth(x+random_range(-4,4),y+1,depth,choose(obj_sand_fall_normal,obj_sand_fall_transparent));	
		}
		if t = 40 {
			t = 0;
			state = 0;
		}
		break;
}