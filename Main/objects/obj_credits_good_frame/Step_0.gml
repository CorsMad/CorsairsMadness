/// @description Insert description here
// You can write your code in this editor



switch(state){
	case 0:
		t++;
		if t = 100{
			t = 0;
			state = 1;
			fnc_msc_play(msc_credits_good);
		}		
		break;
	case 1:
		x = lerp(x,210,0.1);
		t++;
		if t = 100 {
			state = 2;
			instance_create_depth(0,0,0,obj_credits_text_good)
		}
		break;
	case 2:
		move_y -=0.5;		
		if move_y < -100 {
			instance_create_depth(0,0,depth-1000,obj_black_screen_to_start)
			state = 3;	
		}
		break;
	case 3:
		x+=hspd;
		hspd-=0.1;
		break;
}
	

#region skiptest
if  keyboard_check(vk_anykey)             || (keyboard_check_pressed(vk_anykey)    ||
    gamepad_button_check(0,gp_face1)      || gamepad_button_check(0,gp_face2)      ||
    gamepad_button_check(0,gp_face3)      || gamepad_button_check(0,gp_face4)      ||
    gamepad_button_check(0,gp_select)     || gamepad_button_check(0,gp_start)      ||
    gamepad_button_check(0,gp_shoulderl)  || gamepad_button_check(0,gp_shoulderr)  ||
    gamepad_button_check(0,gp_shoulderlb) || gamepad_button_check(0,gp_shoulderrb) ||
    gamepad_button_check(4,gp_face1)      || gamepad_button_check(4,gp_face2)      ||
    gamepad_button_check(4,gp_face3)      || gamepad_button_check(4,gp_face4)      ||
    gamepad_button_check(4,gp_select)     || gamepad_button_check(4,gp_start)      ||
    gamepad_button_check(4,gp_shoulderl)  || gamepad_button_check(4,gp_shoulderr)  ||
    gamepad_button_check(4,gp_shoulderlb) || gamepad_button_check(4,gp_shoulderrb) ) {
	if skip_t < skip_t_max skip_t+=1;
	skip = 1;
} else {
	skip_t=0;
	skip = 0;
}

switch(skip) {
	case 0: if alpha >0 alpha-=0.2;
		break;
	case 1: if alpha <1 alpha+=0.2;
		break;
}

if skip_t >= skip_t_max {
	fnc_msc_stop_play();
    room_goto(PreMainMenu); 	
}
#endregion

