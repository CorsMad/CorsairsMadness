/// @description Insert description here
// You can write your code in this editor

y+= vspd;
t++;
if t > 80
{
	image_speed = 1;
}
x = x + cos(a);
a+=0.1;
vspd += 0.005;
if image_speed > 0 
{
	image_alpha -= 0.025;	
}