/// @description Insert description here
// You can write your code in this editor

t = 0;
where = 0;
if instance_exists(obj_Player)
{
    if obj_Player.x < room_width/2 where = 0
    else
    {
        where = 1;   
    }
}