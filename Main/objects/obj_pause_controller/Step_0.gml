/// @description Insert description here
// You can write your code in this editor

switch(state){
    case 0:
        #region С ВЫХОДОМ НА КАРТУ
        if instance_exists(obj_Player) && isPaused = 0 && (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(4,gp_start) || gamepad_button_check_pressed(0,gp_start)) && (obj_Player.isDead = 0 || obj_Player.isDead = 3) {
            fnc_snd_play_over(snd_pause_on);
            isPaused = 1;
			instance_deactivate_all(1);	
            instance_activate_object(obj_music_controller);
            var p = instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-16000,obj_pause_menu_ingame);   
            p.dest = dest;
			p.darkessence_start = obj_Player.darkessence_start;
			
        }     
        if instance_exists(obj_Player_boat) && isPaused = 0 && (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(4,gp_start) || gamepad_button_check_pressed(0,gp_start)) && (obj_Player_boat.canControl = 1) {
            fnc_snd_play_over(snd_pause_on);
            isPaused = 1;
			instance_deactivate_all(1);		
            instance_activate_object(obj_music_controller);
            var p = instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-16000,obj_pause_menu_ingame);
            p.dest = dest;
			p.darkessence_start = obj_Player.darkessence_start;
			
        }
        #endregion
        break;
    case 1: 
        #region С ВЫХОДОМ В ГЛАВНОЕ МЕНЮ С ИГРОКОМ
        if instance_exists(obj_Player) && isPaused = 0 && (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(4,gp_start) || gamepad_button_check_pressed(0,gp_start)) && (obj_Player.isDead = 0 || obj_Player.isDead = 3) {
            fnc_snd_play_over(snd_pause_on);
            instance_deactivate_all(1);
            instance_activate_object(obj_music_controller);
            isPaused = 1;
            instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-16000,obj_pause_menu_notstage);  
        }
        #endregion
        break;
    case 2: 
        #region С ВЫХОДОМ В ГЛАВНОЕ МЕНЮ НА КАРТЕ
        if  isPaused = 0 && (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(4,gp_start) || gamepad_button_check_pressed(0,gp_start))  {
            fnc_snd_play_over(snd_pause_on);
            instance_deactivate_all(1);
            instance_activate_object(obj_music_controller);
            isPaused = 1;
            instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-16000,obj_pause_menu_notstage);  
        }
        #endregion
        break;
}


// Выбор оружия

if instance_exists(obj_Player){
	player_input();
	if obj_Player.state = 0 && obj_Player.isDead = 0 && obj_Player.isUsingitem = 0  && obj_Player.isAirUsingitem = 0 {
		if key_select {
		fnc_snd_play_over(snd_pause_on);
		instance_deactivate_all(1);	
        instance_activate_object(obj_music_controller);
		instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),-16000,obj_weapon_select);   
		}
	}
}
	