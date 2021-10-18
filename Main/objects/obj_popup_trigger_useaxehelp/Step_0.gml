/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    instance_create_depth(48,208,-10000,obj_popup_creator_useaxehelp);
    instance_create_depth(240,192,0,obj_popup_trigger_destroy_useaxehelp);
    instance_destroy();
}