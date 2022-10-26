/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);
instance_create_depth(224,112,0,obj_pad_red);

if instance_exists(obj_Player)
{
    if obj_Player.tipRedpad = 0
    {
        instance_create_depth(80,128,0,obj_popup_trigger_redpadhelp);
        instance_create_depth(352,80,0,obj_popup_trigger_destroy_redpadhelp);
    }
}