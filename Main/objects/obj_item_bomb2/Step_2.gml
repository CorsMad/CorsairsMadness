/// @description Insert description here
// You can write your code in this editor

radius+=0.3;
angle+=hspd;
if instance_exists(obj_Player)
{
    x = obj_Player.x+ lengthdir_x(radius,angle);
    y = obj_Player.y - 16+ lengthdir_y(radius,angle);
}  

