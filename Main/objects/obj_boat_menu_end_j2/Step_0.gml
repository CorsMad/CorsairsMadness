/// @description Insert description here
// You can write your code in this editor

if canControl = 0{
    t_control++;
    if alpha_main < 1 alpha_main+=0.05;
    if t_control=75 {
        canControl = 1;   
    }
}

if canControl = 1 {

player_input();

fnc_lng_boat_choose();

if key_right_press {
    fnc_snd_play_over(snd_menu_select);
    t_alpha = 0;
    alpha = 1;
    state = 1
    skip = 0;
    skip_t = 0;
    alpha_skip = 0;
}
if key_left_press {
    fnc_snd_play_over(snd_menu_select);
    t_alpha = 0;
    alpha = 1;
    state = 0;
    skip = 0;
    skip_t = 0;
    alpha_skip = 0;
}

switch(current_room){
    case "J2_r9_boat": scr_boat_choose(state,11.1,J2b_r1,12.1,J2p_r1); break;       
    case "D2_r9_boat": scr_boat_choose(state,11.1,D2b_r1,12.1,D2p_r1); break;          
    case "S2_r8_boat": scr_boat_choose(state,11.1,S2p_r1,12.1,S2b_r1); break;          
    case "G2_r9_boat": scr_boat_choose(state,11.1,G2b_r1,12.1,G2p_r1); break;          
    case "L2_r8_boat": scr_boat_choose(state,11.1,L2b_r1,12.1,L2p_r1); break;          
}

t_alpha++;
if t_alpha = 0   alpha = 1;
if t_alpha > 50 && t_alpha < 75  alpha -=0.04;
if t_alpha >= 75 alpha +=0.04;
if t_alpha = 100 {t_alpha = 0;alpha=1} 

}