/// @description Insert description here
// You can write your code in this editor

if t1 < 110 t1++;

if t1 = 10
{
    instance_create_depth(room_width/2,room_height/2-32,depth-1,obj_loadinglogoprawn);
}

if audio_group_is_loaded(MusicVolume) && audio_group_is_loaded(SFXvolume) && t1 > 100
{
    if keyboard_check_pressed(vk_anykey) || gamepad_button_check_pressed(0,gp_face1) ||
    gamepad_button_check_pressed(0,gp_face2) || gamepad_button_check_pressed(0,gp_face3) ||
    gamepad_button_check_pressed(0,gp_face4) || gamepad_button_check_pressed(0,gp_start) ||
    gamepad_button_check_pressed(0,gp_select) || gamepad_button_check_pressed(4,gp_face1) ||
    gamepad_button_check_pressed(4,gp_face2) || gamepad_button_check_pressed(4,gp_face3) ||
    gamepad_button_check_pressed(4,gp_face4) || gamepad_button_check_pressed(4,gp_start) ||
    gamepad_button_check_pressed(4,gp_select)
    
    
    
    {
        fnc_msc_stop_play();
        room_goto(LogoTest);
        //room_goto(MainMenu);   
    }
}