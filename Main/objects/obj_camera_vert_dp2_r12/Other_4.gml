/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
    if obj_Player.y < room_height/2
    {
        state = 1   
        y = 0;
    } else state = 0;
}


