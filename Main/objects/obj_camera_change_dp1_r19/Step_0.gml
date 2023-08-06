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
		 if instance_exists(obj_camera_vert_dp1_r19)
	     {
	        obj_camera_vert_dp1_r19.state = 1;   
			obj_camera_vert_dp1_r19.conf = 0;
	     }
		var c2 = instance_create_depth(160,640,depth,obj_camera_change_dp1_r19)
		c2.image_xscale = 8;
		c2.state = 1;
		instance_destroy();	
	}	
}

if state = 1 
{
	if place_meeting(x,y,obj_Player)
	{
		 if instance_exists(obj_camera_vert_dp1_r19)
	     {
	        obj_camera_vert_dp1_r19.state = 0;   
			obj_camera_vert_dp1_r19.conf = 0;
	     }
		var c1 = instance_create_depth(304,528,depth,obj_camera_change_dp1_r19)
		c1.image_yscale = 8;
		c1.state = 0;
		instance_destroy();	
	}		
}

