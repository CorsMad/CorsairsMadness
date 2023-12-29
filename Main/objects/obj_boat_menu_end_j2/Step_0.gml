/// @description Insert description here
// You can write your code in this editor
player_input();

fnc_lng_boat_choose();


if key_right_press {fnc_snd_play_over(snd_menu_select);t_alpha = 0;
        alpha = 1;state = 1}
if key_left_press {fnc_snd_play_over(snd_menu_select);t_alpha = 0;
        alpha = 1;state = 0;}

if key_attack || key_jump
{
    fnc_snd_play_over(snd_menu_accept);
    if state = 0
    {
        obj_Player_boat.state = 11.1;
        obj_Player_boat.TargetRoom = J2b_r1;
        
        instance_destroy();
    }
    if state = 1
    {
        obj_Player_boat.state = 12.1;
        obj_Player_boat.TargetRoom = J2p_r1;
        
        instance_destroy();
    }
}


t_alpha++;
if t_alpha = 0   alpha = 1;
if t_alpha > 50 && t_alpha < 75  alpha -=0.04;
if t_alpha >= 75 alpha +=0.04;
if t_alpha = 100 {t_alpha = 0;alpha=1} 