/// @description Insert description here
// You can write your code in this editor
image_alpha = 0;
image_index = 0;
image_speed = 0;
t = 0;
spd = 6;

t_anim = 0;

if instance_exists(obj_Player)
{
	var dir = 	point_direction(x,y,obj_Player.x,obj_Player.y-24)
}

hspeed = lengthdir_x(spd,dir);
vspeed = lengthdir_y(spd,dir);
image_alpha = 1;
image_angle = dir