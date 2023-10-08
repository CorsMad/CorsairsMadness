/// @description Insert description here
// You can write your code in this editor
x+=hspd

if isDead = 1 {
	instance_create_depth(x,y,depth-1,obj_sfx3);
	instance_destroy();	
}




if x < camera_get_view_x(view_camera[0])-64 instance_destroy()
if x > camera_get_view_x(view_camera[0])+480-64 instance_destroy()
if y < camera_get_view_y(view_camera[0])-64 instance_destroy()
if y > camera_get_view_y(view_camera[0])+272+64 instance_destroy()

