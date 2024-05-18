/// @description Insert description here
// You can write your code in this editor




switch(state){
    case -1:
        t++;
        if t = 50{
            t = 0;
            state = 0;
            fnc_snd_play_onetime(msc_madnetic_1);
        }
        break;
	case 0:
		if alpha < 1 alpha+=0.05;
		t++;
		if ((t mod 3 = 0) && im_index<21) im_index +=1;
		//if t  = 80 {state = 1;t = 0;}
		if t  = 60 {state = 1;t = 0;fnc_snd_play_onetime(msc_madnetic_2)}
		break;
	case 1:
		if offset_x!=0 offset_x=lerp(offset_x,0,0.01);
		if offset_y!=0 offset_y=lerp(offset_y,0,0.01);
        /*
		if t < 80 {
			if t mod 8 = 0 {offset_x = random_range(-0.5,0.5);offset_y = random_range(-0.5,0.5)} 
		}*/
		if t >= 50 && t < 90 {
			if t mod 5 = 0 {offset_x = random_range(-0.5,0.5);offset_y = random_range(-0.5,0.5)} 
		}		
		if t >= 90 {
			if t mod 2 = 0 {offset_x = random_range(-0.5,0.5);offset_y = random_range(-0.5,0.5)} 
		}		
		
		
		
		if t > 55 {
            scale = lerp(scale,0.8,0.01);
			//if scale > 0.8 scale -=0.0008
			if add < 1 add +=0.01;
			
		}
		//if t = 250 {
		if t = 150 {
            state = 2;
            sprite = 1;
            t = 0;
            
            
            for (var k = 0;k < 9 ; k++;) {
                for (var i = 0; i < 11; i++;) {
                    instance_create_depth(160+i*16,64+k*16,depth+1,obj_logo_part)
                }
            }
            
        }
		t++;
		break;
    case 2://0.058
        t++;
        if t = 10 {
            fnc_snd_play_onetime(msc_madnetic_3);
            fnc_snd_play_onetime(msc_madnetic_4);   
        }
        if add > 0 {add-=0.01; scale2=lerp(scale2,0.085,0.1);offset_y=lerp(offset_y,-16,0.1)} else {
            state = 3;
            t = 0;
            
        }
        break;
    case 3:
        t++;
        if t = 25 {state = 4;t =0;}
        break;
    case 4:
        if alpha_t < 1 alpha_t+=0.05;
		if alpha_t = 1 t++;
		if t = 150 {
			state = 5;
			t = 0;
		}
        break;
	case 5:	
		if alpha_t > 0 alpha_t-=0.05;
		if alpha > 0 alpha-=0.05;
		
		if alpha = 0 && alpha_t = 0 {t++};
		if t = 100{
			room_goto(LogoManydev)	;
		}
		break;
}



#region skip
if skip_t < 50 skip_t++;
if skip_t > 30 {
	if keyboard_check_pressed(vk_anykey) || gamepad_button_check_pressed(0,gp_face1) ||
    gamepad_button_check_pressed(0,gp_face2) || gamepad_button_check_pressed(0,gp_face3) ||
    gamepad_button_check_pressed(0,gp_face4) || gamepad_button_check_pressed(0,gp_start) ||
    gamepad_button_check_pressed(0,gp_select) 	 {
		room_goto(LogoManydev);
        audio_stop_sound(msc_madnetic_1);
        audio_stop_sound(msc_madnetic_2);
        audio_stop_sound(msc_madnetic_3);
        audio_stop_sound(msc_madnetic_4);
	}
}
#endregion

