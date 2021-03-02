/// @description Insert description here
// You can write your code in this editor

if t < 1
{
	t++;	
}
if t = 1
{
	t = 2;
	image_alpha = 1;	
}
switch(a)
{
	case 1: vspeed = -spd; 
			image_angle = 180;
			break;
	case 2: vspeed = spd;  break;
	case 3: hspeed = -spd;
			image_angle = 270;
			break;
	case 4: hspeed = spd; 
			image_angle = 90;
			break;
}


if place_meeting(x,y,obj_trapfire_arrow_block)
{
	instance_create_depth(x,y,-1,obj_sfx1);
	instance_destroy();
}