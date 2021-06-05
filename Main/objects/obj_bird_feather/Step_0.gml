/// @description Insert description here
// You can write your code in this editor
a++;
if a > a_max 
{
	hspeed = 0;
	vspeed = 0;
	gravity = 0.2;
	image_speed = 1;
	image_alpha -= 0.005;
}
if image_alpha < 0 
{
	instance_destroy();
}	