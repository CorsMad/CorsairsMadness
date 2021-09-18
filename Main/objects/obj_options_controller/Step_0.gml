/// @description Insert description here
// You can write your code in this editor
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(4,gp_padu) || gamepad_button_check_pressed(0,gp_padu);
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(4,gp_padd) || gamepad_button_check_pressed(0,gp_padd);
key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(4,gp_padl) || gamepad_button_check_pressed(0,gp_padl);
key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(4,gp_padr) || gamepad_button_check_pressed(0,gp_padr);
key_back = keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("L")) || gamepad_button_check_pressed(4,gp_face2) || gamepad_button_check_pressed(0,gp_face2);
key_action = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("K")) || gamepad_button_check_pressed(4,gp_face1) || gamepad_button_check_pressed(0,gp_face1);

audio_group_set_gain(MusicVolume,global.MSCvolume,0);
audio_group_set_gain(SFXvolume,global.SFXvolume,0);

#region назад

if key_back
{
    fnc_snd_play_over(snd_menu_accept);
    room_goto(MainScreen);
}

#endregion

#region выбор

if key_down
{
    a++;
    fnc_snd_play_over(snd_menu_select);
}
if key_up
{
    fnc_snd_play_over(snd_menu_select);
    a--;   
}
if a > 1
{
    a = 0;
}   
if a < 0 
{
    a = 1;   
}

#endregion

#region визуал

if a = 0
{
    
    if key_left && global.MSCvolume > 0
    {
        global.MSCvolume -= 0.1;   
    }
    if key_right && global.MSCvolume < 1
    {
        global.MSCvolume += 0.1;   
    }
}

if a = 1
{
    
    if key_left && global.SFXvolume > 0
    {
        global.SFXvolume -= 0.1;   
        fnc_snd_play_over(snd_menu_select);
    }
    if key_right && global.SFXvolume < 1
    {
        global.SFXvolume += 0.1;   
        fnc_snd_play_over(snd_menu_select);
    }
}


#endregion

global.MSCvolume_max = global.MSCvolume;