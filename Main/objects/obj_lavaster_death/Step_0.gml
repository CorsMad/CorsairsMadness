/// @description Insert description here
// You can write your code in this editor

x+=hspd;
y+=vspd;
vspd+=0.1;
t++;
if t > 30 image_alpha -= 0.1;   
if image_alpha <= 0 instance_destroy();

if t mod 3 = 0
{
    if hspd > 0 image_angle -=45;
    if hspd < 0 image_angle +=45;
}