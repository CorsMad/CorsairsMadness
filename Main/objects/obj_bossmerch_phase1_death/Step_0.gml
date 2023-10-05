/// @description Insert description here
// You can write your code in this editor

switch(state){
	case 0:
		t++;
        if t= 50 image_index = 1;
		if t > 100 {
			t = 0;
			state = 1;
            sprite_index = spr_bossmerch_phase1_attackup;
            image_index = 2;
		}
	break;
	case 1:
	    y+=vspd;
		vspd+=0.2;
		if y > room_height+128 {
			state = 2;
			t = 0;
			vspd = 0;
		}
		break;
	case 2:
		t++;
		if t = 50 {
			instance_create_depth(room_width/2,room_height+128,0,obj_bossmerch_phase2_appear)	
			instance_destroy();
		}
		break;
		
}


t_red++;

if t_red = 10 {
    if y < room_height {
    fnc_molded_dark_blood_up();
    fnc_molded_dark_blood_up();
    fnc_molded_dark_blood_up();
    fnc_molded_dark_blood_up();  
    }
    t_red = 0;
}
if t_red>5 image_blend = c_red else image_blend = c_white;