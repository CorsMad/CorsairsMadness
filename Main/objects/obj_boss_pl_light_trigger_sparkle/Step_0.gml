/// @description Insert description here
// You can write your code in this editor

x+=hspd;
y+=vspd;

hspd = lerp(hspd,0,0.005);
vspd+=0.2;
if vspd>=2 {
	image_alpha-=0.05;	
}
if image_alpha <=0 instance_destroy();
