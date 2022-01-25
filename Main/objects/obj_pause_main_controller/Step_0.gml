/// @description Insert description here
// You can write your code in this editor
menu_input()
audio_group_set_gain(MusicVolume,global.MSCvolume,0);
audio_group_set_gain(SFXvolume,global.SFXvolume,0);
#region переключатель
if !instance_exists(obj_pause_main_confirmexit) && confirm_input_change != 1//!instance_exists(obj_pause_menu_confirmation) || !instance_exists(obj_pause_main_confirmexit)
    {
        if key_up_press 
        {
            select--; 
            fnc_snd_play_over(snd_menu_select);
        }
        if key_down_pressed
        {
            select++;  
            fnc_snd_play_over(snd_menu_select);
        }
    }

#region Главная страница
    if page = 0
    {
        if select > 4
        {
            select = 0;       
        }
        if select < 0
        {
            select = 4;   
        }
    }
#endregion

#region Страница настроек графики
    if page = 1
    {
        if select > 6
        {
            select = 0;       
        }
        if select < 0
        {
            select = 6;   
        }
    }
#endregion

#region Страница настроек музыки
    if page = 2
    {
        if select > 2
        {
            select = 0;       
        }
        if select < 0
        {
            select = 2;   
        }
    }
#endregion

#region Страница настроек управления

    if page = 3
    {
        if input_change = 0
        {
            if select > 3
            {
                select = 0;       
            }
            if select < 0
            {
                select = 3;   
            }
        }
        
        if input_change = 1
        {
            if select > 8
            {
                select = 0;       
            }
            if select < 0
            {
                select = 8;   
            }
        }
    }
#endregion

#endregion

#region выбор

#region главная страница

if page = 0
{
    if delay = 0
    {
        switch(select)
        {
            case 0: if key_jump_pressed 
                    {
                        fnc_snd_play_over(snd_menu_accept);
                        page = 1;
                        select = 0;
                        delay = 1;
                    }
                    break;
            case 1: if key_jump_pressed 
                    {
                        fnc_snd_play_over(snd_menu_accept);
                        page = 2;
                        select = 0;
                        delay = 1;
                    }
                    break;
            case 2: if key_jump_pressed 
                    {
                        fnc_snd_play_over(snd_menu_accept);
                        instance_create_depth(0,0,depth-2,obj_menu_custom_controls);
                        page = 3;
                        select = 0;
                        delay = 1;
                    }
                    break;
            case 4: if !instance_exists(obj_pause_main_confirmexit)
                    {
                        if key_jump_pressed 
                        {
                            instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),depth-2,obj_pause_main_confirmexit);
                            fnc_snd_play_over(snd_menu_accept);
                        }
                    }
                    break;
        }
    }
}

#endregion

#region Опции графики

if page = 1
{
    if delay = 0
    {
        switch(select)
        {
            case 0: if (key_jump_pressed && global.resolution!=0) {global.resolution = 0;fnc_snd_play_over(snd_menu_accept);} break;
            case 1: if (key_jump_pressed && global.resolution!=1) {global.resolution = 1;fnc_snd_play_over(snd_menu_accept);} break;
            case 2: if (key_jump_pressed && global.resolution!=2) {global.resolution = 2;fnc_snd_play_over(snd_menu_accept);} break;
            case 3: if (key_jump_pressed && global.resolution!=3) {global.resolution = 3;fnc_snd_play_over(snd_menu_accept);} break;
            case 4: if (key_jump_pressed && global.resolution!=4) {global.resolution = 4;fnc_snd_play_over(snd_menu_accept);} break;
            case 5: if (key_jump_pressed && global.resolution!=5) {global.resolution = 5;fnc_snd_play_over(snd_menu_accept);} break;
            case 6: if key_jump_pressed 
                    {
                        fnc_snd_play_over(snd_menu_accept);
                        page = 0;
                        select = 0;
                        delay = 1;
                    }
                    break;
        }
    }
    
    //Изменение разрешения
    
    switch(global.resolution)
    {
        case 0: window_set_fullscreen(true); 
                break;
                
        case 1: window_set_fullscreen(false);   
                global.windowHeight = 1080;
                global.windowWidth = 1920;
                break;
        case 2: window_set_fullscreen(false);   
                global.windowHeight = 900;
                global.windowWidth = 1600;
                break;
        case 3: window_set_fullscreen(false);   
                global.windowHeight = 768;
                global.windowWidth = 1366;
                break;
        case 4: window_set_fullscreen(false);   
                global.windowHeight = 720;
                global.windowWidth = 1280;
                break;
        case 5: window_set_fullscreen(false);   
                global.windowHeight = 600;
                global.windowWidth = 800;
                break;
                
    }
    window_set_size(global.windowWidth, global.windowHeight);
    window_set_position(monitorWidth/2-global.windowWidth/2, monitorHeight/2-global.windowHeight/2);
}

#endregion

#region Опции музыки

if page = 2
{
    if delay = 0
    {
        switch(select)
        {
            case 2: if key_jump_pressed 
                    {
                        fnc_snd_play_over(snd_menu_accept);
                        page = 0;
                        select = 0;
                        delay = 1;
                    }
                    break;
        }
    }
}
#endregion

