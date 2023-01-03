/// @description Insert description here
// You can write your code in this editor

player_input();

if key_right_press {image_index = 1;fnc_snd_play_over(snd_menu_select);}
if key_left_press {image_index = 0;fnc_snd_play_over(snd_menu_select);}

switch(image_index)
{
    case 0:
        
        if (key_attack || key_jump) {fnc_snd_play_over(snd_menu_accept);fnc_msc_stop_play_slow();room_goto(Tutor_1_transition_to_boat);}
        break;
    case 1:
        if (key_attack || key_jump) {fnc_snd_play_over(snd_menu_accept);instance_destroy();}
        break;
}
