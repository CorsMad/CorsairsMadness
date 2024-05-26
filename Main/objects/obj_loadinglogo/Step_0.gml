/// @description Insert description here
// You can write your code in this editor

if t_skip< 50 t_skip++;
if t_skip > 30 {
	if keyboard_check_pressed(vk_anykey) || gamepad_button_check_pressed(0,gp_face1) ||
    gamepad_button_check_pressed(0,gp_face2) || gamepad_button_check_pressed(0,gp_face3) ||
    gamepad_button_check_pressed(0,gp_face4) || gamepad_button_check_pressed(0,gp_start) ||
    gamepad_button_check_pressed(0,gp_select) || gamepad_button_check_pressed(4,gp_face1) ||
    gamepad_button_check_pressed(4,gp_face2) || gamepad_button_check_pressed(4,gp_face3) ||
    gamepad_button_check_pressed(4,gp_face4) || gamepad_button_check_pressed(4,gp_start) ||
    gamepad_button_check_pressed(4,gp_select){
		room_goto(AutosaveRoom);
        audio_stop_sound(msc_manydev1);
	}
}

if image_index = 15 
{
    t++;   
}

if t > 100
{
    image_alpha -= 0.05;    
}

if image_alpha <= 0 
{
    room_goto(PreMainMenu);   
}

