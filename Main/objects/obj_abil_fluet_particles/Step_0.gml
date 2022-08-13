/// @description Insert description here
// You can write your code in this editor

x+=hspd;
y+=vspd;

hspd = lerp(hspd,0,0.05);
image_alpha -= 0.02;
t++;
if t = 40
{
    instance_destroy();   
}