/// @description Insert description here
// You can write your code in this editor

var en = instance_nearest(x,y,obj_enemy_parent)
if en!=noone
    {
		en_x = en.x
		en_y = en.y-sprite_get_yoffset(en.sprite_index) + en.sprite_height / 2;
        haveTarget = 1;  
		if point_distance(x, y, en_x, en_y) > 6
	    {
	        move_towards_point(en_x, en_y, 5);
	    }
} else 
{
    haveTarget = 0;
}

if haveTarget = 0
{
    x+=hspd; 
	speed = 0;
} 

if isDead = 1 {
	instance_create_depth(x,y,depth-1,obj_sfx3);
	instance_destroy();	
}


if x < camera_get_view_x(view_camera[0])-64 instance_destroy()
if x > camera_get_view_x(view_camera[0])+480_64 instance_destroy()
if y < camera_get_view_y(view_camera[0])-64 instance_destroy()
if y > camera_get_view_y(view_camera[0])+272+64 instance_destroy()