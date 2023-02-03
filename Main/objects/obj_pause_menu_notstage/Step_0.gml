/// @description Insert description here
// You can write your code in this editor
fnc_lng_pause_onstage();
menu_input_new();
/*
var key_down = keyboard_check_pressed(vk_down);
var key_up = keyboard_check_pressed(vk_up);
var key_left = keyboard_check_pressed(vk_left);
var key_right = keyboard_check_pressed(vk_right);
var key_press = keyboard_check_pressed(vk_enter) ||keyboard_check_pressed(vk_space);
*/
audio_group_set_gain(MusicVolume,global.SFXvolume,0);
audio_group_set_gain(MusicVolume,global.MSCvolume,0);

var move = key_down_pressed - key_up_press;

if move!= 0 && KBControlChange = 0
{
    index+=move;
    fnc_snd_play_over(snd_menu_select);
    
    var size = array_length_2d(menu, submenu);
    if index < 0 index = size - 1;
    else if index >=size  index = 0;
}

if (key_attack || key_jump) && KBControlChange = 0 // accept
{
    fnc_snd_play_over(snd_menu_accept);
    switch(submenu)
    {
        case 0: // main menu
            switch(index)
            {
                case 0: 
                    submenu = 1;
                    index = 0;
                    break;
                case 1: 
                    if instance_exists(obj_pause_controller_map) obj_pause_controller_map.isPaused = 0;
                    instance_activate_all();
                    instance_destroy();
                    break;
                case 2: 
                    submenu = 10;
                    index = 0;
                    break;                             
            }
            break;
        case 1: // options
            switch(index)
            {
                case 0: 
                    submenu = 2;
                    index = 0;
                    break;
                case 1: 
                    submenu = 3;
                    index = 0;
                    break;
                case 2: 
                    submenu = 4;
                    index = 0;
                    break;
                case 3: 
                    submenu = 41;
                    index = 0;
                    break;
                case 4:
                    scr_save_settings();
                    submenu = 0;
                    index = 0;
                    break;   
            }
            break;
        case 2: // graphics
            switch(index)
            {
                case 0: 
                    window_set_fullscreen(true); 
                    break;
                case 1: 
                    window_set_fullscreen(false);  
                    window_set_size(1920, 1080);                    
                    break;
                case 2: 
                    window_set_fullscreen(false);
                    window_set_size(1600, 900);     
                    break;
                case 3:
                    window_set_fullscreen(false);
                    window_set_size(1366, 768);  
                    break;
                case 4: 
                    window_set_fullscreen(false);
                    window_set_size(1280, 720);
                    break;
                case 5: 
                    window_set_fullscreen(false);
                    window_set_size(800, 600);
                    break;
                case 6:
                    submenu = 1;
                    index = 0;
                    break;
            }
            break;
        case 3: // controls
            switch(index)
            {
                case 0:
                    submenu = 31;
                    index = 0;
                    break;
                case 1:
                    submenu = 32;
                    index = 0;
                    break;
                case 2:
                    submenu = 1;
                    index = 1;
                    break;
            }
            break;
        case 10:
            switch(index)
            {
                case 0:
                    instance_activate_object(obj_music_controller);
                    fnc_msc_stop_play();
                    instance_destroy(obj_Player);
                    room_goto(MainMenu);
                    break;
                case 1:
                    submenu = 0;
                    index = 2;
                    break;
            }
        case 31: // Keyboard control submenu
            switch(index)
            {
                case 0:
                    KBControlChange = 1;
                    delay = 1;
                    break;
                case 1:
                    KBControlChange = 1;
                    delay = 1;
                    break;
                case 2:
                    KBControlChange = 1;
                    delay = 1;
                    break;
                case 3:
                    KBControlChange = 1;
                    delay = 1;
                    break;
                case 4:
                    KBControlChange = 1;
                    delay = 1;
                    break;
                case 5:
                    KBControlChange = 1;
                    delay = 1;
                    break;
                case 6:
                    KBControlChange = 1;
                    delay = 1;
                    break;
                case 7:
                    KBControlChange = 1;
                    delay = 1;
                    break;
                case 8:
                    KBControlChange = 1;
                    delay = 1;
                    break; 
                case 9:      
                    global.left_key = vk_left;
                    pk_left = fnc_keyboard_key_change(vk_left);
                    global.right_key = vk_right;
                    pk_right = fnc_keyboard_key_change(vk_right);
                    global.up_key = vk_up;
                    pk_up = fnc_keyboard_key_change(vk_up);
                    global.down_key = vk_down;
                    pk_down = fnc_keyboard_key_change(vk_down);
                    global.jump_key = ord("Z");
                    pk_jump = fnc_keyboard_key_change(ord("Z"));
                    global.attack_key = ord("X");
                    pk_attack = fnc_keyboard_key_change(ord("X"));
                    global.dash_key = ord("C");
                    pk_dash = fnc_keyboard_key_change(ord("C"));
                    global.item_key = ord("S");
                    pk_use_item = fnc_keyboard_key_change(ord("S"));
                    global.abil_key = ord("A");
                    pk_use_abil = fnc_keyboard_key_change(ord("A")); 
                    break;                       
                case 10:                
                    global.left_key = (ord("A"));
                    pk_left = fnc_keyboard_key_change(ord("A"));
                    global.right_key = (ord("D"));
                    pk_right = fnc_keyboard_key_change(ord("D"));
                    global.up_key = ord("W");
                    pk_up = fnc_keyboard_key_change(ord("W"));
                    global.down_key = ord("S");
                    pk_down = fnc_keyboard_key_change(ord("S"));
                    global.jump_key = ord("K");
                    pk_jump = fnc_keyboard_key_change(ord("K"));
                    global.attack_key = ord("J");
                    pk_attack = fnc_keyboard_key_change(ord("J"));
                    global.dash_key = ord("L");
                    pk_dash = fnc_keyboard_key_change(ord("L"));
                    global.item_key = ord("I");
                    pk_use_item = fnc_keyboard_key_change(ord("I"));                          
                    global.abil_key = ord("U");
                    pk_use_abil = fnc_keyboard_key_change(ord("U")); 

                    break;  
                case 11:
                    submenu = 3;
                    index = 0;
                    break;  
            }
            break;
        case 32: // Keyboard control submenu
            switch(index)
            {
                case 0:
                    submenu = 3;
                    index = 1;
                    break;    
            }
            break;
        case 4: // sound
            switch(index)
            {
                case 0:
                    break;
                case 1:
                    break;
                case 2:
                    submenu = 1;
                    index = 2;
                    break;
            }
            break;
        case 41: // Language
            switch(index)
            {
                case 0:     global.language = 0;break;
                case 1:     global.language = 1;break;
                case 2:     global.language = 2;break;
                case 3:     global.language = 3;break;
                case 4:     global.language = 4;break;
                case 5:     global.language = 5;break;
                case 6:     global.language = 6;break;
                case 7:     global.language = 7;break;
                case 8:     global.language = 8;break;
                case 9:     global.language = 9;break;
                case 10:    global.language = 10;break;                   
                case 11:    
                    submenu = 1;
                    index = 3;
                    break;                    
            }
            break;
    }
} else

