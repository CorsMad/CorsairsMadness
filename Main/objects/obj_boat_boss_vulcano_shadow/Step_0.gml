/// @description Insert description here
// You can write your code in this editor
depth = -1000;
if instance_exists(fol)
{
    if abs(fol.y - y) > 80 && abs(fol.y - y) < 160  image_index = 1;
    if abs(fol.y - y) <= 80   image_index = 2;
    if fol.state = 1 
    {
        y = fol.y+272;
        x = fol.x;
    }
} else instance_destroy();