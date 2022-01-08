/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    if instance_exists(obj_popup_creator_redpadhelp)
    {      
        instance_destroy(obj_popup_creator_redpadhelp); 
    }
    obj_Player.tipRedpad = 1;
    instance_destroy(obj_textbox);
    instance_destroy();
}