if island1JungleAlpha < 1 island1JungleAlpha+=0.05;
fnc_lng_jmap();
#region Указатель
//указатель
 t_p++;
 if t_p = 60 {t_p=0;}
 if t_p > 30 {PointerFrame=1} else PointerFrame=0; 
#endregion



anim+=0.1;
if anim >= 5.9 anim = 0;

player_input();

if !instance_exists(obj_confirm_j1) && !instance_exists(obj_confirm_j2) && !instance_exists(obj_confirm_j_col)
{
    
    #region Перемещение

    if Opened = 0
    {
        switch(globalMapCounter)
        {
            case 0: if key_up_press {fnc_snd_play_over(snd_menu_select)globalMapCounter = 2};
                    if key_right_press {fnc_snd_play_over(snd_menu_select)globalMapCounter = 3};
                    break;
            case 2: if key_down {fnc_snd_play_over(snd_menu_select)globalMapCounter = 0};
                    if key_right_press {fnc_snd_play_over(snd_menu_select)globalMapCounter = 3};
                    if key_left_press {fnc_snd_play_over(snd_menu_select)globalMapCounter = 0};
                    break;
            case 3: if key_up_press {fnc_snd_play_over(snd_menu_select)globalMapCounter = 2};
                    if key_left_press {fnc_snd_play_over(snd_menu_select)globalMapCounter = 0};
                    if key_down {fnc_snd_play_over(snd_menu_select)globalMapCounter = 0};
                    break;
        }
    }

    if Opened = 1 && global.completed_JF1 = 0
    {
        switch(globalMapCounter)
        {
            case 0: if key_up_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 2};
                    if key_right_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    break;
            case 1: if key_left_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 0};
                    if key_up_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 2};
                    if key_right_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 3};
                    break;
            case 2: if key_right_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 4};
                    if key_down_pressed {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    if key_left_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 0};
                    break;
            case 3: if key_left_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    if key_up_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 4};
                    if key_down_pressed {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    break;
            case 4: if key_left_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 2};
                    if key_down_pressed {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    if key_right_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 3};
                    break;
        }
    }
    
    if Opened = 1 && global.completed_JF1 = 1
    {
        switch(globalMapCounter)
        {
            case 0: if key_up_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 2};
                    if key_right_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    break;
            case 1: if key_left_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 0};
                    if key_up_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 2};
                    if key_right_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 3};
                    break;
            case 2: if key_right_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 5};
                    if key_down_pressed {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    if key_left_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 0};
                    break;
            case 3: if key_left_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    if key_up_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 5};
                    if key_down_pressed {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    break;
            case 5: if key_left_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 2};
                    if key_down_pressed {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    if key_right_press {fnc_snd_play_over(snd_menu_select);globalMapCounter = 3};
                    break;
        }
    }
    
    
    
    
    #endregion

    #region Подтверждение

    if key_attack || key_jump
    {
        fnc_snd_play_over(snd_menu_accept);
        switch(globalMapCounter)
        {
            case 0:
                fnc_msc_stop_play();
                
                global.TargetX = 32;
                global.TargetY = 240;
                global.TargetRoom = Village_jungle;
                room_goto(VillageJunlgeFirstLoading);
                /*
                var i = instance_create_depth(16,16,0,obj_Player);
                i.state = 0;
                instance_create_depth(16,16,101,obj_room_transition_to_loading); 
                */
                break;
            case 1: // колизей
                instance_create_depth(240,135,depth-1,obj_confirm_j_col);;
                break;
            case 2: // 1 уровень
                instance_create_depth(240,135,depth-1,obj_confirm_j1);
                break;
            case 3: // 2 уровень
                instance_create_depth(240,135,depth-1,obj_confirm_j2);
                break;
            case 4: // храм1
                if global.completed_JF1 = 0
                {
                    fnc_msc_stop_play();
                    global.fTargetX = 48;
                    global.fTargetY = 112;
                    global.fTargetRoom = F1_r1;
                    room_goto(JP1FirstLoading);
                }
                break;
            case 5: //  храм2
                if global.completed_JF2 = 0
                {
                    fnc_msc_stop_play();
                    global.fTargetX = 48;
                    global.fTargetY = 0;
                    global.fTargetRoom = JP2_r1;
                    room_goto(JP2FirstLoading);
                }
                break;
        }
    }

    #endregion

}