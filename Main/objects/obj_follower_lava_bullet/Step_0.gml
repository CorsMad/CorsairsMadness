/// @description Insert description here
// You can write your code in this editor


if t < 2 t++;
if t = 1 
{
	hspeed = lengthdir_x(spd,point_direction(x,y,x_dest,y_dest));
    vspeed = lengthdir_y(spd,point_direction(x,y,x_dest,y_dest));
	image_alpha = 1;
	image_angle = point_direction(x,y,x_dest,y_dest);	
}

t_anim++;
if t_anim = 5 {
	instance_create_depth(x,y,depth+1,obj_follower_lava_bullet_trace);
	t_anim = 0;
}