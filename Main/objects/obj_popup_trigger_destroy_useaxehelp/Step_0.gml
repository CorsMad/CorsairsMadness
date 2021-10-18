/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    if instance_exists(obj_popup_creator_useaxehelp)
    {
        obj_Player.tipUseitem = 1;
        instance_destroy(obj_popup_creator_useaxehelp); 
        instance_destroy(obj_textbox);
    }
    instance_destroy();
}