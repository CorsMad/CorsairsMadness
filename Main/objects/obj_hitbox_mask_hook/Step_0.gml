/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    if obj_Player.isAfterhook = 0
    {
        instance_destroy();
    }
    t++;
    if t = 10
    {
        instance_destroy();   
    }
}
