/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    instance_create_depth(112,192,101,obj_popup_creator_bluepadhelp);
    instance_create_depth(224,96,0,obj_popup_trigger_destroy_bluepadhelp);
    instance_destroy();
}