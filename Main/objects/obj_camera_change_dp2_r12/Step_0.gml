/// @description Insert description here

/* Указать следующие параметры

x_cr = 
y_cr =
obj_cr = 

*/

// You can write your code in this editor

if state = 0
{
	if place_meeting(x,y,obj_Player)
	{
		 if instance_exists(obj_camera_vert_dp2_r12)
	     {
	        obj_camera_vert_dp2_r12.state = 1;   
			obj_camera_vert_dp2_r12.conf = 0;
	     }
		var c2 = instance_create_depth(32,496,depth,obj_camera_change_dp2_r12)
		c2.image_xscale = 28;
		c2.image_yscale = 7;
		c2.state = 1;
		instance_destroy();	
	}	
}

if state = 1 
{
	if place_meeting(x,y,obj_Player)
	{
		 if instance_exists(obj_camera_vert_dp2_r12)
	     {
	        obj_camera_vert_dp2_r12.state = 0;   
			obj_camera_vert_dp2_r12.conf = 0;
	     }
		var c1 = instance_create_depth(32,256,depth,obj_camera_change_dp2_r12)
		c1.image_yscale = 28;
		c1.image_xscale = 7;
		c1.state = 0;
		instance_destroy();	
	}		
}

