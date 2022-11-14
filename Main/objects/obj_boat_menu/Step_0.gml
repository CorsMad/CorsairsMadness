/// @description Insert description here
// You can write your code in this editor
player_input();
kb_gp_input_check();

if isDead = 0
{

    if image_alpha < 1
    {
        image_alpha += 0.1;   
    }
    if image_alpha = 1
    {
        state = 1;   
    }
}


if state = 1
{
    if instance_exists(obj_boat_menu_selector)
    {
        switch(a)
        {
            case 0: obj_boat_menu_selector.image_index = 0;break;
            case 1: obj_boat_menu_selector.image_index = 1;break;
        }
        
        if (key_left_press || key_right_press) && !instance_exists(obj_boat_menu_confirmation)
        {
            fnc_snd_play_over(snd_menu_select);
            obj_boat_menu_selector.t = 0;
            a+=1;   
        }
        if a > 1
        {
            a = 0;   
        }  
        if key_jump_pressed
        {
            fnc_snd_play_over(snd_menu_accept);
            state = 2; 
            instance_create_depth(0,0,-10000000,obj_boat_menu_confirmation);
            switch(isKeyboard)
            {
                case 0: instance_create_depth(194,92,depth-1,obj_popup_creator_boat_confirm_gp);
                        break;
                case 1: instance_create_depth(194,92,depth-1,obj_popup_creator_boat_confirm_kb);
                        break;
            }
            instance_create_depth(0,0,-10000000,obj_boat_menu_confirmation);   
        }
    }
}

if isDead = 1
{
    if instance_exists(obj_boat_menu_confirmation)
    {
        instance_destroy(obj_boat_menu_confirmation);   
    }
    image_alpha -=0.1
    if image_alpha <=0 
         {
            instance_destroy();   
         }
}


