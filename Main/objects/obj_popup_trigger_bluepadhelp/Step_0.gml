/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
   // var i = instance_create_depth(112,192,101,obj_popup_creator_bluepadhelp);
    //i.isKeyboard = isKeyboard;
    switch(isKeyboard)
    {
        case 0: instance_create_depth(112,192,101,obj_popup_creator_bluepadhelp_gp);
                break;
        case 1: instance_create_depth(112,192,101,obj_popup_creator_bluepadhelp_kb);
                break;
    }
    instance_create_depth(224,96,0,obj_popup_trigger_destroy_bluepadhelp);
    instance_destroy();
}


kb_gp_input_check();