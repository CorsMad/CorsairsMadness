/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    if instance_exists(obj_popup_creator_usedash)
    {
        instance_destroy(obj_popup_creator_usedash); 
        instance_destroy(obj_textbox);
    }
    instance_destroy();
}