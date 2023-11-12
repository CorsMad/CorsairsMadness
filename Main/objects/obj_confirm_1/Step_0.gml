//fnc_confirmlevel1(dest);

player_input();


switch(select) {
    
    case 0: // подтвердить
        if key_right {
            fnc_snd_play_onetime(snd_menu_select);
            select = 1;
        }
        
        if key_attack || key_jump {
             fnc_snd_play_over(snd_menu_accept); 
             fnc_confirmlevel1N(dest);
        }
        
        break;
    case 1: // выход
        if key_left  {
            fnc_snd_play_onetime(snd_menu_select);
            select = 0;
        }
        
        if key_attack || key_jump  {
            fnc_snd_play_over(snd_menu_accept); 
            if instance_exists(obj_map_prologue_controller_jungle) obj_map_prologue_controller_jungle.delay = 1;
            if instance_exists(obj_map_controller_desert) obj_map_controller_desert.delay = 1;
            if instance_exists(obj_map_controller_snow) obj_map_controller_snow.delay = 1;
            if instance_exists(obj_map_controller_shadow) obj_map_controller_shadow.delay = 1;
            if instance_exists(obj_map_controller_lava) obj_map_controller_lava.delay = 1;
             
            instance_destroy();   
        }
        
        break;
}