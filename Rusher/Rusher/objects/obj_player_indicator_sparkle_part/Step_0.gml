/// @description Insert description here
// You can write your code in this editor

image_xscale = scale;
image_yscale = scale;

if hspd < 0.08 && vspd < 0.08 {
	image_alpha -= 0.1	
}
if image_alpha <=0 instance_destroy();

x+=hspd;
y+=vspd;

hspd = lerp(hspd,0,0.08);
vspd = lerp(vspd,0,0.08);