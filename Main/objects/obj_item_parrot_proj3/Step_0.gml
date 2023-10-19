/// @description Insert description here
// You can write your code in this editor

var en = instance_nearest(x,y,obj_enemy_parent)
var lb = instance_nearest(x,y,obj_last_boss_parent);
if en!=noone
    {
        if en.x > camera_get_view_x(view_camera[0])-64  &&  
        en.x < camera_get_view_x(view_camera[0])+480_64 &&
        en.y > camera_get_view_y(view_camera[0])-64     &&
        en.y < camera_get_view_y(view_camera[0])+272+64
        {
            en_x = en.x
		    en_y = en.y-sprite_get_yoffset(en.sprite_index) + en.sprite_height / 2;
            haveTarget = 1;  
		    if point_distance(x, y, en_x, en_y) > 6
	        {
	            move_towards_point(en_x, en_y, 5);
	        } 
        }
        	
}  else if lb!=noone
    {
        if lb.x > camera_get_view_x(view_camera[0])-64  &&  
        lb.x < camera_get_view_x(view_camera[0])+480_64 &&
        lb.y > camera_get_view_y(view_camera[0])-64     &&
        lb.y < camera_get_view_y(view_camera[0])+272+64
        { 
    		en_x = lb.x
    		en_y = lb.y-sprite_get_yoffset(lb.sprite_index) + lb.sprite_height / 2;
            haveTarget = 1;  
    		if point_distance(x, y, en_x, en_y) > 6
    	    {
    	        move_towards_point(en_x, en_y, 5);
    	    }
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
	instance_create_depth(x,y,depth,obj_item_parrot_proj3_expl)
	instance_destroy();	
}


if x < camera_get_view_x(view_camera[0])-16     instance_destroy()
if x > camera_get_view_x(view_camera[0])+480+16 instance_destroy()
if y < camera_get_view_y(view_camera[0])-16     instance_destroy()
if y > camera_get_view_y(view_camera[0])+272+16 instance_destroy()