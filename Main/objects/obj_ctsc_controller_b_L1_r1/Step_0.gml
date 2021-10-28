/// @description Insert description here
// You can write your code in this editor

if state = 0
{
    with(obj_Player)
    {
        if place_meeting(x,y,obj_block)
        {
            isDead = 0;
        }
    }
}