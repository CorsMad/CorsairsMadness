/// @description Insert description here
// You can write your code in this editor
image_angle = angle;
t ++ ;
if t = 150
{
    instance_destroy();
    var i = instance_create_depth(x,y,depth,obj_cemetery_laser_beam_dead);
    i.angle = angle;
}