#region Опции управления
if page = 3
{
    if input_change = 0
    {
        if delay = 0
        {
            switch(select)
            {
                case 0: if key_jump_pressed {input_change = 1;delay = 1;fnc_snd_play_over(snd_menu_accept);} break;
                case 1: if key_jump_pressed 
                            {
                                global.left_key = vk_left;
                                obj_menu_custom_controls.lk = vk_left;
                                global.right_key = vk_right;
                                obj_menu_custom_controls.rk = vk_right;
                                global.up_key = vk_up;
                                obj_menu_custom_controls.upk = vk_up;
                                global.down_key = vk_down;
                                obj_menu_custom_controls.dwk = vk_down;
                                global.jump_key = ord("Z");
                                obj_menu_custom_controls.jk = ord("Z");
                                global.attack_key = ord("X");
                                obj_menu_custom_controls.ak = ord("X");
                                global.dash_key = ord("C");
                                obj_menu_custom_controls.dk = ord("C");
                                global.item_key = ord("S");
                                obj_menu_custom_controls.ik = ord("S");
                                fnc_snd_play_over(snd_menu_accept);
                            }
                            break;
                case 2: if key_jump_pressed 
                            {
                                global.left_key = ord("A");
                                obj_menu_custom_controls.lk = ord("A");
                                global.right_key = ord("D");
                                obj_menu_custom_controls.rk = ord("D");
                                global.up_key = ord("W");
                                obj_menu_custom_controls.upk = ord("W");
                                global.down_key = ord("S");
                                obj_menu_custom_controls.dwk = ord("S");
                                global.jump_key = ord("K");
                                obj_menu_custom_controls.jk = ord("K");
                                global.attack_key = ord("J");
                                obj_menu_custom_controls.ak = ord("J");
                                global.dash_key = ord("L");
                                obj_menu_custom_controls.dk = ord("L");
                                global.item_key = ord("U");
                                obj_menu_custom_controls.ik = ord("U");
                                fnc_snd_play_over(snd_menu_accept);
                            }
                            break; 
                case 3: if key_jump_pressed 
                        {
                            fnc_snd_play_over(snd_menu_accept);
                            instance_destroy(obj_menu_custom_controls);
                            page = 0;
                            select = 0;
                            delay = 1;
                        }
                        break;       
            }
        }
    }
    
    if input_change = 1 
    {
        if delay = 0
        {
            if select = 8
            {
                if key_jump_pressed 
                {
                    fnc_snd_play_over(snd_menu_accept);
                    select = 0;
                    delay = 1;
                    input_change = 0;
                    confirm_input_change = 0;
                }   
            }   else if key_jump_pressed
                {
                    fnc_snd_play_over(snd_menu_accept);
                    delay = 1;
                    confirm_input_change = 1;
                }

            if confirm_input_change = 1 
            {
                if delay = 0 && select != 8 
                {
                    var kk = keyboard_lastkey;
                    if (kk != vk_enter && kk != vk_escape && kk != vk_f1 && kk != vk_f2 &&
                        kk != vk_f3 && kk != vk_f4 && kk != vk_f5 &&  kk != vk_f6 && kk != vk_f7 &&
                        kk != vk_f8 &&  kk != vk_f9 &&  kk != vk_f10 &&  kk != vk_f11 && kk != vk_f12 &&
                        kk != vk_printscreen &&  kk != vk_pause && kk != vk_insert &&  
                        kk != vk_home && kk != vk_pageup &&  kk != vk_delete && kk != vk_end &&
                        kk != vk_pagedown && kk != 91)
                    {
                        switch(select)
                        {
                            case 0: global.up_key = kk;obj_menu_custom_controls.upk = kk;fnc_snd_play_over(snd_menu_accept);confirm_input_change = 0;delay = 1;break;
                            case 1: global.down_key = kk;obj_menu_custom_controls.dwk = kk;fnc_snd_play_over(snd_menu_accept);confirm_input_change = 0;delay = 1;break;
                            case 2: global.left_key = kk;obj_menu_custom_controls.lk = kk;fnc_snd_play_over(snd_menu_accept);confirm_input_change = 0;delay = 1;break;
                            case 3: global.right_key = kk;obj_menu_custom_controls.rk = kk;fnc_snd_play_over(snd_menu_accept);confirm_input_change = 0;delay = 1;break;
                            case 4: global.jump_key = kk;obj_menu_custom_controls.jk = kk;fnc_snd_play_over(snd_menu_accept);confirm_input_change = 0;delay = 1;break;
                            case 5: global.attack_key = kk;obj_menu_custom_controls.ak = kk;fnc_snd_play_over(snd_menu_accept);confirm_input_change = 0;delay = 1;break;
                            case 6: global.dash_key = kk;obj_menu_custom_controls.dk = kk;fnc_snd_play_over(snd_menu_accept);confirm_input_change = 0;delay = 1;break;
                            case 7: global.item_key = kk;obj_menu_custom_controls.ik = kk;fnc_snd_play_over(snd_menu_accept);confirm_input_change = 0;delay = 1;break;
                            case 8: fnc_snd_play_over(snd_menu_accept);confirm_input_change = 0;delay = 1;break;
                   
                        }
                    }
                }
            }
        }
    }
}
#endregion

#endregion

#region delay нажатий

if delay!= 0 
{
    delay++;   
}
if delay = 5
{
    delay = 0;   
}

#endregion

