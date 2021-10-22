/// @description Insert description here
// You can write your code in this editor
if instance_exists(follow_obj)
{
    x = follow_obj.x+xoffset;
    y = follow_obj.y+yoffset;
} else instance_destroy();
