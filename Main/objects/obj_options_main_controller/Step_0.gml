/// @description Insert description here
// You can write your code in this editor
menu_input()
audio_group_set_gain(MusicVolume,global.MSCvolume,0);
audio_group_set_gain(SFXvolume,global.SFXvolume,0);
#region переключатель

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

#region Главная страница
    if page = 0
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
                        page = 3;
                        select = 0;
                        delay = 1;
                    }
                    break;
            case 3: if key_jump_pressed 
                    {
                        room_goto(MainScreen);
                        fnc_snd_play_over(snd_menu_accept);
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
    if delay = 0
    {
        switch(select)
        {
            case 0: if key_jump_pressed {global.controlScheme = 0;fnc_snd_play_over(snd_menu_accept);} break;
            case 1: if key_jump_pressed {global.controlScheme = 1;fnc_snd_play_over(snd_menu_accept);} break;
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

