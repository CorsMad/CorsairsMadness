/// @description Insert description here

/* Указать следующие параметры

x_cr = 
y_cr =
obj_cr = 

*/

// You can write your code in this editor


	if place_meeting(x,y,obj_Player)
	{
		 if instance_exists(obj_camera_vert_pg2_r3)
	     {
	        obj_camera_vert_pg2_r3.state = 2;   
			obj_camera_vert_pg2_r3.conf = 0;
	     }
		instance_destroy();	
	}	




