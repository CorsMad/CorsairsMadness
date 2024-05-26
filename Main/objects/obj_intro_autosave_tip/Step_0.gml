/// @description Insert description here
// You can write your code in this editor
scr_text_autosave();
t_anim+=0.25;
switch(state){
	case 0:
		t++;if t = 20 {t=0;state=1;}
		break;
	case 1:
		if alpha < 1 alpha+=0.1;
		t++;if t=50 {state=2;t=0;}
		break;
	case 2:
		t++;
		//if t > 200 {
		if t > 200 {
			if alpha > 0 alpha-=0.1;	
		}
		if alpha <=0 room_goto(PreMainMenu);
		break;
}
draw_set_alpha(1)
/*
if state = 2 {
	if keyboard_check_pressed(vk_anykey) || gamepad_button_check_pressed(0,gp_face1) ||
    gamepad_button_check_pressed(0,gp_face2) || gamepad_button_check_pressed(0,gp_face3) ||
    gamepad_button_check_pressed(0,gp_face4) || gamepad_button_check_pressed(0,gp_start) ||
    gamepad_button_check_pressed(0,gp_select) || gamepad_button_check_pressed(4,gp_face1) ||
    gamepad_button_check_pressed(4,gp_face2) || gamepad_button_check_pressed(4,gp_face3) ||
    gamepad_button_check_pressed(4,gp_face4) || gamepad_button_check_pressed(4,gp_start) ||
    gamepad_button_check_pressed(4,gp_select){
		room_goto(PreMainMenu);
	}
}	