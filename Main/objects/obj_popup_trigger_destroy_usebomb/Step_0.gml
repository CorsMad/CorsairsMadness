/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    if instance_exists(obj_popup_creator_usebomb_gp)
    {      
        instance_destroy(obj_popup_creator_usebomb_gp);      
    }
    if instance_exists(obj_popup_creator_usebomb_kb)
    {      
        instance_destroy(obj_popup_creator_usebomb_kb);      
    }
    obj_Player.tipBomb = 1;
    instance_destroy(obj_textbox);
    instance_destroy();
}