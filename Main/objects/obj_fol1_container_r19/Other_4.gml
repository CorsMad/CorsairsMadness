/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if instance_exists(obj_Player)
{
    if obj_Player.HookEnabled = 0
    {
        instance_create_depth(232,185,0,obj_ability_hook);   
    }
}