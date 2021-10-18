/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    instance_create_depth(170,144,1,obj_popup_creator_redpadhelp);
    instance_create_depth(352,80,0,obj_popup_trigger_destroy_redpadhelp);
    instance_destroy();
}