/// @description Insert description here
// You can write your code in this editor

if (room != Village_jungle && room != Village_jungle_hall && room != Village_jungle_merchant) && instance_exists(obj_Player) && isPaused = 0 && (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(4,gp_start) || gamepad_button_check_pressed(0,gp_start)) && (obj_Player.isDead = 0 || obj_Player.isDead = 3)
{
    fnc_snd_play_over(snd_pause_on);
    instance_deactivate_all(1);
    isPaused = 1;
    instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-99999999999999999999999,obj_pause_menu_ingame);
    
}

if (room = Village_jungle || room = Village_jungle_hall || room = Village_jungle_merchant) && instance_exists(obj_Player) && isPaused = 0 && (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(4,gp_start) || gamepad_button_check_pressed(0,gp_start)) && (obj_Player.isDead = 0 || obj_Player.isDead = 3)
{
    fnc_snd_play_over(snd_pause_on);
    instance_deactivate_all(1);
    isPaused = 1;
    instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-99999999999999999999999,obj_pause_menu_notstage);
       
}

if instance_exists(obj_Player_boat) && isPaused = 0 && (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(4,gp_start) || gamepad_button_check_pressed(0,gp_start)) && (obj_Player_boat.canControl = 1)
{
    fnc_snd_play_over(snd_pause_on);
    instance_deactivate_all(1);
    isPaused = 1;
    instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-99999999999999999999999,obj_pause_menu_ingame);
    
}