/// @description Insert description here

/* Указать следующие параметры

x_cr = 
y_cr =
obj_cr = 

*/

// You can write your code in this editor


if place_meeting(x,y,obj_Player)
{
	 instance_create_depth(x_cr,y_cr,1,obj_cr);	
		switch(obj_cr)
		{
			case obj_snake   : obj_cr.spd = spd;break;
		}
	
	instance_destroy();	
}
