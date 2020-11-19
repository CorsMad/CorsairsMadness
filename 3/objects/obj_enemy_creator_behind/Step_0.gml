/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x,y,obj_block) 
{
	instance_create_depth(x_cr,y_cr,-1,obj_cr);	
		switch(obj_cr)
		{
			case obj_skeleton: obj_cr.hspd = hspd;break;
			case obj_snake   : obj_cr.spd = spd;break;
			case obj_bird_horizontal_fast: obj_cr.spd = spd;break;
		}
	
	instance_destroy();	
}