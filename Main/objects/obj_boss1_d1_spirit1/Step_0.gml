/// @description Insert description here
// You can write your code in this editor
if point_distance(x, y, 450, 186) > 6
{
    move_towards_point(450, 186, 6);
}
else 
{
    instance_destroy();   
}