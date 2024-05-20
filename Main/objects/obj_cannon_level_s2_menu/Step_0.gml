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

if key_right_press && state!=1 {fnc_snd_play_over(snd_menu_select);t_alpha = 0;
        alpha = 1;state = 1}
		
if key_left_press && state!= 0{fnc_snd_play_over(snd_menu_select);t_alpha = 0;
        alpha = 1;state = 0;}
		
if key_down_pressed && state!= 2 {fnc_snd_play_over(snd_menu_select);t_alpha = 0;
        alpha = 1;state = 2;}
		
if key_up_press && state = 2 {fnc_snd_play_over(snd_menu_select);t_alpha = 0;
        alpha = 1;state = 0;}
		
if key_attack || key_jump
{
    fnc_snd_play_over(snd_menu_accept);
    switch(state)
    {
        case 0:
            obj_cannon_level_s2.pjump = 1;
            obj_cannon_level_s2.TargetRoom = S2p_r2;
			obj_cannon_level_s2.TargetX = 320;
            obj_cannon_level_s2.TargetY = 0;
		    fnc_achiev_get("ACH29");
			fnc_achiev_all();
            instance_destroy();
            break;
        case 1:
            obj_cannon_level_s2.pjump = 1;
            obj_cannon_level_s2.TargetRoom = S2b_r2;
            obj_cannon_level_s2.TargetX = 272;
            obj_cannon_level_s2.TargetY = 0;
            fnc_achiev_get("ACH29");
			fnc_achiev_all();
            instance_destroy();
            break;
        case 2:
            instance_destroy();
            obj_Player.isDead = 2.1;
            //obj_Player.isDead = 0;
            break;
    }
}

t_alpha++;
if t_alpha = 0   alpha = 1;
if t_alpha > 50 && t_alpha < 75  alpha -=0.04;
if t_alpha >= 75 alpha +=0.04;
if t_alpha = 100 {t_alpha = 0;alpha=1} 
}