#region ползунки музыки с спецэффектов

if submenu = 4
{
    if index = 0 
    {
        if key_left_press && global.MSCvolume > 0  {global.MSCvolume -= 0.1;global.MSCvolume_max = global.MSCvolume;fnc_snd_play_over(snd_menu_select);}
        if key_right_press && global.MSCvolume < 1 {global.MSCvolume += 0.1;global.MSCvolume_max = global.MSCvolume;fnc_snd_play_over(snd_menu_select);}   
    }
    if index = 1 
    {
        if key_left_press && global.SFXvolume > 0 {global.SFXvolume-= 0.1;fnc_snd_play_over(snd_menu_select);}
        if key_right_press && global.SFXvolume < 1 {global.SFXvolume+= 0.1;fnc_snd_play_over(snd_menu_select);}   
    }
    audio_group_set_gain(MusicVolume,global.MSCvolume,0);
    audio_group_set_gain(SFXvolume,global.SFXvolume,0);
}

#endregion

#region управление
if delay != 0 delay++;
if delay > 5 delay = 4;

if KBControlChange = 1 && delay >= 4 &&
        !keyboard_check_pressed(vk_enter) && !keyboard_check_pressed(vk_escape) && !keyboard_check_pressed(vk_f1) && !keyboard_check_pressed(vk_f2) &&
        !keyboard_check_pressed(vk_f3) && !keyboard_check_pressed(vk_f4) && !keyboard_check_pressed(vk_f5) && !keyboard_check_pressed(vk_f6) && 
        !keyboard_check_pressed(vk_f7) && !keyboard_check_pressed(vk_f8) && !keyboard_check_pressed(vk_f9) && !keyboard_check_pressed(vk_f10) && 
        !keyboard_check_pressed(vk_f11) && !keyboard_check_pressed(vk_f12) && !keyboard_check_pressed(vk_printscreen) &&  !keyboard_check_pressed(vk_pause) &&
        !keyboard_check_pressed(vk_insert) && !keyboard_check_pressed(vk_home) && !keyboard_check_pressed(vk_pageup) &&  !keyboard_check_pressed(vk_delete) &&
        !keyboard_check_pressed(vk_end) && !keyboard_check_pressed(vk_pagedown) && !keyboard_check_pressed(91) && keyboard_check_pressed(vk_anykey)
{
    switch(index)
    {
        case 0:
            pk_up = fnc_keyboard_key_change(keyboard_lastkey);
            global.up_key = keyboard_lastkey;
            break;
        case 1:
            pk_down = fnc_keyboard_key_change(keyboard_lastkey);
            global.down_key = keyboard_lastkey; 
            break;
        case 2:
            pk_left = fnc_keyboard_key_change(keyboard_lastkey);
            global.left_key = keyboard_lastkey; 
            break;
        case 3:
            pk_right = fnc_keyboard_key_change(keyboard_lastkey);
            global.right_key = keyboard_lastkey; 
            break;
        case 4:
            pk_jump = fnc_keyboard_key_change(keyboard_lastkey);
            global.jump_key = keyboard_lastkey; 
            break;
        case 5:
            pk_attack = fnc_keyboard_key_change(keyboard_lastkey);
            global.attack_key = keyboard_lastkey; 
            break;
        case 6:
            pk_dash = fnc_keyboard_key_change(keyboard_lastkey);
            global.dash_key = keyboard_lastkey; 
            break;
        case 7:
            pk_use_item = fnc_keyboard_key_change(keyboard_lastkey);
            global.item_key = keyboard_lastkey; 
            break;
        case 8:
            pk_use_abil = fnc_keyboard_key_change(keyboard_lastkey); 
            global.abil_key = keyboard_lastkey;
            break;
    }
    
    KBControlChange = 0;
    delay = 0;
}

#endregion