player_input();
fnc_lng_cannon_choose()
if key_right_press {fnc_snd_play_over(snd_menu_select);t_alpha = 0;
        alpha = 1;state = 1}
if key_left_press {fnc_snd_play_over(snd_menu_select);t_alpha = 0;
        alpha = 1;state = 0;}
if key_down_pressed {fnc_snd_play_over(snd_menu_select);t_alpha = 0;
        alpha = 1;state = 2;}

if key_attack || key_jump
{
    fnc_snd_play_over(snd_menu_accept);
    switch(state)
    {
        case 0:
            obj_cannon_level_g2.pjump = 1;
            obj_cannon_level_g2.TargetRoom = G2b_r2;
            obj_cannon_level_g2.TargetX = 144;
            obj_cannon_level_g2.TargetY = 0;
            fnc_achiev_get("ACH29");

            instance_destroy();
            break;
        case 1:
            obj_cannon_level_g2.pjump = 1;
            obj_cannon_level_g2.TargetRoom = G2p_r2;
            obj_cannon_level_g2.TargetX = 304;
            obj_cannon_level_g2.TargetY = 0;
            fnc_achiev_get("ACH29");
            instance_destroy();
            break;
        case 2:
            instance_destroy();
            obj_Player.isDead = 2.1;
            break;
    }
}

t_alpha++;
if t_alpha = 0   alpha = 1;
if t_alpha > 50 && t_alpha < 75  alpha -=0.04;
if t_alpha >= 75 alpha +=0.04;
if t_alpha = 100 {t_alpha = 0;alpha=1} 