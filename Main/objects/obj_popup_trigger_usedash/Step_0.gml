/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    switch(isKeyboard)
    {
        case 0: instance_create_depth(448,48,100,obj_popup_creator_usedash_gp);
                break;
        case 1: instance_create_depth(448,48,100,obj_popup_creator_usedash_kb);
                break;
    }
    instance_destroy();
}

kb_gp_input_check();

if instance_exists(obj_Player)
{
    if obj_Player.isDashing = 1 instance_destroy();   
}