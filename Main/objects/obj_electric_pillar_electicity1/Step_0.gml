/// @description Insert description here
// You can write your code in this editor
if isOn = 1
{
	if image_alpha < 1 
	{
		image_alpha += 0.2;	
	}
}

if isOn = 0
{
	image_alpha -=0.5;	
}
if image_alpha < 0
{
	instance_destroy();	
}