/// @description Insert description here
// You can write your code in this editor

en = instance_nearest(x,y,obj_enemy_parent)
if en!=noone
    {
        haveTarget = 1;
    if point_distance(x, y, en.x, en.y) > 5
    {
        move_towards_point(en.x, en.y, 5);
    }
} else 
{
    haveTarget = 0;
}