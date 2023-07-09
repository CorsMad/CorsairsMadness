/// @description Insert description here
// You can write your code in this editor


angle+=hspd;
if instance_exists(obj_Player)
{
    x = obj_Player.x+ lengthdir_x(48,angle);
    y = obj_Player.y - 16+ lengthdir_y(48,angle);
} 

