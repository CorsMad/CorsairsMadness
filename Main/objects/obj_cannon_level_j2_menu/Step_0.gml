
fnc_lng_cannon_choose()

if pick = 0 {
    main_alpha+=0.05;
    if main_alpha >= 1 {
        main_alpha = 1;
        t_pick++;
        if t_pick = 50 {
            pick = 1;
            alpha = 1;
        }
    }
}




if pick = 1
{

player_input();
//fnc_lng_cannon_choose()
if key_right_press && state!=1 {
    fnc_snd_play_over(snd_menu_select);
    t_alpha = 0;
    skip = 0;
    skip_t = 0;
    alpha_skip = 0;
    alpha = 1;
    state = 1
}
		
if key_left_press && state!= 0{
    fnc_snd_play_over(snd_menu_select);
    t_alpha = 0;
    skip = 0;
    skip_t = 0;
    alpha_skip = 0;
    alpha = 1;
    state = 0;
}
		
if key_down_pressed && state!= 2 {
    fnc_snd_play_over(snd_menu_select);
    t_alpha = 0;
    skip = 0;
    skip_t = 0;
    alpha_skip = 0;
    alpha = 1;
    state = 2;
}
		
if key_up_press && state = 2 {
    fnc_snd_play_over(snd_menu_select);
    t_alpha = 0;
    skip = 0;
    skip_t = 0;
    alpha_skip = 0;
    alpha = 1;
    state = 0;
}
		
if key_attack || key_jump
{
    
    switch(state)
    {
        case 2:
            fnc_snd_play_over(snd_menu_accept);
            instance_destroy();
            obj_Player.isDead = 2.1;
            obj_Player.t_dia = -15;
            break;
    }
}

if instance_exists(obj_cannon_level_j2) scr_cannon_choose(obj_cannon_level_j2,state,J2b_r2,64,0,J2p_r2,400,0);
if instance_exists(obj_cannon_level_d2) scr_cannon_choose(obj_cannon_level_d2,state,D2b_r2,48,0,D2p_r2,352,0);
if instance_exists(obj_cannon_level_s2) scr_cannon_choose(obj_cannon_level_s2,state,S2p_r2,320,0,S2b_r2,272,0);
if instance_exists(obj_cannon_level_g2) scr_cannon_choose(obj_cannon_level_g2,state,G2b_r2,144,0,G2p_r2,304,0);
if instance_exists(obj_cannon_level_l2) scr_cannon_choose(obj_cannon_level_l2,state,L2b_r2,160,0,L2p_r3,48,0);


t_alpha++;
if t_alpha = 0   alpha = 1;
if t_alpha > 50 && t_alpha < 75  alpha -=0.04;
if t_alpha >= 75 alpha +=0.04;
if t_alpha = 100 {t_alpha = 0;alpha=1} 

}