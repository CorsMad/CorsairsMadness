/// @description Insert description here
// You can write your code in this editor

x+=hspd;
y+=vspd;
vspd = lerp(vspd,0,spdv);
hspd = lerp(hspd,0,spdh);
if image_alpha<1 image_alpha+=0.2;