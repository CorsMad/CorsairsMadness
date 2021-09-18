/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player) && isPaused = 0 && (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(4,gp_start) || gamepad_button_check_pressed(0,gp_start)) && obj_Player.isDead = 0
{
    fnc_snd_play_over(snd_pause_on);
    instance_deactivate_all(1);
    isPaused = 1;
    instance_create_depth(camera_get_view_x(view_camera[0])+47,camera_get_view_y(view_camera[0])+64,-1001,obj_pause_music_slider);
    instance_create_depth(camera_get_view_x(view_camera[0])+47,camera_get_view_y(view_camera[0])+144,-1001,obj_pause_sound_slider);
    instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-1001,obj_pause_menu_confirmation);
    instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-1001,obj_pause_menu_selects);
    instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-1000,obj_pause);
}

if instance_exists(obj_pause)
{
    if isPaused = 1 && obj_pause.a = 2 && (keyboard_check_pressed(ord("K")) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(4,gp_face1) || gamepad_button_check_pressed(0,gp_face1))
    {
        fnc_snd_play_over(snd_pause_off);
        instance_destroy(obj_pause_music_slider);
        instance_destroy(obj_pause_sound_slider);
        instance_destroy(obj_pause_menu_confirmation);
        instance_destroy(obj_pause_menu_selects);
        instance_destroy(obj_pause);
        isPaused = 0;
        instance_activate_all();
    }
}