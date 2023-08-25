/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if instance_exists(obj_Player)
{
    if obj_Player.SpecAbilMask!= 3  
    {
        instance_create_depth(248,196,0,obj_ability_superdash);
    }
}