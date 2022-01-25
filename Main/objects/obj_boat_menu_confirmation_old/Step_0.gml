/// @description Insert description here
// You can write your code in this editor

    player_input();



    if key_dashing
    {
        instance_destroy();
        obj_boat_menu.state = 1;
        fnc_snd_play_over(snd_menu_select);
    }
    if key_jump
    {
        fnc_snd_play_over(snd_menu_accept);
        if obj_boat_menu.a = 0
        {
            obj_Player_boat.state = 11.1;
        }
        if obj_boat_menu.a = 1
        {
            obj_Player_boat.state = 12.1;
        }
    
        obj_boat_menu.isDead = 1;
        obj_boat_menu_selector.isDead = 1;
        instance_destroy();  
     
    }
