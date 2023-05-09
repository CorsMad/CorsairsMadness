/// @description Insert description here
// You can write your code in this editor

x+=hspd;
y+=vspd;

vspd+= 0.1;
hspd = lerp(hspd,0,0.01);

t++;

    image_alpha -=0.02;   


if image_alpha <=0 instance_destroy();