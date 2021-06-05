/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;

if hspd > 0
{
	image_xscale = 1;
}
if hspd < 0
{
	image_xscale = -1;
} 

image_angle +=(10*sign(image_xscale));	
image_alpha -= 0.02;
vspd+=0.1;	
if image_alpha < 0 
{
	instance_destroy();	
}