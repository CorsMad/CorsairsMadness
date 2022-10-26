/// @description Insert description here
// You can write your code in this editor
y += vspd;
x += hspd;

vspd += 0.2;
image_alpha -=0.02;
if image_alpha <=0 
{
	instance_destroy();	
}

if hspd != 0
{
	hspd = lerp(hspd,0,0.025);		
}