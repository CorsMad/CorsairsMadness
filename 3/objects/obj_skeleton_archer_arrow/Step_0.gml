/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;

if hspd > 0 && isOn = 1
{
	image_xscale = 1;
}
if hspd < 0 && isOn = 1
{
	image_xscale = -1;
} 


if place_meeting(x,y,obj_block) && isOn = 1
{
	hspd = -(hspd/10);
	isOn = 0;
	vspd = -2;
	mask_index = spr_blank;
	image_speed = 1;
}
if isOn = 0
{
	image_alpha -= 0.02;
	vspd+=0.1;	
}
if image_alpha < 0 
{
	instance_destroy();	
}