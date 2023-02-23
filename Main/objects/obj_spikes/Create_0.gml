/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y-1,obj_block)
{
	image_angle = 180;
}

if place_meeting(x-1,y,obj_block) && !place_meeting(x,y+1,obj_block) && !place_meeting(x,y-1,obj_block)
{
	image_angle = 270;
}

if place_meeting(x+1,y,obj_block) && !place_meeting(x,y+1,obj_block) && !place_meeting(x,y-1,obj_block)
{
	image_angle = 90;	
}



