/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    
    switch(isKeyboard)
    {
        case 0: instance_create_depth(196,192,101,obj_popup_creator_usebomb_gp);
                break;
        case 1: instance_create_depth(196,192,101,obj_popup_creator_usebomb_kb);
                break;
    }
    instance_create_depth(416,224,0,obj_popup_trigger_destroy_usebomb);
    instance_destroy();
}

kb_gp_input_check();