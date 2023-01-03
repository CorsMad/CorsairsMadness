/// @description Insert description here
// You can write your code in this editor

if t1 < 12
{
    t1++;
}
if t1 = 10
{
    instance_create_depth(room_width/2,room_height/2,depth-1,obj_loadinglogo);
}

if audio_group_is_loaded(MusicVolume) && audio_group_is_loaded(SFXvolume)
{
    if keyboard_check_pressed(vk_anykey) || gamepad_button_check_pressed(0,gp_face1) ||
    gamepad_button_check_pressed(0,gp_face2) || gamepad_button_check_pressed(0,gp_face3) ||
    gamepad_button_check_pressed(0,gp_face4) || gamepad_button_check_pressed(0,gp_start) ||
    gamepad_button_check_pressed(0,gp_select) 
    
    
    
    {
        room_goto(PreMainMenu);
        //room_goto(MainMenu);   
    }
}