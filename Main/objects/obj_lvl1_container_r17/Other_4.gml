/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

instance_create_depth(224,96,0,obj_pad_red);

if instance_exists(obj_Player)
{
    if obj_Player.tipRedpad = 0
    {
        instance_create_depth(96,128,0,obj_popup_trigger_redpadhelp);   
    }
}