/// @description Insert description here
// You can write your code in this editor

x+=hspd;
y+=vspd;
vspd+=grav;
image_xscale = sign(hspd);

if hspd > 0
{
    if vspd < -1 {image_angle = 75;}
    if (vspd >=-1 && vspd < -0.5) {image_angle = 25;}
    if (vspd >= -0.5 && vspd < 0.5) {image_angle = 0;}
    if (vspd >= 0.5 && vspd < 1) {image_angle = 335;}
    if vspd >=1 {image_angle = 285;}
}
if hspd < 0
{
    if vspd < -1 {image_angle = 285;}
    if (vspd >=-1 && vspd < -0.5) {image_angle = 335;}
    if (vspd >= -0.5 && vspd < 0.5) {image_angle = 0;}
    if (vspd >= 0.5 && vspd < 1) {image_angle = 25;}
    if vspd >=1 {image_angle = 75;}
}

t++; 
if t > t_max {image_alpha -=0.1;}
if image_alpha <=0 {instance_destroy();}
