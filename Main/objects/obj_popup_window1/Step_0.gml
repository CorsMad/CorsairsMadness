/// @description Insert description here
// You can write your code in this editor

if isOn = 1 
{
	if 	image_index < 10
	{
		image_speed = 2;	
	}	else image_speed = 0;
}

if isOn = 0
{
	if image_index > 1
	{
		image_speed = -2;	
	}	else image_speed =0 ;
}