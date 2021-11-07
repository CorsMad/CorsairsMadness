/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;

vspd +=0.1;

image_alpha -= alp;
if image_alpha <=0 
{
    instance_destroy();
}