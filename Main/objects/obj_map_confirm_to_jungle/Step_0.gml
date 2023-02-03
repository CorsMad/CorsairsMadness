/// @description Insert description here
// You can write your code in this editor
fnc_lng_globalmap_confirm();

player_input();

if key_right_press {subimg = 1;fnc_snd_play_over(snd_menu_select);}
if key_left_press {subimg = 0;fnc_snd_play_over(snd_menu_select);}

switch(subimg)
{
    case 0:        
        if (key_attack || key_jump || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {fnc_snd_play_over(snd_menu_accept);fnc_msc_stop_play_slow();room_goto(Tutor_1_transition_to_boat);}
        break;
    case 1:
        if (key_attack || key_jump || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {fnc_snd_play_over(snd_menu_accept);instance_destroy();}
        break;
}
