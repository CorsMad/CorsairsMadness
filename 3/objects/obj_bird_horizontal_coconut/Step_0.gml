/// @description Insert description here
// You can write your code in this editor
y+=2;
if a = 1 
{
	image_angle+=10;	
} else image_angle-=10;
if place_meeting(x,y,obj_block)
{
	instance_create_depth(x,y,-1,obj_sfx1);
	instance_destroy();	
}