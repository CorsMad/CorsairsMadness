/// @description Insert description here
// You can write your code in this editor

x+=hspd;
y+=vspd;
vspd+=0.1;
t++;
if t > t_max image_alpha -= 0.1;   
if image_alpha <= 0 instance_destroy();

if t mod 3 = 0
{
	
    if hspd > 0 image_angle -=45;
    if hspd < 0 image_angle +=45;
}
if t mod 10 = 0 {
	instance_create_depth(x,y,depth-1,obj_sfx_explosion_small,{image_alpha : 0.6})
}