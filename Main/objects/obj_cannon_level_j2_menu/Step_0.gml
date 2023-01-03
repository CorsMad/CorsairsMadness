player_input();

if key_right_press {fnc_snd_play_over(snd_menu_select);state = 1}
if key_left_press {fnc_snd_play_over(snd_menu_select);state = 0;}
if key_down_pressed {fnc_snd_play_over(snd_menu_select);state = 2;}

if key_attack || key_jump
{
    fnc_snd_play_over(snd_menu_accept);
    switch(state)
    {
        case 0:
            obj_cannon_level_j2.pjump = 1;
            obj_cannon_level_j2.TargetRoom = J2b_r2;
            obj_cannon_level_j2.TargetX = 64;
            obj_cannon_level_j2.TargetY = 0;


            instance_destroy();
            break;
        case 1:
            obj_cannon_level_j2.pjump = 1;
            obj_cannon_level_j2.TargetRoom = J2p_r2;
            obj_cannon_level_j2.TargetX = 400;
            obj_cannon_level_j2.TargetY = 0;
            instance_destroy();
            break;
        case 2:
            instance_destroy();
            obj_Player.isDead = 0;
            break;
    }
}