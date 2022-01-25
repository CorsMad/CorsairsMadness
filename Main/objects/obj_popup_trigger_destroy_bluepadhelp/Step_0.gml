/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    if instance_exists(obj_popup_creator_bluepadhelp_gp)
    {        
        instance_destroy(obj_popup_creator_bluepadhelp_gp);    
    }
    if instance_exists(obj_popup_creator_bluepadhelp_kb)
    {        
        instance_destroy(obj_popup_creator_bluepadhelp_kb);    
    }
    obj_Player.tipBluepad = 1;
    instance_destroy(obj_popup_bluepad_textbox);
    instance_destroy();
}