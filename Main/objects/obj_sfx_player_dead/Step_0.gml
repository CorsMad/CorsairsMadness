/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;

hspd = lerp(hspd,0,0.035);
vspd = lerp(vspd,0,0.035);

a++ 
switch(a)
{
	case 30:	image_xscale = 0.25;
				image_yscale = 0.25;
				break;
	case 60:	instance_destroy();
}