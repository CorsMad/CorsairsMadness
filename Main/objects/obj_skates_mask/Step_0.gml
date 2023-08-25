/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    with(obj_Player)
    {
        if place_meeting(x,y+1,obj_block) instance_destroy(obj_skates_mask);   
    }
}
