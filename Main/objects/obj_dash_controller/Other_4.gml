/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
    if obj_Player.DashEnabled = 0
    {
        instance_create_depth(248,168,0,obj_ability_dash);  
    }
}