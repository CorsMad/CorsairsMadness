/// @description Insert description here
// You can write your code in this editor
a++;
if hspeed > 0
{
	image_angle -= 10;	
} else image_angle +=10;
if a = 90 
{
	instance_create_depth(x,y,-1,obj_sfx1);
	instance_destroy();
}