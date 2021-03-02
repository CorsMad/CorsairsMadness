/// @description Insert description here
// You can write your code in this editor
t = 0
t_max = 120; 

if place_meeting(x,bbox_top-1,obj_block)
{
	image_angle = 0;
	dir = "down";
}

if place_meeting(x,bbox_bottom+1,obj_block)
{
	image_angle = 180;
	dir = "up";
}

if place_meeting(bbox_right+1,y,obj_block)
{
	image_angle = 270;
	dir = "left";
}

if place_meeting(bbox_left-1,y,obj_block)
{
	image_angle = 90;
	dir = "right";
}